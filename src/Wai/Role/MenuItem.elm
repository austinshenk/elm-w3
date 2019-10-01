module Wai.Role.MenuItem exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai
import Wai.Role.MenuItemCheckBox as MenuItemCheckBox


type alias RoleAttribute a =
    { a
        | menuitem : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (MenuItemCheckBox.Attribute a)
