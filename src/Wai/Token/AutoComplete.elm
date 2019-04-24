module Wai.Token.AutoComplete exposing
    ( Type
    , inline, list, both, none
    )

{-| Based on the tokens defined by WAI's [aria-autocomplete](https://www.w3.org/TR/wai-aria-1.1/#aria-autocomplete)


# Definition

@docs Type


# Values

@docs inline, list, both, none

-}

import Wai.Token exposing (AutoComplete(..), toToken)


{-| -}
type alias Type =
    AutoComplete


{-| -}
inline : Type
inline =
    AutoComplete (toToken "inline")


{-| -}
list : Type
list =
    AutoComplete (toToken "list")


{-| -}
both : Type
both =
    AutoComplete (toToken "both")


{-| Default
-}
none : Type
none =
    AutoComplete (toToken "none")
