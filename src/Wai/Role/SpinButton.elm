module Wai.Role.SpinButton exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | spinbutton : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
