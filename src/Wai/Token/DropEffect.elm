module Wai.Token.DropEffect exposing
    ( Type
    , copy, execute, link, move, none, popup
    )

{-| Based on the tokens defined by WAI's [aria-dropeffect](https://www.w3.org/TR/wai-aria-1.1/#aria-dropeffect)


# Definition

@docs Type


# Values

@docs copy, execute, link, move, none, popup

-}

import Wai.Token exposing (DropEffect(..), toToken)


{-| -}
type alias Type =
    DropEffect


{-| -}
copy : Type
copy =
    DropEffect (toToken "copy")


{-| -}
execute : Type
execute =
    DropEffect (toToken "execute")


{-| -}
link : Type
link =
    DropEffect (toToken "link")


{-| -}
move : Type
move =
    DropEffect (toToken "move")


{-| Default
-}
none : Type
none =
    DropEffect (toToken "none")


{-| -}
popup : Type
popup =
    DropEffect (toToken "popup")
