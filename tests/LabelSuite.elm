module LabelSuite exposing (suite)

import Expect
import Html
import Html.Attributes as Attribute
import Test exposing (..)
import Wai.Aria as Aria
import Wai.Label as Label
import Wai.Label.Help as LabelHelp


emptyAttributeAndBody =
    ( [], [] )


emptyLabel =
    ""


nonEmptyLabel =
    "label"


suite : Test
suite =
    describe "Label"
        [ test "custom label should not add attributes or text content"
            (\() ->
                LabelHelp.apply Label.custom emptyAttributeAndBody
                    |> Expect.equal emptyAttributeAndBody
            )
        , test "empty text label should not add attributes or text content"
            (\() ->
                LabelHelp.apply (Label.text emptyLabel) emptyAttributeAndBody
                    |> Expect.equal emptyAttributeAndBody
            )
        , test "non empty text label should add text content"
            (\() ->
                LabelHelp.apply (Label.text nonEmptyLabel) emptyAttributeAndBody
                    |> Expect.equal ( [], [ Html.text nonEmptyLabel ] )
            )
        , test "empty aria label should not add attributes or text content"
            (\() ->
                LabelHelp.apply (Label.ariaLabel emptyLabel) emptyAttributeAndBody
                    |> Expect.equal emptyAttributeAndBody
            )
        , test "non empty aria label should add attribute"
            (\() ->
                LabelHelp.apply (Label.ariaLabel nonEmptyLabel) emptyAttributeAndBody
                    |> Expect.equal ( [ Aria.label nonEmptyLabel ], [] )
            )
        , test "empty aria labelledby should not add attributes or text content"
            (\() ->
                LabelHelp.apply (Label.ariaLabelledBy []) emptyAttributeAndBody
                    |> Expect.equal emptyAttributeAndBody
            )
        , test "non empty aria labelledby should add attribute"
            (\() ->
                LabelHelp.apply (Label.ariaLabelledBy [ nonEmptyLabel ]) emptyAttributeAndBody
                    |> Expect.equal ( [ Aria.labelledBy [ nonEmptyLabel ] ], [] )
            )
        ]
