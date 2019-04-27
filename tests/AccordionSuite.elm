module AccordionSuite exposing (suite)

import Expect
import Html
import Html.Attributes as Attribute
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import Wai.Accordion as Accordion exposing (..)
import Wai.Aria as Aria
import Wai.Label as Label


suite : Test
suite =
    let
        closedPanel =
            panel (panelSettings "panel1" close)
                (heading Label.custom [] [])
                (region [] [])

        accordionWithNoPanels =
            accordion 1 [] []

        accordionWithSingleClosedPanel =
            accordion 1
                []
                [ closedPanel ]

        accordionWithSomeClosedPanels =
            accordion 1
                []
                [ panel (panelSettings "panel1" close)
                    (heading Label.custom [] [])
                    (region [] [])
                , panel (panelSettings "panel2" close)
                    (heading Label.custom [] [])
                    (region [] [])
                , panel (panelSettings "panel3" close)
                    (heading Label.custom [] [])
                    (region [] [])
                ]

        accordionWithSingleOpenedPanel =
            accordion 1
                []
                [ panel (panelSettings "panel1" open)
                    (heading Label.custom [] [])
                    (region [] [])
                ]
    in
    describe "Accordion"
        [ describe "element"
            [ test "has role=\"heading\""
                (\() ->
                    accordionWithNoPanels
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute Aria.presentation ]
                )
            , test "if no panels are provided, than nothing should be rendered"
                (\() ->
                    accordionWithNoPanels
                        |> Query.fromHtml
                        |> Query.children [ Selector.tag "dd" ]
                        |> Query.count (Expect.equal 0)
                )
            , test "if an amount of panels is provided, than the same amount is rendered"
                (\() ->
                    accordionWithSomeClosedPanels
                        |> Query.fromHtml
                        |> Query.children [ Selector.tag "dd" ]
                        |> Query.count (Expect.equal 3)
                )
            ]
        , describe "heading level"
            [ test "is 1 when value is negative"
                (\() ->
                    accordion -1 [] [ closedPanel ]
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.has [ Selector.attribute (Aria.level 1) ]
                )
            , test "is 1 when value is 0"
                (\() ->
                    accordion 0 [] [ closedPanel ]
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.has [ Selector.attribute (Aria.level 1) ]
                )
            , test "is value when positive value is provided"
                (\() ->
                    accordion 5 [] [ closedPanel ]
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.has [ Selector.attribute (Aria.level 5) ]
                )
            ]
        , describe "panel haeading"
            [ test "has role=\"heading\""
                (\() ->
                    accordionWithSingleClosedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.has [ Selector.attribute Aria.heading ]
                )
            , test "has aria-level"
                (\() ->
                    accordionWithSingleClosedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.has [ Selector.attribute (Aria.level 1) ]
                )
            ]
        , describe "panel button"
            [ test "has id"
                (\() ->
                    accordionWithSingleClosedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.find [ Selector.tag "button" ]
                        |> Query.has [ Selector.attribute (Attribute.attribute "id" "panel1-heading") ]
                )
            , test "has aria-controls"
                (\() ->
                    accordionWithSingleClosedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.find [ Selector.tag "button" ]
                        |> Query.has [ Selector.attribute (Aria.controls [ "panel1-region" ]) ]
                )
            , test
                "has aria-expanded=\"false\" when panel is closed"
                (\() ->
                    accordionWithSingleClosedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.find [ Selector.tag "button" ]
                        |> Query.has [ Selector.attribute (Aria.expanded (Just False)) ]
                )
            , test "has aria-expanded=\"true\" when panel is opened"
                (\() ->
                    accordionWithSingleOpenedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.find [ Selector.tag "button" ]
                        |> Query.has [ Selector.attribute (Aria.expanded (Just True)) ]
                )
            , test "has aria-disabled=\"true\" when panel is opened"
                (\() ->
                    accordionWithSingleOpenedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dt" ]
                        |> Query.find [ Selector.tag "button" ]
                        |> Query.has [ Selector.attribute (Aria.disabled True) ]
                )
            ]
        , describe "panel region"
            [ test "has role=\"region\""
                (\() ->
                    accordionWithSingleClosedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dd" ]
                        |> Query.has [ Selector.attribute Aria.region ]
                )
            , test "has id"
                (\() ->
                    accordionWithSingleClosedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dd" ]
                        |> Query.has [ Selector.attribute (Attribute.attribute "id" "panel1-region") ]
                )
            , test "has aria-labelledby"
                (\() ->
                    accordionWithSingleClosedPanel
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "dd" ]
                        |> Query.has [ Selector.attribute (Aria.labelledBy [ "panel1-heading" ]) ]
                )
            ]
        ]
