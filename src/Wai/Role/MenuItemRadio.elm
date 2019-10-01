module Wai.Role.MenuItemRadio exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | menuitemradio : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
