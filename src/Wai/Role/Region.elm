module Wai.Role.Region exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | region : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
