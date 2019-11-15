module W3.Html.Help exposing (Attribute(..), Supported, SupportedAttribute, SupportedValue, Value(..), bool, boolValue, maybeBool, number, property, string, tokens, value, values)

import Json.Decode


type Attribute a
    = Attribute String String
    | Property String Json.Decode.Value


type Supported
    = Supported


type SupportedAttribute
    = SupportedAttribute


type SupportedValue
    = SupportedValue


bool : String -> Bool -> Attribute a
bool key =
    Attribute key << boolToString


boolValue : String -> Value a -> Value a -> Bool -> Attribute b
boolValue key trueValue falseValue true =
    Attribute key
        (if true then
            valueToString trueValue

         else
            valueToString falseValue
        )


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


type Value a
    = Value String


values : String -> List (Value a) -> Attribute b
values key =
    Attribute key << List.foldl valuesToString ""


valuesToString : Value a -> String -> String
valuesToString (Value val) existingVal =
    existingVal ++ " " ++ val


value : String -> Value a -> Attribute b
value key =
    Attribute key << valueToString


valueToString : Value a -> String
valueToString (Value val) =
    val


property : String -> Json.Decode.Value -> Attribute a
property =
    Property
