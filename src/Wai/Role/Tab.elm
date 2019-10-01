module Wai.Role.Tab exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | tab : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
