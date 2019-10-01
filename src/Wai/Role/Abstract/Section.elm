module Wai.Role.Abstract.Section exposing (Attribute, RoleAttribute)

import Wai.Role.Abstract.Landmark as Landmark
import Wai.Role.Alert as Alert
import Wai.Role.Cell as Cell
import Wai.Role.Definition as Definition
import Wai.Role.Figure as Figure
import Wai.Role.Group as Group
import Wai.Role.Help as Wai
import Wai.Role.Img as Img
import Wai.Role.List as List
import Wai.Role.ListItem as ListItem
import Wai.Role.Log as Log
import Wai.Role.Marquee as Marquee
import Wai.Role.Math as Math
import Wai.Role.Note as Note
import Wai.Role.Status as Status
import Wai.Role.TabPanel as TabPanel
import Wai.Role.Table as Table
import Wai.Role.Term as Term
import Wai.Role.Tooltip as Tooltip


type alias RoleAttribute a =
    { a
        | section : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Alert.Attribute (Cell.Attribute (Definition.Attribute (Figure.Attribute (Group.Attribute (Img.Attribute (Landmark.Attribute (List.Attribute (ListItem.Attribute (Log.Attribute (Marquee.Attribute (Math.Attribute (Note.Attribute (Status.Attribute (Table.Attribute (TabPanel.Attribute (Term.Attribute (Tooltip.Attribute a))))))))))))))))))
