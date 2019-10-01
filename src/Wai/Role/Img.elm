module Wai.Role.Img exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | img : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
