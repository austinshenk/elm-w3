module Wai.TriState exposing (Type, false, mixed, true, undefined)

import Wai.TriState.Help exposing (TriState(..))



{- https://www.w3.org/TR/wai-aria-1.1/#typemapping -}


type alias Type =
    TriState


true : TriState
true =
    TriState "true"


false : TriState
false =
    TriState "false"


mixed : TriState
mixed =
    TriState "mixed"


undefined : TriState
undefined =
    TriState "undefined"
