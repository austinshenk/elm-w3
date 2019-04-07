module Wai.Aria.Help exposing (boolToString, maybeBoolToString, withBool, withIdReference, withIdReferenceList, withInteger, withMaybeBool, withNumber, withString, withToken, withTriState)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)
import Wai.IdReference exposing (IdReference)
import Wai.Token exposing (Type)
import Wai.TriState.Help exposing (TriState)


withBool : String -> Bool -> Attribute msg
withBool key =
    attribute key << boolToString


withMaybeBool : String -> Maybe Bool -> Attribute msg
withMaybeBool key =
    attribute key << maybeBoolToString


maybeBoolToString : Maybe Bool -> String
maybeBoolToString value =
    case value of
        Just bool ->
            boolToString bool

        Nothing ->
            "undefined"


boolToString : Bool -> String
boolToString value =
    if value then
        "true"

    else
        "false"


withTriState : String -> TriState -> Attribute msg
withTriState key =
    attribute key << Wai.TriState.Help.toString


withNumber : String -> Int -> Attribute msg
withNumber key =
    attribute key << String.fromInt


withInteger : String -> Int -> Int -> Attribute msg
withInteger key minValue =
    attribute key << String.fromInt << Basics.max minValue


withToken : String -> Type -> Attribute msg
withToken key =
    attribute key << Wai.Token.toString


withIdReference : String -> IdReference -> Attribute msg
withIdReference key =
    attribute key << Wai.IdReference.toString


withIdReferenceList : String -> List IdReference -> Attribute msg
withIdReferenceList key =
    attribute key << Wai.IdReference.listToString


withString : String -> String -> Attribute msg
withString key value =
    if value |> String.trim |> String.isEmpty then
        attribute "" ""

    else
        attribute key value
