module AriaAttributesSuite exposing (suite)

import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import VirtualDom
import W3.Aria as Aria
import W3.Aria.Attributes as AriaAttributes
import W3.Html as Html


test : String -> String -> Aria.Attribute a -> String -> Test
test testName attributeName attribute expectedValue =
    Test.test testName
        (\() ->
            Html.node "node" (Aria.role "test" [ attribute ] []) []
                |> Html.toHtml
                |> Query.fromHtml
                |> Query.has [ Selector.attribute (VirtualDom.attribute ("aria-" ++ attributeName) expectedValue) ]
        )


idReference : String -> (AriaAttributes.IdReference -> Aria.Attribute a) -> List Test
idReference name attribute =
    [ test (name ++ " is testid") name (attribute "testid") "testid" ]


idReferences : String -> (List AriaAttributes.IdReference -> Aria.Attribute a) -> List Test
idReferences name attribute =
    [ test (name ++ " is \"testid1 testid2\"") name (attribute [ "testid1", "testid2" ]) "testid1 testid2" ]


bool : String -> (Bool -> Aria.Attribute a) -> List Test
bool name attribute =
    [ test (name ++ " is true") name (attribute True) "true"
    , test (name ++ " is false") name (attribute False) "false"
    ]


maybeBool : String -> (Maybe Bool -> Aria.Attribute a) -> List Test
maybeBool name attribute =
    [ test (name ++ " is true") name (attribute (Just True)) "true"
    , test (name ++ " is false") name (attribute (Just False)) "false"
    , test (name ++ " is undefined") name (attribute Nothing) "undefined"
    ]


value : String -> (AriaAttributes.Value a -> Aria.Attribute b) -> List ( AriaAttributes.Value a, String ) -> List Test
value name attribute valueList =
    List.map (valueToTest name attribute) valueList


valueToTest : String -> (AriaAttributes.Value a -> Aria.Attribute b) -> ( AriaAttributes.Value a, String ) -> Test
valueToTest name attribute ( val, expected ) =
    test (name ++ " is " ++ expected) name (attribute val) expected


values : String -> (List (AriaAttributes.Value a) -> Aria.Attribute b) -> List (AriaAttributes.Value a) -> String -> List Test
values name attribute valueList expected =
    [ test (name ++ " is " ++ expected) name (attribute valueList) expected ]


triState : String -> (AriaAttributes.TriState -> Aria.Attribute b) -> List Test
triState name attribute =
    [ test (name ++ " is true") name (attribute AriaAttributes.true) "true"
    , test (name ++ " is false") name (attribute AriaAttributes.false) "false"
    , test (name ++ " is mixed") name (attribute AriaAttributes.mixed) "mixed"
    ]


integer : String -> (Int -> Aria.Attribute b) -> Int -> List Test
integer name attribute minValue =
    [ test (name ++ " is " ++ String.fromInt minValue) name (attribute minValue) (String.fromInt minValue)
    , test (name ++ " is " ++ String.fromInt (minValue + 1)) name (attribute (minValue + 1)) (String.fromInt (minValue + 1))
    , test (name ++ " is " ++ String.fromInt (minValue + 2)) name (attribute (minValue + 2)) (String.fromInt (minValue + 2))
    ]


number : String -> (Int -> Aria.Attribute b) -> List Test
number name attribute =
    [ test (name ++ " is " ++ "-100") name (attribute -100) "-100"
    , test (name ++ " is " ++ "-1") name (attribute -1) "-1"
    , test (name ++ " is " ++ "0") name (attribute 0) "0"
    , test (name ++ " is " ++ "1") name (attribute 1) "1"
    , test (name ++ " is " ++ "100") name (attribute 100) "100"
    ]


string : String -> (String -> Aria.Attribute b) -> List Test
string name attribute =
    [ test (name ++ " is \"testValue\"") name (attribute "testValue") "testValue" ]


