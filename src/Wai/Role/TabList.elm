module Wai.Role.TabList exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | tablist : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
