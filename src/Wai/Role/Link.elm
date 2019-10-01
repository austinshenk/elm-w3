module Wai.Role.Link exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | link : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
