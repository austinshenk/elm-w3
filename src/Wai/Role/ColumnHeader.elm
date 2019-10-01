module Wai.Role.ColumnHeader exposing (Attribute, RoleAttribute, attribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | columnheader : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a


attribute : String -> String -> Wai.Attribute (Attribute {})
attribute name value =
    Wai.Attribute name value { columnheader = Wai.Compatible }
