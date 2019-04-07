module Wai.Token.Relevant exposing (Type, additions, removals, text)

import Wai.Token exposing (Relevant(..), toToken)


type alias Type =
    Relevant


additions : Type
additions =
    Relevant (toToken "additions")


removals : Type
removals =
    Relevant (toToken "removals")


text : Type
text =
    Relevant (toToken "text")
