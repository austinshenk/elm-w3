module Wai.Role.Abstract.Window exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | window : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
