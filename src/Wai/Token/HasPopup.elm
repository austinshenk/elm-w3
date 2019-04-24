module Wai.Token.HasPopup exposing
    ( Type
    , false, true, menu, listbox, tree, grid, dialog
    )

{-| Based on the tokens defined by WAI's [aria-haspopup](https://www.w3.org/TR/wai-aria-1.1/#aria-haspopup)


# Definition

@docs Type


# Values

@docs false, true, menu, listbox, tree, grid, dialog

-}

import Wai.Token exposing (HasPopup(..), toToken)


{-| -}
type alias Type =
    HasPopup


{-| Default
-}
false : Type
false =
    HasPopup (toToken "false")


{-| -}
true : Type
true =
    HasPopup (toToken "true")


{-| -}
menu : Type
menu =
    HasPopup (toToken "menu")


{-| -}
listbox : Type
listbox =
    HasPopup (toToken "listbox")


{-| -}
tree : Type
tree =
    HasPopup (toToken "tree")


{-| -}
grid : Type
grid =
    HasPopup (toToken "grid")


{-| -}
dialog : Type
dialog =
    HasPopup (toToken "dialog")
