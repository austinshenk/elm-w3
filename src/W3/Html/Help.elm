module W3.Html.Help exposing (Attribute(..), Supported, SupportedAttribute, SupportedValue, Value(..), boolAttribute, boolProperty, boolValueProperty, numberAttribute, numberProperty, property, stringAttribute, stringProperty, style, tokensAttribute, valueProperty, valuesAttribute, valuesProperty)

import Json.Decode as Json exposing (Value)
import Json.Encode
import VirtualDom exposing (Handler)


type Attribute a msg
    = Attribute String String
    | Property String Json.Value
    | Event String (Handler msg)
    | Style String String


type Value a
    = Value String


type Supported
    = Supported


type SupportedAttribute
    = SupportedAttribute


type SupportedValue
    = SupportedValue


boolAttribute : String -> Bool -> Attribute a msg
boolAttribute key =
    Attribute key << boolToString


stringAttribute : String -> String -> Attribute a msg
stringAttribute =
    Attribute


tokensAttribute : String -> List String -> Attribute a msg
tokensAttribute key =
    Attribute key << String.join " "


valuesAttribute : String -> List (Value a) -> Attribute b msg
valuesAttribute key =
    Attribute key << List.foldl valuesToString ""


numberAttribute : String -> Int -> Attribute a msg
numberAttribute key =
    Attribute key << String.fromInt


property : String -> Json.Value -> Attribute a msg
property =
    Property


stringProperty : String -> String -> Attribute a msg
stringProperty name =
    property name << Json.Encode.string


boolProperty : String -> Bool -> Attribute a msg
boolProperty name =
    property name << Json.Encode.bool


boolValueProperty : String -> Value a -> Value a -> Bool -> Attribute b msg
boolValueProperty key trueValue falseValue true =
    Property key
        (if true then
            Json.Encode.string (valueToString trueValue)

         else
            Json.Encode.string (valueToString falseValue)
        )


numberProperty : String -> Int -> Attribute a msg
numberProperty key =
    property key << Json.Encode.int


valueProperty : String -> Value a -> Attribute b msg
valueProperty key (Value val) =
    property key (Json.Encode.string val)


valuesProperty : String -> List (Value a) -> Attribute b msg
valuesProperty key vals =
    property key (Json.Encode.string (List.foldl valuesToString "" vals))


boolToString : Bool -> String
boolToString val =
    if val then
        "true"

    else
        "false"


valuesToString : Value a -> String -> String
valuesToString (Value val) existingVal =
    existingVal ++ " " ++ val


valueToString : Value a -> String
valueToString (Value val) =
    val


style : String -> String -> Attribute b msg
style =
    Style
