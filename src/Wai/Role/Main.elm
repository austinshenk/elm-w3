module Wai.Role.Main exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | main : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
