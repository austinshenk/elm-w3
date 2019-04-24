module Wai.TriState exposing
    ( Type
    , true, false, mixed, undefined
    )

{-| Based on the type mapping defined by WAI's [tristate](https://www.w3.org/TR/wai-aria-1.1/#typemapping)


# Definition

@docs Type


# Values

@docs true, false, mixed, undefined

-}

import Wai.TriState.Help exposing (TriState(..))


{-| -}
type alias Type =
    TriState


{-| -}
true : TriState
true =
    TriState "true"


{-| -}
false : TriState
false =
    TriState "false"


{-| -}
mixed : TriState
mixed =
    TriState "mixed"


{-| -}
undefined : TriState
undefined =
    TriState "undefined"
