module Wai.Role.ListItem exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai
import Wai.Role.TreeItem as TreeItem


type alias RoleAttribute a =
    { a
        | listitem : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (TreeItem.Attribute a)
