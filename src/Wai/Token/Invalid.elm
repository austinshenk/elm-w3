module Wai.Token.Invalid exposing
    ( Type
    , grammar, false, spelling, true
    )

{-| Based on the tokens defined by WAI's [aria-invalid](https://www.w3.org/TR/wai-aria-1.1/#aria-invalid)


# Definition

@docs Type


# Values

@docs grammar, false, spelling, true

-}

import Wai.Token exposing (Invalid(..), toToken)


{-| -}
type alias Type =
    Invalid


{-| -}
grammar : Type
grammar =
    Invalid (toToken "grammar")


{-| -}
spelling : Type
spelling =
    Invalid (toToken "spelling")


{-| -}
true : Type
true =
    Invalid (toToken "true")


{-| Default
-}
false : Type
false =
    Invalid (toToken "false")
