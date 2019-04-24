module Wai.Token.Sort exposing
    ( Type
    , ascending, descending, none, other
    )

{-| Based on the tokens defined by WAI's [aria-sort](https://www.w3.org/TR/wai-aria-1.1/#aria-sort)


# Definition

@docs Type


# Values

@docs ascending, descending, none, other

-}

import Wai.Token exposing (Sort(..), toToken)


{-| -}
type alias Type =
    Sort


{-| -}
ascending : Type
ascending =
    Sort (toToken "ascending")


{-| -}
descending : Type
descending =
    Sort (toToken "descending")


{-| Default
-}
none : Type
none =
    Sort (toToken "none")


{-| -}
other : Type
other =
    Sort (toToken "other")
