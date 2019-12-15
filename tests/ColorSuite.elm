module ColorSuite exposing (suite)

import Expect
import Test exposing (..)
import W3.Color as Color


suite : Test
suite =
    let
        white =
            { r = 255, g = 255, b = 255 }

        lightgrey =
            { r = 200, g = 200, b = 200 }

        grey =
            { r = 150, g = 150, b = 150 }

        darkgrey =
            { r = 100, g = 100, b = 100 }

        darkergrey =
            { r = 50, g = 50, b = 50 }

        black =
            { r = 0, g = 0, b = 0 }

        red =
            { r = 255, g = 0, b = 0 }

        green =
            { r = 0, g = 255, b = 0 }

        blue =
            { r = 0, g = 0, b = 255 }
    in
    describe "Accessible Colors"
        ([ contrastAA white black
         , contrastLargeTextAA white black
         , contrastAAA white black
         , contrastLargeTextAAA white black
         , contrastRatio white black 21
         , contrastRatio lightgrey black 12.551
         , contrastRatio grey black 7.099
         , contrastRatio darkgrey black 3.548
         , contrastRatio darkergrey black 1.637
         , contrastRatio black black 1
         , brightness white black 255
         , brightness lightgrey black 200
         , brightness grey black 150
         , brightness darkgrey black 100
         , brightness darkergrey black 50
         , brightness black black 0
         , brightness red black 76.245
         , brightness green black 149.685
         , brightness blue black 29.07
         , difference white black 765
         , difference lightgrey black 600
         , difference grey black 450
         , difference darkgrey black 300
         , difference darkergrey black 150
         , difference black black 0
         , difference red black 255
         , difference green black 255
         , difference blue black 255
         ]
            ++ normal white 255 255 255
            ++ normal black 0 0 0
            ++ normal red 255 0 0
            ++ normal green 0 255 0
            ++ normal blue 0 0 255
            ++ protanopia white 255 255 255
            ++ protanopia black 0 0 0
            ++ protanopia red 144.584 142.29 0
            ++ protanopia green 110.414 112.71 61.71
            ++ protanopia blue 0 0 193.29
            ++ protanomaly white 255 255 255
            ++ protanomaly black 0 0 0
            ++ protanomaly red 208.334 84.915 0
            ++ protanomaly green 46.665 170.085 31.875
            ++ protanomaly blue 0 0 223.125
            ++ deuteranopia white 255 255 255
            ++ deuteranopia black 0 0 0
            ++ deuteranopia red 159.375 178.5 0
            ++ deuteranopia green 95.625 76.5 76.5
            ++ deuteranopia blue 0 0 178.5
            ++ deuteranomaly white 255 255 255
            ++ deuteranomaly black 0 0 0
            ++ deuteranomaly red 204 65.79 0
            ++ deuteranomaly green 51 189.21 36.209
            ++ deuteranomaly blue 0 0 218.79
            ++ tritanopia white 255 255 255
            ++ tritanopia black 0 0 0
            ++ tritanopia red 242.25 0 0
            ++ tritanopia green 12.75 110.415 121.125
            ++ tritanopia blue 0 144.585 133.875
            ++ tritanomaly white 255 255 255
            ++ tritanomaly black 0 0 0
            ++ tritanomaly red 246.585 0 0
            ++ tritanomaly green 8.415 186.915 46.665
            ++ tritanomaly blue 0 68.085 208.335
            ++ achromatopsia white 255 255 255
            ++ achromatopsia black 0 0 0
            ++ achromatopsia red 76.245 76.245 76.245
            ++ achromatopsia green 149.685 149.685 149.685
            ++ achromatopsia blue 29.07 29.07 29.07
            ++ achromatomaly white 255 255 255
            ++ achromatomaly black 0 0 0
            ++ achromatomaly red 157.59 41.565 41.565
            ++ achromatomaly green 81.6 197.625 81.6
            ++ achromatomaly blue 15.81 15.81 131.58
        )


normal : Color.Color -> Float -> Float -> Float -> List Test
normal =
    disability Color.normal "normal"


protanopia : Color.Color -> Float -> Float -> Float -> List Test
protanopia =
    disability Color.protanopia "protanopia"


protanomaly : Color.Color -> Float -> Float -> Float -> List Test
protanomaly =
    disability Color.protanomaly "protanomaly"


