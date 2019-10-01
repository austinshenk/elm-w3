module Wai.Role.Toolbar exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | toolbar : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
