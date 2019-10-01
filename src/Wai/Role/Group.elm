module Wai.Role.Group exposing (Attribute, RoleAttribute)

import Wai.Role.Abstract.Select as Select
import Wai.Role.Help as Wai
import Wai.Role.Row as Row
import Wai.Role.Toolbar as Toolbar


type alias RoleAttribute a =
    { a
        | group : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Row.Attribute (Select.Attribute (Toolbar.Attribute a)))
