module Wai.Role.Abstract.Widget exposing (Attribute, RoleAttribute)

import Wai.Role.Abstract.Command as Command
import Wai.Role.Abstract.Composite as Composite
import Wai.Role.GridCell as GridCell
import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | widget : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Command.Attribute (Composite.Attribute (GridCell.Attribute a)))
