module W3.Html.Help exposing (Attribute(..), Supported, SupportedAttribute, SupportedValue, Value(..), bool, boolValue, maybeBool, number, property, string, tokens, value, values)

import Json.Decode as Json exposing (Value)
import VirtualDom exposing (Handler)


type Attribute a msg
    = Attribute String String
    | Property String Json.Value
    | Event String { message : msg, stopPropagation : Bool, preventDefault : Bool } ({ message : msg, stopPropagation : Bool, preventDefault : Bool } -> Handler msg)


type Supported
    = Supported


type SupportedAttribute
    = SupportedAttribute


type SupportedValue
    = SupportedValue


bool : String -> Bool -> Attribute a msg
bool key =
    Attribute key << boolToString


boolValue : String -> Value a -> Value a -> Bool -> Attribute b msg
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


maybeBool : String -> String -> Maybe Bool -> Attribute a msg
maybeBool key defaultValue =
    Attribute key << maybeBoolToString defaultValue


maybeBoolToString : String -> Maybe Bool -> String
maybeBoolToString defaultValue val =
    case val of
        Just b ->
            boolToString b

        Nothing ->
            defaultValue


number : String -> Int -> Attribute a msg
number key =
    Attribute key << String.fromInt


string : String -> String -> Attribute a msg
string key val =
    if val |> String.trim |> String.isEmpty then
        Attribute key ""

    else
        Attribute key val


tokens : String -> List String -> Attribute a msg
tokens key =
    Attribute key << String.join " "


type Value a
    = Value String


values : String -> List (Value a) -> Attribute b msg
values key =
    Attribute key << List.foldl valuesToString ""


valuesToString : Value a -> String -> String
valuesToString (Value val) existingVal =
    existingVal ++ " " ++ val


value : String -> Value a -> Attribute b msg
value key =
    Attribute key << valueToString


valueToString : Value a -> String
valueToString (Value val) =
    val


property : String -> Json.Value -> Attribute a msg
property =
    Property
