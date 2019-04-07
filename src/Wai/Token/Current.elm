module Wai.Token.Current exposing (Type, date, false, location, page, step, time, true)

import Wai.Token exposing (Current(..), toToken)


type alias Type =
    Current


page : Type
page =
    Current (toToken "page")


step : Type
step =
    Current (toToken "step")


location : Type
location =
    Current (toToken "location")


date : Type
date =
    Current (toToken "date")


time : Type
time =
    Current (toToken "time")


true : Type
true =
    Current (toToken "true")


false : Type
false =
    Current (toToken "false")
