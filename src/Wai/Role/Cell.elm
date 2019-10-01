module Wai.Role.Cell exposing (Attribute, RoleAttribute, attribute)

import Wai.Role.ColumnHeader as ColumnHeader
import Wai.Role.GridCell as GridCell
import Wai.Role.Help as Wai
import Wai.Role.RowHeader as RowHeader


type alias RoleAttribute a =
    { a
        | cell : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (ColumnHeader.Attribute (GridCell.Attribute (RowHeader.Attribute a)))


attribute : String -> String -> Wai.Attribute (Attribute {})
attribute name value =
    Wai.Attribute name
        value
        { cell = Wai.Compatible
        , columnheader = Wai.Compatible
        , gridcell = Wai.Compatible
        , rowheader = Wai.Compatible
        }
