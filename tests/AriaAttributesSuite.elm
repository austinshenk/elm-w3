module AriaAttributesSuite exposing (suite)

import Help
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


triState : String -> (AriaAttributes.TriState -> Aria.Attribute b) -> List Test
triState name attribute =
    Help.value test
        name
        attribute
        [ ( AriaAttributes.true, "true" )
        , ( AriaAttributes.false, "false" )
        , ( AriaAttributes.mixed, "mixed" )
        ]


suite : Test
suite =
    describe "Aria attributes"
        (Help.string test "activedescendant" AriaAttributes.activedescendant
            ++ Help.bool test "atomic" AriaAttributes.atomic
            ++ Help.value test
                "autocomplete"
                AriaAttributes.autocomplete
                [ ( AriaAttributes.inline, "inline" )
                , ( AriaAttributes.list, "list" )
                , ( AriaAttributes.both, "both" )
                , ( AriaAttributes.none, "none" )
                ]
            ++ Help.bool test "busy" AriaAttributes.busy
            ++ triState "checked" AriaAttributes.checked
            ++ Help.boundedNumber test "colcount" AriaAttributes.colcount -1
            ++ Help.boundedNumber test "colindex" AriaAttributes.colindex 1
            ++ Help.boundedNumber test "colspan" AriaAttributes.colspan 1
            ++ Help.stringsSpaceSeparated test "controls" AriaAttributes.controls
            ++ Help.value test
                "current"
                AriaAttributes.current
                [ ( AriaAttributes.page, "page" )
                , ( AriaAttributes.step, "step" )
                , ( AriaAttributes.location, "location" )
                , ( AriaAttributes.date, "date" )
                , ( AriaAttributes.time, "time" )
                , ( AriaAttributes.true, "true" )
                , ( AriaAttributes.false, "false" )
                ]
            ++ Help.stringsSpaceSeparated test "describedby" AriaAttributes.describedby
            ++ Help.string test "details" AriaAttributes.details
            ++ Help.bool test "disabled" AriaAttributes.disabled
            ++ Help.value test
                "dropeffect"
                AriaAttributes.dropeffect
                [ ( AriaAttributes.copy, "copy" )
                , ( AriaAttributes.execute, "execute" )
                , ( AriaAttributes.link, "link" )
                , ( AriaAttributes.move, "move" )
                , ( AriaAttributes.none, "none" )
                , ( AriaAttributes.popup, "popup" )
                ]
            ++ Help.string test "errormessage" AriaAttributes.errormessage
            ++ Help.maybeBool test "expanded" AriaAttributes.expanded "undefined"
            ++ Help.stringsSpaceSeparated test "flowto" AriaAttributes.flowto
            ++ Help.maybeBool test "grabbed" AriaAttributes.grabbed "undefined"
            ++ Help.value test
                "haspopup"
                AriaAttributes.haspopup
                [ ( AriaAttributes.menu, "menu" )
                , ( AriaAttributes.listbox, "listbox" )
                , ( AriaAttributes.tree, "tree" )
                , ( AriaAttributes.grid, "grid" )
                , ( AriaAttributes.dialog, "dialog" )
                , ( AriaAttributes.true, "true" )
                , ( AriaAttributes.false, "false" )
                ]
            ++ Help.maybeBool test "hidden" AriaAttributes.hidden "undefined"
            ++ Help.value test
                "invalid"
                AriaAttributes.invalid
                [ ( AriaAttributes.grammar, "grammar" )
                , ( AriaAttributes.spelling, "spelling" )
                , ( AriaAttributes.true, "true" )
                , ( AriaAttributes.false, "false" )
                ]
            ++ Help.string test "keyshortcuts" AriaAttributes.keyshortcuts
            ++ Help.string test "label" AriaAttributes.label
            ++ Help.stringsSpaceSeparated test "labelledby" AriaAttributes.labelledby
            ++ Help.boundedNumber test "level" AriaAttributes.level 1
            ++ Help.value test
                "live"
                AriaAttributes.live
                [ ( AriaAttributes.assertive, "assertive" )
                , ( AriaAttributes.polite, "polite" )
                , ( AriaAttributes.off, "off" )
                ]
            ++ Help.bool test "modal" AriaAttributes.modal
            ++ Help.bool test "multiline" AriaAttributes.multiline
            ++ Help.bool test "multiselectable" AriaAttributes.multiselectable
            ++ Help.value test
                "orientation"
                AriaAttributes.orientation
                [ ( AriaAttributes.horizontal, "horizontal" )
                , ( AriaAttributes.vertical, "vertical" )
                , ( AriaAttributes.undefined, "undefined" )
                ]
            ++ Help.stringsSpaceSeparated test "owns" AriaAttributes.owns
            ++ Help.string test "placeholder" AriaAttributes.placeholder
            ++ Help.boundedNumber test "posinset" AriaAttributes.posinset 1
            ++ triState "pressed" AriaAttributes.pressed
            ++ Help.bool test "readonly" AriaAttributes.readonly
            ++ Help.values test
                "relevant"
                AriaAttributes.relevant
                [ AriaAttributes.additions
                , AriaAttributes.removals
                , AriaAttributes.text
                ]
                "additions,removals,text"
            ++ [ test "relevant is all" "relevant" AriaAttributes.relevantAll "all" ]
            ++ Help.bool test "required" AriaAttributes.required
            ++ Help.string test "roledescription" AriaAttributes.roledescription
            ++ Help.boundedNumber test "rowcount" AriaAttributes.rowcount -1
            ++ Help.boundedNumber test "rowindex" AriaAttributes.rowindex 1
            ++ Help.boundedNumber test "rowspan" AriaAttributes.rowspan 0
            ++ Help.maybeBool test "selected" AriaAttributes.selected "undefined"
            ++ Help.boundedNumber test "setsize" AriaAttributes.setsize -1
            ++ Help.value test
                "sort"
                AriaAttributes.sort
                [ ( AriaAttributes.ascending, "ascending" )
                , ( AriaAttributes.descending, "descending" )
                , ( AriaAttributes.none, "none" )
                , ( AriaAttributes.other, "other" )
                ]
            ++ Help.number test "valuemax" AriaAttributes.valuemax
            ++ Help.number test "valuemin" AriaAttributes.valuemin
            ++ Help.number test "valuenow" AriaAttributes.valuenow
            ++ Help.string test "valuetext" AriaAttributes.valuetext
        )
