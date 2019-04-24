module Wai.Token.Relevant exposing
    ( Type
    , additions, removals, text
    )

{-| Based on the tokens defined by WAI's [aria-relevant](https://www.w3.org/TR/wai-aria-1.1/#aria-relevant)


# Definition

@docs Type


# Values

@docs additions, removals, text

-}

import Wai.Token exposing (Relevant(..), toToken)


{-| -}
type alias Type =
    Relevant


{-| -}
additions : Type
additions =
    Relevant (toToken "additions")


{-| -}
removals : Type
removals =
    Relevant (toToken "removals")


{-| -}
text : Type
text =
    Relevant (toToken "text")
