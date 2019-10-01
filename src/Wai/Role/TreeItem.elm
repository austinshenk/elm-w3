module Wai.Role.TreeItem exposing (Attribute, RoleAttribute)

import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | treeitem : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute a
