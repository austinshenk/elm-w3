module LabelSuite exposing (suite)

import Expect
import Html
import Html.Attributes as Attribute
import Label
import Label.Help
import Test exposing (..)
import Wai.Aria as Aria


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
                Label.Help.apply Label.custom emptyAttributeAndBody
                    |> Expect.equal emptyAttributeAndBody
            )
        , test "empty text label should not add attributes or text content"
            (\() ->
                Label.Help.apply (Label.text emptyLabel) emptyAttributeAndBody
                    |> Expect.equal emptyAttributeAndBody
            )
        , test "non empty text label should add text content"
            (\() ->
                Label.Help.apply (Label.text nonEmptyLabel) emptyAttributeAndBody
                    |> Expect.equal ( [], [ Html.text nonEmptyLabel ] )
            )
        , test "empty aria label should not add attributes or text content"
            (\() ->
                Label.Help.apply (Label.ariaLabel emptyLabel) emptyAttributeAndBody
                    |> Expect.equal emptyAttributeAndBody
            )
        , test "non empty aria label should add attribute"
            (\() ->
                Label.Help.apply (Label.ariaLabel nonEmptyLabel) emptyAttributeAndBody
                    |> Expect.equal ( [ Aria.label nonEmptyLabel ], [] )
            )
        , test "empty aria labelledby should not add attributes or text content"
            (\() ->
                Label.Help.apply (Label.ariaLabelledBy []) emptyAttributeAndBody
                    |> Expect.equal emptyAttributeAndBody
            )
        , test "non empty aria labelledby should add attribute"
            (\() ->
                Label.Help.apply (Label.ariaLabelledBy [ nonEmptyLabel ]) emptyAttributeAndBody
                    |> Expect.equal ( [ Aria.labelledBy [ nonEmptyLabel ] ], [] )
            )
        ]
