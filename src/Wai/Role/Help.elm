module Wai.Role.Help exposing (Attribute(..), Supported(..), bool, boolToString, idReference, idReferenceList, integer, maybeBool, maybeBoolToString, number, role, string, toAttribute, token, triState)

import Html
import Html.Attributes as Attributes
import Wai.IdReference exposing (IdReference)
import Wai.Token as Token
import Wai.TriState.Help exposing (TriState)


type Attribute a
    = Attribute String String


type Supported
    = Supported


bool : String -> Bool -> Attribute a
bool key =
    Attribute key << boolToString


maybeBool : String -> Maybe Bool -> Attribute a
maybeBool key =
    Attribute key << maybeBoolToString


maybeBoolToString : Maybe Bool -> String
maybeBoolToString value =
    case value of
        Just b ->
            boolToString b

        Nothing ->
            "undefined"


boolToString : Bool -> String
boolToString value =
    if value then
        "true"

    else
        "false"


triState : String -> TriState -> Attribute a
triState key =
    Attribute key << Wai.TriState.Help.toString


number : String -> Int -> Attribute a
number key =
    Attribute key << String.fromInt


integer : String -> Int -> Int -> Attribute a
integer key minValue =
    Attribute key << String.fromInt << Basics.max minValue


token : String -> Token.Type -> Attribute a
token key =
    Attribute key << Token.toString


idReference : String -> IdReference -> Attribute a
idReference key =
    Attribute key << Wai.IdReference.toString


idReferenceList : String -> List IdReference -> Attribute a
idReferenceList key =
    Attribute key << Wai.IdReference.listToString


string : String -> String -> Attribute a
string key value =
    if value |> String.trim |> String.isEmpty then
        Attribute "" ""

    else
        Attribute key value


role : String -> List (Attribute a) -> List (Html.Attribute msg)
role name attributes =
    Attributes.attribute "role" name :: List.map toAttribute attributes


toAttribute : Attribute a -> Html.Attribute msg
toAttribute (Attribute name value) =
    Attributes.attribute ("aria-" ++ name) value
