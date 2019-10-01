module Wai.Role.Button exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | button : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
