module Link exposing (link, settings)

import Html exposing (Attribute, Html)
import Html.Attributes exposing (attribute)
import Label.Help
import Label.Type exposing (Label)



{- WAI-ARIA Link
   https://www.w3.org/TR/wai-aria-practices-1.1/#link
   https://www.w3.org/TR/wai-aria-1.1/#link
-}


settings : Label -> Href -> Settings
settings label href =
    { href = href, label = label }


type alias Settings =
    { href : Href
    , label : Label
    }


type alias Href =
    String


link : Settings -> List (Attribute a) -> List (Html a) -> Html a
link linkSettings attributes body =
    let
        ( attributesWithSettings, bodyWithSettings ) =
            ( attributes, body )
                |> Label.Help.apply linkSettings.label
                |> applyHref linkSettings.href
    in
    Html.a attributesWithSettings bodyWithSettings


applyHref : Href -> ( List (Attribute a), List (Html a) ) -> ( List (Attribute a), List (Html a) )
applyHref href ( attributes, body ) =
    let
        nonEmptyHref =
            if String.isEmpty href then
                "#"

            else
                href
    in
    ( Html.Attributes.attribute "href" nonEmptyHref :: attributes, body )
