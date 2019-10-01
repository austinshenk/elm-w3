module Wai.Role.RowGroup exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | rowgroup : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
