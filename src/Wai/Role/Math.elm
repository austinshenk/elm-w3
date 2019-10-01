module Wai.Role.Math exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | math : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
