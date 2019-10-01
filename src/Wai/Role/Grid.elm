module Wai.Role.Grid exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai
import Wai.Role.TreeGrid as TreeGrid


type alias RoleAttribute a =
    { a
        | grid : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (TreeGrid.Attribute a)
