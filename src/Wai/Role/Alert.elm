module Wai.Role.Alert exposing (Attribute, RoleAttribute)

import Wai.Role.AlertDialog as AlertDialog
import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | alert : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (AlertDialog.Attribute a)
