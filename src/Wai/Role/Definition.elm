module Wai.Role.Definition exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | definition : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
