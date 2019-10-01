module Wai.Role.AlertDialog exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | alertdialog : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
