module Wai.Role.Presentation exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | presentation : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
