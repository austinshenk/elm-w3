module Wai.Role.Separator exposing (Attribute, RoleAttribute, attribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | separator : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a


attribute : String -> String -> Wai.Attribute (Attribute {})
attribute name value =
    Wai.Attribute name value { separator = Wai.Compatible }
