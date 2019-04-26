module LinkSuite exposing (suite)

import Html.Attributes as Attribute
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import Wai.Label as Label
import Wai.Link as Link exposing (..)


suite : Test
suite =
    describe "Link"
        [ describe "href"
            [ test "is \"#\" when empty string is provided"
                (\() ->
                    link (Link.settings Label.custom "") [] []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Attribute.attribute "href" "#") ]
                )
            , test "is provided string"
                (\() ->
                    link (Link.settings Label.custom "#") [] []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Attribute.attribute "href" "#") ]
                )
            , test "is provided URL"
                (\() ->
                    link (Link.settings Label.custom "http://test.com") [] []
                        |> Query.fromHtml
                        |> Query.has [ Selector.attribute (Attribute.attribute "href" "http://test.com") ]
                )
            ]
        ]
