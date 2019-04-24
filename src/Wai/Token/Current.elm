module Wai.Token.Current exposing
    ( Type
    , page, step, location, date, time, true, false
    )

{-| Based on the tokens defined by WAI's [aria-current](https://www.w3.org/TR/wai-aria-1.1/#aria-current)


# Definition

@docs Type


# Values

@docs page, step, location, date, time, true, false

-}

import Wai.Token exposing (Current(..), toToken)


{-| -}
type alias Type =
    Current


{-| -}
page : Type
page =
    Current (toToken "page")


{-| -}
step : Type
step =
    Current (toToken "step")


{-| -}
location : Type
location =
    Current (toToken "location")


{-| -}
date : Type
date =
    Current (toToken "date")


{-| -}
time : Type
time =
    Current (toToken "time")


{-| -}
true : Type
true =
    Current (toToken "true")


{-| Default
-}
false : Type
false =
    Current (toToken "false")
