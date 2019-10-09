module RoleTypeSuite exposing (suite)

import Html
import Html.Attributes as Attribute
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import W3.Aria as Aria
import W3.Aria.Attributes as AriaAttribute


suite : Test
suite =
    describe "RoleType"
        [ Test.test "has atomic"
            (\() ->
                Html.a (Aria.link [ AriaAttribute.atomic True ] []) []
                    |> Query.fromHtml
                    |> Query.has [ Selector.attribute (Attribute.attribute "aria-atomic" "true") ]
            )
        ]
