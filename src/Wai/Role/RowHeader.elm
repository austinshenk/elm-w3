module Wai.Role.RowHeader exposing (Attribute, RoleAttribute, attribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | rowheader : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a


attribute : String -> String -> Wai.Attribute (Attribute {})
attribute name value =
    Wai.Attribute name value { rowheader = Wai.Compatible }
