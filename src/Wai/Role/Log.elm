module Wai.Role.Log exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | log : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
