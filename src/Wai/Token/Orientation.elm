module Wai.Token.Orientation exposing
    ( Type
    , horizontal, undefined, vertical
    )

{-| Based on the tokens defined by WAI's [aria-orientation](https://www.w3.org/TR/wai-aria-1.1/#aria-orientation)


# Definition

@docs Type


# Values

@docs horizontal, undefined, vertical

-}

import Wai.Token exposing (Orientation(..), toToken)


{-| -}
type alias Type =
    Orientation


{-| -}
horizontal : Type
horizontal =
    Orientation (toToken "horizontal")


{-| -}
vertical : Type
vertical =
    Orientation (toToken "vertical")


{-| Default
-}
undefined : Type
undefined =
    Orientation (toToken "undefined")
