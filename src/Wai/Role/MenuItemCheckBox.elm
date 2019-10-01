module Wai.Role.MenuItemCheckBox exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai
import Wai.Role.MenuItemRadio as MenuItemRadio


type alias RoleAttribute a =
    { a
        | menuitemcheckbox : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (MenuItemRadio.Attribute a)
