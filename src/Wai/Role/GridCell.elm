module Wai.Role.GridCell exposing (Attribute, RoleAttribute, attribute)

import Wai.Role.ColumnHeader as ColumnHeader
import Wai.Role.Help as Wai
import Wai.Role.RowHeader as RowHeader


type alias RoleAttribute a =
    { a
        | gridcell : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (ColumnHeader.Attribute (RowHeader.Attribute a))


attribute : String -> String -> Wai.Attribute (Attribute {})
attribute name value =
    Wai.Attribute name
        value
        { gridcell = Wai.Compatible
        , columnheader = Wai.Compatible
        , rowheader = Wai.Compatible
        }
