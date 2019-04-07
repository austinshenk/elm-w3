module Wai.Token.DropEffect exposing (Type, copy, execute, link, move, none, popup)

import Wai.Token exposing (DropEffect(..), toToken)


type alias Type =
    DropEffect


copy : Type
copy =
    DropEffect (toToken "copy")


execute : Type
execute =
    DropEffect (toToken "execute")


link : Type
link =
    DropEffect (toToken "link")


move : Type
move =
    DropEffect (toToken "move")


none : Type
none =
    DropEffect (toToken "none")


popup : Type
popup =
    DropEffect (toToken "popup")
