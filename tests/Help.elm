module Help exposing (bool, boolValue, boundedNumber, maybeBool, number, string, stringsCommaSeparated, stringsSpaceSeparated, value, values)

import Test exposing (..)


type alias TestConstructor a =
    String -> String -> a -> String -> Test


string : TestConstructor a -> String -> (String -> a) -> List Test
string test name attribute =
    [ test (name ++ " is \"testValue\"") name (attribute "testValue") "testValue" ]


stringsSpaceSeparated : TestConstructor a -> String -> (List String -> a) -> List Test
stringsSpaceSeparated test name attribute =
    [ test (name ++ " is \"testValue1 testValue2\"") name (attribute [ "testValue1", "testValue2" ]) "testValue1 testValue2" ]


stringsCommaSeparated : TestConstructor a -> String -> (List String -> a) -> List Test
stringsCommaSeparated test name attribute =
    [ test (name ++ " is \"testValue1,testValue2\"") name (attribute [ "testValue1", "testValue2" ]) "testValue1,testValue2" ]


number : TestConstructor a -> String -> (Int -> a) -> List Test
number test name attribute =
    [ test (name ++ " is " ++ "-100") name (attribute -100) "-100"
    , test (name ++ " is " ++ "-1") name (attribute -1) "-1"
    , test (name ++ " is " ++ "0") name (attribute 0) "0"
    , test (name ++ " is " ++ "1") name (attribute 1) "1"
    , test (name ++ " is " ++ "100") name (attribute 100) "100"
    ]


boundedNumber : TestConstructor a -> String -> (Int -> a) -> Int -> List Test
boundedNumber test name attribute minValue =
    [ test (name ++ " is " ++ String.fromInt minValue) name (attribute minValue) (String.fromInt minValue)
    , test (name ++ " is " ++ String.fromInt (minValue + 1)) name (attribute (minValue + 1)) (String.fromInt (minValue + 1))
    , test (name ++ " is " ++ String.fromInt (minValue + 2)) name (attribute (minValue + 2)) (String.fromInt (minValue + 2))
    ]


bool : TestConstructor a -> String -> (Bool -> a) -> List Test
bool test name attribute =
    [ test (name ++ " is true") name (attribute True) "true"
    , test (name ++ " is false") name (attribute False) "false"
    ]


boolValue : TestConstructor a -> String -> (Bool -> a) -> String -> String -> List Test
boolValue test name attribute trueValue falseValue =
    [ test (name ++ " is " ++ trueValue) name (attribute True) trueValue
    , test (name ++ " is " ++ falseValue) name (attribute False) falseValue
    ]


maybeBool : TestConstructor a -> String -> (Maybe Bool -> a) -> String -> List Test
maybeBool test name attribute defaultValue =
    [ test (name ++ " is true") name (attribute (Just True)) "true"
    , test (name ++ " is false") name (attribute (Just False)) "false"
    , test (name ++ " is " ++ defaultValue) name (attribute Nothing) defaultValue
    ]


value : TestConstructor b -> String -> (a -> b) -> List ( a, String ) -> List Test
value test name attribute valueList =
    List.map (valueToTest test name attribute) valueList


valueToTest : TestConstructor b -> String -> (a -> b) -> ( a, String ) -> Test
valueToTest test name attribute ( val, expected ) =
    test (name ++ " is " ++ expected) name (attribute val) expected


values : TestConstructor b -> String -> (List a -> b) -> List a -> String -> List Test
values test name attribute valueList expected =
    [ test (name ++ " is " ++ expected) name (attribute valueList) expected ]
