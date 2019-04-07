module Label.Help exposing (apply)

import Html exposing (Attribute, Html)
import Label.Type exposing (Label(..))
import Wai.Aria


apply : Label -> ( List (Attribute a), List (Html a) ) -> ( List (Attribute a), List (Html a) )
apply label ( attributes, body ) =
    case label of
        Custom ->
            ( attributes, body )

        Text appended value ->
            if String.isEmpty value then
                ( attributes, body )

            else if appended then
                ( attributes, body ++ [ Html.text value ] )

            else
                ( attributes, Html.text value :: body )

        AriaLabel value ->
            if String.isEmpty value then
                ( attributes, body )

            else
                ( attributes ++ [ Wai.Aria.label value ], body )

        AriaLabelledBy ids ->
            if List.isEmpty ids then
                ( attributes, body )

            else
                ( attributes ++ [ Wai.Aria.labelledBy ids ], body )
