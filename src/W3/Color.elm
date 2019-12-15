module W3.Color exposing
    ( Color, protanopia, protanomaly, deuteranopia, deuteranomaly, tritanopia, tritanomaly, achromatopsia, achromatomaly, normal
    , Contrast, contrast, isAA, isLargeTextAA, isAAA, isLargeTextAAA
    , brightness
    , difference
    )

{-| Utility module that makes it easy to test how accessible combinations of colors are with each other. The common use case for these functions is to test your app colors for contrast, brightness, and color blindness contrast and then make adjustments to colors as needed.


# Color Blindness

Useful functions for loosely simulating various kinds of color blindness.

_Note: These functions will not give you a color that can be easily viewed by someone with the disability. It will give you an approximation of how they view that color._

@docs Color, protanopia, protanomaly, deuteranopia, deuteranomaly, tritanopia, tritanomaly, achromatopsia, achromatomaly, normal


# Contrast

@docs Contrast, contrast, isAA, isLargeTextAA, isAAA, isLargeTextAAA


# Brightness

@docs brightness


# Utility

@docs difference

-}


type Row
    = Row Float Float Float


{-| -}
type alias Color =
    { r : Float
    , g : Float
    , b : Float
    }


{-| Approximation for normal eyes

    |1  0  0|
    |0  1  0|
    |0  0  1|

-}
normal : Color -> Color
normal =
    disability (Row 1 0 0) (Row 0 1 0) (Row 0 0 1)


{-| Approximation for Red color blindness

    |0.567  0.433  0    |
    |0.558  0.442  0    |
    |0      0.242  0.758|

-}
protanopia : Color -> Color
protanopia =
    disability (Row 0.567 0.433 0) (Row 0.558 0.442 0) (Row 0 0.242 0.758)


{-| Approximation for mostly Red color blindness

    |0.817  0.183  0    |
    |0.333  0.667  0    |
    |0      0.125  0.875|

-}
protanomaly : Color -> Color
protanomaly =
    disability (Row 0.817 0.183 0) (Row 0.333 0.667 0) (Row 0 0.125 0.875)


{-| Approximation for Green color blindness

    |0.625  0.375  0  |
    |0.7    0.3    0  |
    |0      0.3    0.7|

-}
deuteranopia : Color -> Color
deuteranopia =
    disability (Row 0.625 0.375 0) (Row 0.7 0.3 0) (Row 0 0.3 0.7)


{-| Approximation for mostly Green color blindness

    |0.8    0.2    0    |
    |0.258  0.742  0    |
    |0      0.142  0.858|

-}
deuteranomaly : Color -> Color
deuteranomaly =
    disability (Row 0.8 0.2 0) (Row 0.258 0.742 0) (Row 0 0.142 0.858)


{-| Approximation for Blue color blindness

    |0.95  0.05   0    |
    |0     0.433  0.567|
    |0     0.475  0.525|

-}
tritanopia : Color -> Color
tritanopia =
    disability (Row 0.95 0.05 0) (Row 0 0.433 0.567) (Row 0 0.475 0.525)


{-| Approximation for mostly Blue color blindness

    |0.967  0.033  0    |
    |0      0.733  0.267|
    |0      0.183  0.817|

-}
tritanomaly : Color -> Color
tritanomaly =
    disability (Row 0.967 0.033 0) (Row 0 0.733 0.267) (Row 0 0.183 0.817)


{-| Approximation for Complete color blindness

    |0.299  0.587  0.114|
    |0.299  0.587  0.114|
    |0.299  0.587  0.114|

-}
achromatopsia : Color -> Color
achromatopsia =
    disability (Row 0.299 0.587 0.114) (Row 0.299 0.587 0.114) (Row 0.299 0.587 0.114)


{-| Approximation for Mostly color blindness

    |0.618  0.32   0.062|
    |0.163  0.775  0.062|
    |0.163  0.32   0.516|

-}
achromatomaly : Color -> Color
achromatomaly =
    disability (Row 0.618 0.32 0.062) (Row 0.163 0.775 0.062) (Row 0.163 0.32 0.516)


disability : Row -> Row -> Row -> Color -> Color
disability row1 row2 row3 color =
    let
        validColor =
            clamp color

        compute (Row v1 v2 v3) { r, g, b } =
            Basics.clamp 0 255 (r * v1 + g * v2 + b * v3)
    in
    Color (compute row1 validColor) (compute row2 validColor) (compute row3 validColor)


{-| The brightness difference between 2 colors. Returns a result between 0 and 255
-}
brightness : Color -> Color -> Float
brightness foreground background =
    let
        brightnessValue { r, g, b } =
            r * 0.299 + g * 0.587 + b * 0.114
    in
    abs (brightnessValue (clamp foreground) - brightnessValue (clamp background))


{-| The color difference between 2 colors. Returns a result between 0 and 765
-}
difference : Color -> Color -> Float
difference foreground background =
    let
        validFg =
            clamp foreground

        validBg =
            clamp background
    in
    abs (validFg.r - validBg.r) + abs (validFg.g - validBg.g) + abs (validFg.b - validBg.b)


{-| -}
type alias Contrast =
    Float


{-| The contrast ratio between 2 colors. Returns a result between 1 and 21
-}
contrast : Color -> Color -> Contrast
contrast foreground background =
    let
        fgLuminance =
            luminance (clamp foreground)

        bgLuminance =
            luminance (clamp background)
    in
    if fgLuminance >= bgLuminance then
        (fgLuminance + 0.05) / (bgLuminance + 0.05)

    else
        (bgLuminance + 0.05) / (fgLuminance + 0.05)


luminance : Color -> Float
luminance { r, g, b } =
    let
        massage value =
            if value <= 0.03928 then
                value / 12.92

            else
                ((value + 0.055) / 1.055) ^ 2.4
    in
    (0.2126 * massage (r / 255)) + (0.7152 * massage (g / 255)) + (0.0722 * massage (b / 255))


clamp : Color -> Color
clamp { r, g, b } =
    let
        limit =
            Basics.clamp 0 255
    in
    Color (limit r) (limit g) (limit b)


{-| Test for AA compliance
-}
isAA : Contrast -> Bool
isAA ratio =
    ratio >= 4.5


{-| Test for AA compliance for text larger than 18pt
-}
isLargeTextAA : Contrast -> Bool
isLargeTextAA ratio =
    ratio >= 3


{-| Test for AAA compliance
-}
isAAA : Contrast -> Bool
isAAA ratio =
    ratio >= 7


{-| Test for AAA compliance for text larger than 18pt
-}
isLargeTextAAA : Contrast -> Bool
isLargeTextAAA ratio =
    ratio >= 4.5
