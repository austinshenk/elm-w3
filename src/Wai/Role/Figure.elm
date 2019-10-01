module Wai.Role.Figure exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | figure : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
