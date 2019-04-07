module Wai.Token.HasPopup exposing (Type, dialog, false, grid, listbox, menu, tree, true)

import Wai.Token exposing (HasPopup(..), toToken)


type alias Type =
    HasPopup


false : Type
false =
    HasPopup (toToken "false")


true : Type
true =
    HasPopup (toToken "true")


menu : Type
menu =
    HasPopup (toToken "menu")


listbox : Type
listbox =
    HasPopup (toToken "listbox")


tree : Type
tree =
    HasPopup (toToken "tree")


grid : Type
grid =
    HasPopup (toToken "grid")


dialog : Type
dialog =
    HasPopup (toToken "dialog")
