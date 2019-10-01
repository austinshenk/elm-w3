module Wai.Role.Abstract.Command exposing (Attribute, RoleAttribute)

import Wai.Role.Button as Button
import Wai.Role.Help as Wai
import Wai.Role.Link as Link
import Wai.Role.MenuItem as MenuItem


type alias RoleAttribute a =
    { a
        | command : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Button.Attribute (Link.Attribute (MenuItem.Attribute a)))
