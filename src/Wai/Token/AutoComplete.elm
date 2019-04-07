module Wai.Token.AutoComplete exposing (Type, both, inline, list, none, toToken)

import Wai.Token exposing (AutoComplete(..), toToken)


type alias Type =
    AutoComplete


inline : Type
inline =
    AutoComplete (toToken "inline")


list : Type
list =
    AutoComplete (toToken "list")


both : Type
both =
    AutoComplete (toToken "both")


none : Type
none =
    AutoComplete (toToken "none")
