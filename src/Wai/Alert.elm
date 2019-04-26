module Wai.Alert exposing (alert)

import Html
import Html.Attributes
import Wai.Aria as Aria



{-
   https://www.w3.org/TR/wai-aria-practices-1.1/#alert
-}


alert : List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
alert attributes body =
    Html.node "dialog" (Aria.alert :: Html.Attributes.attribute "open" "true" :: attributes) body
