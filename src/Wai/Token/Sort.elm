module Wai.Token.Sort exposing (Type, ascending, descending, none, other)

import Wai.Token exposing (Sort(..), toToken)


type alias Type =
    Sort


ascending : Type
ascending =
    Sort (toToken "ascending")


descending : Type
descending =
    Sort (toToken "descending")


none : Type
none =
    Sort (toToken "none")


other : Type
other =
    Sort (toToken "other")
