module Wai.Role.Status exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai
import Wai.Role.ProgressBar as ProgressBar
import Wai.Role.Timer as Timer


type alias RoleAttribute a =
    { a
        | status : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (ProgressBar.Attribute (Timer.Attribute a))
