module Wai.Role.Marquee exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | marquee : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
