module Wai.Link exposing (link, settings)

{-| UI component based on WAI's [link](https://www.w3.org/TR/wai-aria-practices-1.1/#link) reccomendations


# Link

@docs link, settings

-}

import Html exposing (Attribute, Html)
import Html.Attributes exposing (attribute)
import Wai.Label.Help as LabelHelp
import Wai.Label.Type exposing (Label)


{-| -}
settings : Label -> Href -> Settings
settings label href =
    { href = href, label = label }


type alias Settings =
    { href : Href
    , label : Label
    }


type alias Href =
    String


{-| -}
link : Settings -> List (Attribute a) -> List (Html a) -> Html a
link linkSettings attributes body =
    let
        ( attributesWithSettings, bodyWithSettings ) =
            ( attributes, body )
                |> LabelHelp.apply linkSettings.label
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