suite : Test
suite =
    describe "Aria attributes"
        (idReference "activedescendant" AriaAttributes.activedescendant
            ++ bool "atomic" AriaAttributes.atomic
            ++ value "autocomplete"
                AriaAttributes.autocomplete
                [ ( AriaAttributes.inline, "inline" )
                , ( AriaAttributes.list, "list" )
                , ( AriaAttributes.both, "both" )
                , ( AriaAttributes.none, "none" )
                ]
            ++ bool "busy" AriaAttributes.busy
            ++ triState "checked" AriaAttributes.checked
            ++ integer "colcount" AriaAttributes.colcount -1
            ++ integer "colindex" AriaAttributes.colindex 1
            ++ integer "colspan" AriaAttributes.colspan 1
            ++ idReferences "controls" AriaAttributes.controls
            ++ value "current"
                AriaAttributes.current
                [ ( AriaAttributes.page, "page" )
                , ( AriaAttributes.step, "step" )
                , ( AriaAttributes.location, "location" )
                , ( AriaAttributes.date, "date" )
                , ( AriaAttributes.time, "time" )
                , ( AriaAttributes.true, "true" )
                , ( AriaAttributes.false, "false" )
                ]
            ++ idReferences "describedby" AriaAttributes.describedby
            ++ idReference "details" AriaAttributes.details
            ++ bool "disabled" AriaAttributes.disabled
            ++ value "dropeffect"
                AriaAttributes.dropeffect
                [ ( AriaAttributes.copy, "copy" )
                , ( AriaAttributes.execute, "execute" )
                , ( AriaAttributes.link, "link" )
                , ( AriaAttributes.move, "move" )
                , ( AriaAttributes.none, "none" )
                , ( AriaAttributes.popup, "popup" )
                ]
            ++ idReference "errormessage" AriaAttributes.errormessage
            ++ maybeBool "expanded" AriaAttributes.expanded
            ++ idReferences "flowto" AriaAttributes.flowto
            ++ maybeBool "grabbed" AriaAttributes.grabbed
            ++ value "haspopup"
                AriaAttributes.haspopup
                [ ( AriaAttributes.menu, "menu" )
                , ( AriaAttributes.listbox, "listbox" )
                , ( AriaAttributes.tree, "tree" )
                , ( AriaAttributes.grid, "grid" )
                , ( AriaAttributes.dialog, "dialog" )
                , ( AriaAttributes.true, "true" )
                , ( AriaAttributes.false, "false" )
                ]
            ++ maybeBool "hidden" AriaAttributes.hidden
            ++ value "invalid"
                AriaAttributes.invalid
                [ ( AriaAttributes.grammar, "grammar" )
                , ( AriaAttributes.spelling, "spelling" )
                , ( AriaAttributes.true, "true" )
                , ( AriaAttributes.false, "false" )
                ]
            ++ string "keyshortcuts" AriaAttributes.keyshortcuts
            ++ string "label" AriaAttributes.label
            ++ idReferences "labelledby" AriaAttributes.labelledby
            ++ integer "level" AriaAttributes.level 1
            ++ value "live"
                AriaAttributes.live
                [ ( AriaAttributes.assertive, "assertive" )
                , ( AriaAttributes.polite, "polite" )
                , ( AriaAttributes.off, "off" )
                ]
            ++ bool "modal" AriaAttributes.modal
            ++ bool "multiline" AriaAttributes.multiline
            ++ bool "multiselectable" AriaAttributes.multiselectable
            ++ value "orientation"
                AriaAttributes.orientation
                [ ( AriaAttributes.horizontal, "horizontal" )
                , ( AriaAttributes.vertical, "vertical" )
                , ( AriaAttributes.undefined, "undefined" )
                ]
            ++ idReferences "owns" AriaAttributes.owns
            ++ string "placeholder" AriaAttributes.placeholder
            ++ integer "posinset" AriaAttributes.posinset 1
            ++ triState "pressed" AriaAttributes.pressed
            ++ bool "readonly" AriaAttributes.readonly
            ++ values "relevant"
                AriaAttributes.relevant
                [ AriaAttributes.additions
                , AriaAttributes.removals
                , AriaAttributes.text
                ]
                "additions,removals,text"
            ++ [ test "relevant is all" "relevant" AriaAttributes.relevantAll "all" ]
            ++ bool "required" AriaAttributes.required
            ++ string "roledescription" AriaAttributes.roledescription
            ++ integer "rowcount" AriaAttributes.rowcount -1
            ++ integer "rowindex" AriaAttributes.rowindex 1
            ++ integer "rowspan" AriaAttributes.rowspan 0
            ++ maybeBool "selected" AriaAttributes.selected
            ++ integer "setsize" AriaAttributes.setsize -1
            ++ value "sort"
                AriaAttributes.sort
                [ ( AriaAttributes.ascending, "ascending" )
                , ( AriaAttributes.descending, "descending" )
                , ( AriaAttributes.none, "none" )
                , ( AriaAttributes.other, "other" )
                ]
            ++ number "valuemax" AriaAttributes.valuemax
            ++ number "valuemin" AriaAttributes.valuemin
            ++ number "valuenow" AriaAttributes.valuenow
            ++ string "valuetext" AriaAttributes.valuetext
        )
