module Wai.Role.Abstract.Composite exposing (Attribute, RoleAttribute)

import Wai.Role.Abstract.Select as Select
import Wai.Role.Grid as Grid
import Wai.Role.Help as Wai
import Wai.Role.SpinButton as SpinButton
import Wai.Role.TabList as TabList


type alias RoleAttribute a =
    { a
        | composite : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Grid.Attribute (Select.Attribute (SpinButton.Attribute (TabList.Attribute a))))
