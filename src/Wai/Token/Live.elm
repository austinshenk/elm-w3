module Wai.Token.Live exposing (Type, assertive, off, polite)

import Wai.Token exposing (Live(..), toToken)


type alias Type =
    Live


assertive : Type
assertive =
    Live (toToken "assertive")


polite : Type
polite =
    Live (toToken "polite")


off : Type
off =
    Live (toToken "off")
