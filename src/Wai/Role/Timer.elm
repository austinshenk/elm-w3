module Wai.Role.Timer exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | timer : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
