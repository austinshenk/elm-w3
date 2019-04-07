module Wai.Token.Invalid exposing (Type, false, grammar, spelling, true)

import Wai.Token exposing (Invalid(..), toToken)


type alias Type =
    Invalid


grammar : Type
grammar =
    Invalid (toToken "grammar")


spelling : Type
spelling =
    Invalid (toToken "spelling")


true : Type
true =
    Invalid (toToken "true")


false : Type
false =
    Invalid (toToken "false")
