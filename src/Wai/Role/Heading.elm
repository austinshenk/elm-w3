module Wai.Role.Heading exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | heading : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