deuteranopia : Color.Color -> Float -> Float -> Float -> List Test
deuteranopia =
    disability Color.deuteranopia "deuteranopia"


deuteranomaly : Color.Color -> Float -> Float -> Float -> List Test
deuteranomaly =
    disability Color.deuteranomaly "deuteranomaly"


tritanopia : Color.Color -> Float -> Float -> Float -> List Test
tritanopia =
    disability Color.tritanopia "tritanopia"


tritanomaly : Color.Color -> Float -> Float -> Float -> List Test
tritanomaly =
    disability Color.tritanomaly "tritanomaly"


achromatopsia : Color.Color -> Float -> Float -> Float -> List Test
achromatopsia =
    disability Color.achromatopsia "achromatopsia"


achromatomaly : Color.Color -> Float -> Float -> Float -> List Test
achromatomaly =
    disability Color.achromatomaly "achromatomaly"


disability : (Color.Color -> Color.Color) -> String -> Color.Color -> Float -> Float -> Float -> List Test
disability function name color r g b =
    let
        test : (Color.Color -> Float) -> String -> Float -> Test
        test getter getterString expected =
            let
                result =
                    getter (function color)
            in
            Test.test (colorToString color ++ " viewed by " ++ name ++ " person has a " ++ getterString ++ " value of " ++ String.fromFloat expected)
                (\() ->
                    Expect.within (Expect.Relative 0.001) expected result
                        |> Expect.onFail (getterString ++ " is actually " ++ String.fromFloat result)
                )
    in
    [ test .r "r" r, test .g "g" g, test .b "b" b ]


contrastRatio : Color.Color -> Color.Color -> Float -> Test
contrastRatio foreground background expected =
    let
        result =
            Color.contrast foreground background
    in
    Test.test (colorToString foreground ++ " on " ++ colorToString background ++ " has a " ++ String.fromFloat expected)
        (\() ->
            Expect.within (Expect.Relative 0.001) expected result
                |> Expect.onFail ("contrast is actually " ++ String.fromFloat result)
        )


brightness : Color.Color -> Color.Color -> Float -> Test
brightness foreground background expected =
    let
        result =
            Color.brightness foreground background
    in
    Test.test (colorToString foreground ++ " and " ++ colorToString background ++ " have a brightness difference of " ++ String.fromFloat expected)
        (\() ->
            Expect.within (Expect.Relative 0.001) expected result
                |> Expect.onFail ("brightness is actually " ++ String.fromFloat result)
        )


difference : Color.Color -> Color.Color -> Float -> Test
difference foreground background expected =
    let
        result =
            Color.difference foreground background
    in
    Test.test (colorToString foreground ++ " and " ++ colorToString background ++ " have a color difference of " ++ String.fromFloat expected)
        (\() ->
            Expect.within (Expect.Relative 0.001) expected result
                |> Expect.onFail ("color difference is actually " ++ String.fromFloat result)
        )


contrastAA : Color.Color -> Color.Color -> Test
contrastAA =
    contrast "AA" Color.isAA


contrastLargeTextAA : Color.Color -> Color.Color -> Test
contrastLargeTextAA =
    contrast "AA 18pt+" Color.isLargeTextAA


contrastAAA : Color.Color -> Color.Color -> Test
contrastAAA =
    contrast "AAA" Color.isAAA


contrastLargeTextAAA : Color.Color -> Color.Color -> Test
contrastLargeTextAAA =
    contrast "AAA 18pt+" Color.isLargeTextAAA


contrast : String -> (Color.Contrast -> Bool) -> Color.Color -> Color.Color -> Test
contrast complianceName complianceTest foreground background =
    let
        fgString =
            colorToString foreground

        bgString =
            colorToString background
    in
    Test.test (fgString ++ " on " ++ bgString ++ " is " ++ complianceName ++ " contrast compliant")
        (\() ->
            Expect.true ("Expected " ++ fgString ++ " on " ++ bgString ++ " to be " ++ complianceName ++ " contrast compliant")
                (Color.contrast foreground background |> complianceTest)
        )


colorToString : Color.Color -> String
colorToString color =
    "(" ++ String.fromFloat color.r ++ ", " ++ String.fromFloat color.g ++ ", " ++ String.fromFloat color.b ++ ")"
