module Wai.Role.MenuBar exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | menubar : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
