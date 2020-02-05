module Help exposing (bool, boolProperty, boolValue, boundedNumber, maybeBool, maybeBoolProperty, number, string, stringProperty, stringsCommaSeparated, stringsCommaSeparatedProperty, stringsSpaceSeparated, stringsSpaceSeparatedProperty, value, valueProperty, values)

import Json.Encode as Json
import Test exposing (..)


type alias TestConstructor a b =
    String -> String -> a -> b -> Test


string : TestConstructor a String -> String -> (String -> a) -> List Test
string test name attribute =
    [ test (name ++ " is \"testValue\"") name (attribute "testValue") "testValue" ]


stringProperty : TestConstructor a Json.Value -> String -> (String -> a) -> List Test
stringProperty test name attribute =
    [ test (name ++ " is \"testValue\"") name (attribute "testValue") (Json.string "testValue") ]


stringsSpaceSeparated : TestConstructor a String -> String -> (List String -> a) -> List Test
stringsSpaceSeparated test name attribute =
    [ test (name ++ " is \"testValue1 testValue2\"") name (attribute [ "testValue1", "testValue2" ]) "testValue1 testValue2" ]


stringsSpaceSeparatedProperty : TestConstructor a Json.Value -> String -> (List String -> a) -> List Test
stringsSpaceSeparatedProperty test name attribute =
    [ test (name ++ " is \"testValue1 testValue2\"") name (attribute [ "testValue1", "testValue2" ]) (Json.string "testValue1 testValue2") ]


stringsCommaSeparated : TestConstructor a String -> String -> (List String -> a) -> List Test
stringsCommaSeparated test name attribute =
    [ test (name ++ " is \"testValue1,testValue2\"") name (attribute [ "testValue1", "testValue2" ]) "testValue1,testValue2" ]


stringsCommaSeparatedProperty : TestConstructor a Json.Value -> String -> (List String -> a) -> List Test
stringsCommaSeparatedProperty test name attribute =
    [ test (name ++ " is \"testValue1,testValue2\"") name (attribute [ "testValue1", "testValue2" ]) (Json.string "testValue1,testValue2") ]


number : TestConstructor a String -> String -> (Int -> a) -> List Test
number test name attribute =
    [ test (name ++ " is " ++ "-100") name (attribute -100) "-100"
    , test (name ++ " is " ++ "-1") name (attribute -1) "-1"
    , test (name ++ " is " ++ "0") name (attribute 0) "0"
    , test (name ++ " is " ++ "1") name (attribute 1) "1"
    , test (name ++ " is " ++ "100") name (attribute 100) "100"
    ]


boundedNumber : TestConstructor a String -> String -> (Int -> a) -> Int -> List Test
boundedNumber test name attribute minValue =
    [ test (name ++ " is " ++ String.fromInt minValue) name (attribute minValue) (String.fromInt minValue)
    , test (name ++ " is " ++ String.fromInt (minValue + 1)) name (attribute (minValue + 1)) (String.fromInt (minValue + 1))
    , test (name ++ " is " ++ String.fromInt (minValue + 2)) name (attribute (minValue + 2)) (String.fromInt (minValue + 2))
    ]


bool : TestConstructor a String -> String -> (Bool -> a) -> List Test
bool test name attribute =
    [ test (name ++ " is true") name (attribute True) "true"
    , test (name ++ " is false") name (attribute False) "false"
    ]


boolProperty : TestConstructor a Json.Value -> String -> (Bool -> a) -> List Test
boolProperty test name attribute =
    [ test (name ++ " is true") name (attribute True) (Json.bool True)
    , test (name ++ " is false") name (attribute False) (Json.bool False)
    ]


boolValue : TestConstructor a String -> String -> (Bool -> a) -> String -> String -> List Test
boolValue test name attribute trueValue falseValue =
    [ test (name ++ " is " ++ trueValue) name (attribute True) trueValue
    , test (name ++ " is " ++ falseValue) name (attribute False) falseValue
    ]


maybeBool : TestConstructor a String -> String -> (Maybe Bool -> a) -> String -> List Test
maybeBool test name attribute defaultValue =
    [ test (name ++ " is true") name (attribute (Just True)) "true"
    , test (name ++ " is false") name (attribute (Just False)) "false"
    , test (name ++ " is " ++ defaultValue) name (attribute Nothing) defaultValue
    ]


maybeBoolProperty : TestConstructor a Json.Value -> String -> (Maybe Bool -> a) -> Json.Value -> List Test
maybeBoolProperty test name attribute defaultValue =
    [ test (name ++ " is true") name (attribute (Just True)) (Json.bool True)
    , test (name ++ " is false") name (attribute (Just False)) (Json.bool False)
    , test (name ++ " is default") name (attribute Nothing) defaultValue
    ]


value : TestConstructor b String -> String -> (a -> b) -> List ( a, String ) -> List Test
value test name attribute valueList =
    List.map (valueToTest test name attribute) valueList


valueToTest : TestConstructor b String -> String -> (a -> b) -> ( a, String ) -> Test
valueToTest test name attribute ( val, expected ) =
    test (name ++ " is " ++ expected) name (attribute val) expected


valueProperty : TestConstructor b Json.Value -> String -> (a -> b) -> List ( a, String ) -> List Test
valueProperty test name attribute valueList =
    List.map (valuePropertyToTest test name attribute) valueList


valuePropertyToTest : TestConstructor b Json.Value -> String -> (a -> b) -> ( a, String ) -> Test
valuePropertyToTest test name attribute ( val, expected ) =
    test (name ++ " is " ++ expected) name (attribute val) (Json.string expected)


values : TestConstructor b String -> String -> (List a -> b) -> List a -> String -> List Test
values test name attribute valueList expected =
    [ test (name ++ " is " ++ expected) name (attribute valueList) expected ]
