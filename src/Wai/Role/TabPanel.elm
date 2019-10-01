module Wai.Role.TabPanel exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | tabpanel : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
