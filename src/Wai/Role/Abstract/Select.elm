module Wai.Role.Abstract.Select exposing (Attribute, RoleAttribute, attribute)

import Wai.Role.ComboBox as ComboBox
import Wai.Role.Help as Wai
import Wai.Role.ListBox as ListBox
import Wai.Role.Menu as Menu
import Wai.Role.RadioGroup as RadioGroup
import Wai.Role.Tree as Tree


type alias RoleAttribute a =
    { a
        | select : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (ComboBox.Attribute (ListBox.Attribute (Menu.Attribute (RadioGroup.Attribute (Tree.Attribute a)))))


attribute : String -> String -> Wai.Attribute (Attribute {})
attribute name value =
    Wai.Attribute name
        value
        { select = Wai.Compatible
        , combobox = Wai.Compatible
        , listbox = Wai.Compatible
        , menu = Wai.Compatible
        , menubar = Wai.Compatible
        , radiogroup = Wai.Compatible
        , tree = Wai.Compatible
        , treegrid = Wai.Compatible
        }
