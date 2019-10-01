module Wai.Role.Directory exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | directory : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
