module Wai.Role.TreeGrid exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | treegrid : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
