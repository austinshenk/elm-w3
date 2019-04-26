module ButtonSuite exposing (suite)

import Html.Attributes as Attribute
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import Wai.Aria as Aria
import Wai.Button as Button exposing (..)
import Wai.Label as Label
import Wai.Token.HasPopup as HasPopup
import Wai.TriState as TriState


suite : Test
suite =
    describe "Button"
        [ describe "by default"
            [ test "does not have aria-disabled"
                (\() ->
                    Button.button Label.custom [] []
                        |> Query.fromHtml
                        |> Query.hasNot [ Selector.attribute (Aria.disabled True) ]
                )
            ]
        , describe "describedby"
            [ test "is not added by default"
                (\() ->
                    buttonWith (Button.settings Label.custom) [] []
                        |> Query.fromHtml
                        |> Query.hasNot [ Selector.attribute (Aria.describedBy []) ]
                )
            , test "is value when a value is provided"
                (\() ->
                    buttonWith (Button.settings Label.custom |> describedby [ "something" ]) [] []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Aria.describedBy [ "something" ]) ]
                )
            , test "is an id list when multiple values are provided"
                (\() ->
                    buttonWith (Button.settings Label.custom |> describedby [ "something", "another" ]) [] []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Aria.describedBy [ "something", "another" ]) ]
                )
            , test "is not added when an empty list is provided"
                (\() ->
                    buttonWith (Button.settings Label.custom |> describedby []) [] []
                        |> Query.fromHtml
                        |> Query.hasNot [ Selector.attribute (Aria.describedBy []) ]
                )
            ]
        , describe "disabled"
            [ test "is not added by default"
                (\() ->
                    buttonWith (Button.settings Label.custom) [] []
                        |> Query.fromHtml
                        |> Query.hasNot [ Selector.attribute (Aria.disabled True) ]
                )
            , test "is not added when enabled"
                (\() ->
                    buttonWith (Button.settings Label.custom |> enable) [] []
                        |> Query.fromHtml
                        |> Query.hasNot [ Selector.attribute (Aria.disabled True) ]
                )
            , test "is \"true\" when disabled"
                (\() ->
                    buttonWith (Button.settings Label.custom |> disable) [] []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Aria.disabled True) ]
                )
            ]
        , describe "pressed"
            [ test "is \"true\" when pressed"
                (\() ->
                    toggleButton (Button.toggleSettings Label.custom on) [] []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Aria.pressed TriState.true) ]
                )
            , test "is not added when released"
                (\() ->
                    toggleButton (Button.toggleSettings Label.custom off) [] []
                        |> Query.fromHtml
                        |> Query.hasNot [ Selector.attribute (Aria.pressed TriState.undefined) ]
                )
            ]
        , describe "menu button"
            [ describe "expanded"
                [ test "is \"false\" when closed"
                    (\() ->
                        menuButton (Button.popupSettings Label.custom closed []) [] []
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (Aria.expanded (Just False)) ]
                    )
                , test "is \"true\" when opened"
                    (\() ->
                        menuButton (Button.popupSettings Label.custom opened []) [] []
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (Aria.expanded (Just True)) ]
                    )
                ]
            , describe "controls"
                [ test "does not add attribute when empty value is provided"
                    (\() ->
                        menuButton (Button.popupSettings Label.custom closed []) [] []
                            |> Query.fromHtml
                            |> Query.hasNot [ Selector.attribute (Aria.controls [ "something" ]) ]
                    )
                , test "adds attribute when non empty value is provided"
                    (\() ->
                        menuButton (Button.popupSettings Label.custom closed [ "something" ]) [] []
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (Aria.controls [ "something" ]) ]
                    )
                ]
            , describe "haspopup"
                [ test "is \"menu\""
                    (\() ->
                        menuButton (Button.popupSettings Label.custom closed [ "something" ]) [] []
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (Aria.hasPopup HasPopup.menu) ]
                    )
                , test "is \"listbox\""
                    (\() ->
                        listBoxButton (Button.popupSettings Label.custom closed []) [] []
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (Aria.hasPopup HasPopup.listbox) ]
                    )
                , test "is \"grid\""
                    (\() ->
                        gridButton (Button.popupSettings Label.custom closed []) [] []
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (Aria.hasPopup HasPopup.grid) ]
                    )
                , test "is \"tree\""
                    (\() ->
                        treeButton (Button.popupSettings Label.custom closed []) [] []
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (Aria.hasPopup HasPopup.tree) ]
                    )
                , test "is \"dialog\""
                    (\() ->
                        dialogButton (Button.popupSettings Label.custom closed []) [] []
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (Aria.hasPopup HasPopup.dialog) ]
                    )
                ]
            ]
        ]
