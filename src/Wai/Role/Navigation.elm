module Wai.Role.Navigation exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | navigation : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
