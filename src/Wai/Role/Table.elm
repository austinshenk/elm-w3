module Wai.Role.Table exposing (Attribute, RoleAttribute)

import Wai.Role.Grid as Grid
import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | table : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Grid.Attribute a)
