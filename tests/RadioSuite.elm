module RadioSuite exposing (suite)

import Expect
import Html.Attributes
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import Wai.Aria as Aria
import Wai.Label as Label
import Wai.Radio as Radio
import Wai.TriState as TriState


suite : Test
suite =
    let
        radioSettingsUnchecked =
            Radio.settings Label.custom False

        radioSettingsChecked =
            Radio.settings Label.custom True

        groupWithLabelAndNoChildren =
            Radio.group (Radio.ariaLabelledBy [ "label" ]) [] []

        groupWithLabelAndSomeChildren =
            Radio.group (Radio.ariaLabelledBy [ "label" ])
                []
                [ Radio.groupRadio radioSettingsUnchecked []
                , Radio.groupRadio radioSettingsUnchecked []
                , Radio.groupRadio radioSettingsUnchecked []
                ]
    in
    describe "Radio"
        [ describe "checked state"
            [ test "is \"false\" when False"
                (\() ->
                    Radio.radio radioSettingsUnchecked []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Aria.checked TriState.false) ]
                )
            , test "is \"true\" when True"
                (\() ->
                    Radio.radio radioSettingsChecked []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Aria.checked TriState.true) ]
                )
            ]
        , describe "group"
            [ test "has role=\"group\""
                (\() ->
                    groupWithLabelAndNoChildren
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute Aria.group ]
                )
            , test "has aria-labelledby"
                (\() ->
                    groupWithLabelAndNoChildren
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Aria.labelledBy [ "label" ]) ]
                )
            , test "has zero children when checkboxes are not provided"
                (\() ->
                    groupWithLabelAndNoChildren
                        |> Query.fromHtml
                        |> Query.children []
                        |> Query.count (Expect.equal 0)
                )
            , test "has some children when some checkboxes are provided"
                (\() ->
                    groupWithLabelAndSomeChildren
                        |> Query.fromHtml
                        |> Query.children []
                        |> Query.count (Expect.equal 3)
                )
            ]
        ]
