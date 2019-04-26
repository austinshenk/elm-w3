module CheckboxSuite exposing (suite)

import Expect
import Html.Attributes
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import Wai.Aria as Aria
import Wai.Checkbox as Checkbox
import Wai.Label as Label
import Wai.TriState as TriState


suite : Test
suite =
    let
        checkboxSettingsUnchecked =
            Checkbox.checkboxSettings Label.custom False

        checkboxSettingsChecked =
            Checkbox.checkboxSettings Label.custom True

        groupWithLabelAndNoChildren =
            Checkbox.group (Checkbox.ariaLabelledBy [ "label" ]) [] []

        groupWithLabelAndSomeChildren =
            Checkbox.group (Checkbox.ariaLabelledBy [ "label" ])
                []
                [ Checkbox.groupCheckbox checkboxSettingsUnchecked []
                , Checkbox.groupCheckbox checkboxSettingsUnchecked []
                , Checkbox.groupCheckbox checkboxSettingsUnchecked []
                ]
    in
    describe "Checkbox"
        [ describe "checked state"
            [ test "is \"false\" when False"
                (\() ->
                    Checkbox.checkbox checkboxSettingsUnchecked []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Aria.checked TriState.false) ]
                )
            , test "is \"true\" when True"
                (\() ->
                    Checkbox.checkbox checkboxSettingsChecked []
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
