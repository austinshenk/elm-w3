module Wai.Role.ContentInfo exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | contentinfo : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
