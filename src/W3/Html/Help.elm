module W3.Html.Help exposing (Attribute(..), Supported, SupportedAttribute, SupportedValue, Value(..), bool, maybeBool, number, string, tokens, uniqueTokens, value, values)

import Set exposing (Set)


type Attribute a
    = Attribute String String


type Supported
    = Supported


type SupportedAttribute
    = SupportedAttribute


type SupportedValue
    = SuppotedValue


bool : String -> Bool -> Attribute a
bool key =
    Attribute key << boolToString


boolToString : Bool -> String
boolToString val =
    if val then
        "true"

    else
        "false"


maybeBool : String -> String -> Maybe Bool -> Attribute a
maybeBool key defaultValue =
    Attribute key << maybeBoolToString defaultValue


maybeBoolToString : String -> Maybe Bool -> String
maybeBoolToString defaultValue val =
    case val of
        Just b ->
            boolToString b

        Nothing ->
            defaultValue


number : String -> Int -> Attribute a
number key =
    Attribute key << String.fromInt


string : String -> String -> Attribute a
string key val =
    if val |> String.trim |> String.isEmpty then
        Attribute "" ""

    else
        Attribute key val


tokens : String -> List String -> Attribute a
tokens key =
    Attribute key << String.join " "


uniqueTokens : String -> Set String -> Attribute a
uniqueTokens key =
    Attribute key << setToString


setToString : Set String -> String
setToString set =
    set |> Set.toList |> String.join " "


type Value a
    = Value String


values : String -> List (Value a) -> Attribute b
values key =
    Attribute key << List.foldl valuesToString ""


valuesToString : Value a -> String -> String
valuesToString (Value val) existingVal =
    val ++ " " ++ existingVal


value : String -> Value a -> Attribute b
value key =
    Attribute key << valueToString


valueToString : Value a -> String
valueToString (Value val) =
    val
