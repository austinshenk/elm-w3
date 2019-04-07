module Wai.Token.Orientation exposing (Type, horizontal, undefined, vertical)

import Wai.Token exposing (Orientation(..), toToken)


type alias Type =
    Orientation


horizontal : Type
horizontal =
    Orientation (toToken "horizontal")


vertical : Type
vertical =
    Orientation (toToken "vertical")


undefined : Type
undefined =
    Orientation (toToken "undefined")
