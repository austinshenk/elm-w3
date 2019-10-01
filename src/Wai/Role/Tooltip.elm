module Wai.Role.Tooltip exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | tooltip : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
