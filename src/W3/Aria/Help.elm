module W3.Aria.Help exposing (Attribute(..), IdReference, Supported, SupportedValue, TriState, Value(..), bool, boolToString, idReference, idReferenceList, integer, maybeBool, maybeBoolToString, number, role, string, toHtmlAttribute, triState, value, valueToString)

import W3.Html.Help as Html


type Attribute a
    = Attribute String String


type Supported
    = Supported


type SupportedValue
    = SupportedValue


bool : String -> Bool -> Attribute a
bool key =
    Attribute key << boolToString


maybeBool : String -> Maybe Bool -> Attribute a
maybeBool key =
    Attribute key << maybeBoolToString


maybeBoolToString : Maybe Bool -> String
maybeBoolToString val =
    case val of
        Just b ->
            boolToString b

        Nothing ->
            "undefined"


boolToString : Bool -> String
boolToString val =
    if val then
        "true"

    else
        "false"


type alias TriState =
    Value
        { true : SupportedValue
        , false : SupportedValue
        , mixed : SupportedValue
        }


triState : String -> TriState -> Attribute a
triState key =
    Attribute key << valueToString


number : String -> Int -> Attribute a
number key =
    Attribute key << String.fromInt


integer : String -> Int -> Int -> Attribute a
integer key minValue =
    Attribute key << String.fromInt << Basics.max minValue


type Value a
    = Value String


value : String -> Value a -> Attribute b
value key =
    Attribute key << valueToString


valueToString : Value a -> String
valueToString (Value val) =
    val


type alias IdReference =
    String


idReference : String -> IdReference -> Attribute a
idReference key =
    Attribute key


idReferenceList : String -> List IdReference -> Attribute a
idReferenceList key =
    Attribute key << String.join " "


string : String -> String -> Attribute a
string =
    Attribute


role : String -> List (Attribute a) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
role name attributes htmlAttributes =
    Html.Attribute "role" name :: List.foldl toHtmlAttributes htmlAttributes attributes


toHtmlAttributes : Attribute a -> List (Html.Attribute msg) -> List (Html.Attribute msg)
toHtmlAttributes attribute htmlAttributes =
    toHtmlAttribute attribute :: htmlAttributes


toHtmlAttribute : Attribute a -> Html.Attribute msg
toHtmlAttribute (Attribute name val) =
    Html.Attribute ("aria-" ++ name) val
