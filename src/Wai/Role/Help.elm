module Wai.Role.Help exposing (Attribute(..), Compatible(..), bool, boolToString, idReference, idReferenceList, integer, maybeBool, maybeBoolToString, number, role, string, toAttribute, token, triState)

import Html
import Html.Attributes as Attributes
import Wai.IdReference exposing (IdReference)
import Wai.Token as Token
import Wai.TriState.Help exposing (TriState)


type Attribute a
    = Attribute String String a


type Compatible
    = Compatible


bool : (String -> String -> Attribute a) -> String -> Bool -> Attribute a
bool attribute key =
    attribute key << boolToString


maybeBool : (String -> String -> Attribute a) -> String -> Maybe Bool -> Attribute a
maybeBool attribute key =
    attribute key << maybeBoolToString


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


triState : (String -> String -> Attribute a) -> String -> TriState -> Attribute a
triState attribute key =
    attribute key << Wai.TriState.Help.toString


number : (String -> String -> Attribute a) -> String -> Int -> Attribute a
number attribute key =
    attribute key << String.fromInt


integer : (String -> String -> Attribute a) -> String -> Int -> Int -> Attribute a
integer attribute key minValue =
    attribute key << String.fromInt << Basics.max minValue


token : (String -> String -> Attribute a) -> String -> Token.Type -> Attribute a
token attribute key =
    attribute key << Token.toString


idReference : (String -> String -> Attribute a) -> String -> IdReference -> Attribute a
idReference attribute key =
    attribute key << Wai.IdReference.toString


idReferenceList : (String -> String -> Attribute a) -> String -> List IdReference -> Attribute a
idReferenceList attribute key =
    attribute key << Wai.IdReference.listToString


string : (String -> String -> Attribute a) -> String -> String -> Attribute a
string attribute key value =
    if value |> String.trim |> String.isEmpty then
        attribute "" ""

    else
        attribute key value


role : String -> List (Attribute a) -> List (Html.Attribute msg)
role name attributes =
    Attributes.attribute "role" name :: List.map toAttribute attributes


toAttribute : Attribute a -> Html.Attribute msg
toAttribute (Attribute name value _) =
    Attributes.attribute ("aria-" ++ name) value
