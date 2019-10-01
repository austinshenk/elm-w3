module Wai.Role.ProgressBar exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | progressbar : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
