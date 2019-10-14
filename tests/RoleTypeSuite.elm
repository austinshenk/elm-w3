module RoleTypeSuite exposing (suite)

import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import VirtualDom
import W3.Html as Html


suite : Test
suite =
    describe "RoleType"
        [ Test.test "has atomic"
            (\() ->
                Html.figure1 [] (Html.figcaption [] []) []
                    |> Html.toHtml
                    |> Query.fromHtml
                    |> Query.has [ Selector.attribute (VirtualDom.attribute "aria-atomic" "true") ]
            )
        ]
