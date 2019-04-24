module Wai.Token.Live exposing
    ( Type
    , assertive, off, polite
    )

{-| Based on the tokens defined by WAI's [aria-live](https://www.w3.org/TR/wai-aria-1.1/#aria-live)


# Definition

@docs Type


# Values

@docs assertive, off, polite

-}

import Wai.Token exposing (Live(..), toToken)


{-| -}
type alias Type =
    Live


{-| -}
assertive : Type
assertive =
    Live (toToken "assertive")


{-| -}
polite : Type
polite =
    Live (toToken "polite")


{-| Default
-}
off : Type
off =
    Live (toToken "off")
