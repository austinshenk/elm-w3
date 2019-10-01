module Wai.Role.Menu exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai
import Wai.Role.MenuBar as MenuBar


type alias RoleAttribute a =
    { a
        | menu : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (MenuBar.Attribute a)
