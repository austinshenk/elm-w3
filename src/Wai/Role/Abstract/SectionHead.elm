module Wai.Role.Abstract.SectionHead exposing (Attribute, RoleAttribute)

import Wai.Role.ColumnHeader as ColumnHeader
import Wai.Role.Heading as Heading
import Wai.Role.Help as Wai
import Wai.Role.RowHeader as RowHeader
import Wai.Role.Tab as Tab


type alias RoleAttribute a =
    { a
        | sectionhead : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (ColumnHeader.Attribute (Heading.Attribute (RowHeader.Attribute (Tab.Attribute a))))
