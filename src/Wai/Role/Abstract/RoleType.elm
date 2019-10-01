module Wai.Role.Abstract.RoleType exposing (Attribute, RoleAttribute, attribute)

import Wai.Role.Abstract.Structure as Structure
import Wai.Role.Abstract.Widget as Widget
import Wai.Role.Abstract.Window as Window
import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | roletype : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Structure.Attribute (Widget.Attribute (Window.Attribute a)))


attribute : String -> String -> Wai.Attribute (Attribute {})
attribute name value =
    Wai.Attribute name
        value
        { roletype = Wai.Compatible
        , alert = Wai.Compatible
        , alertdialog = Wai.Compatible
        , application = Wai.Compatible
        , article = Wai.Compatible
        , banner = Wai.Compatible
        , button = Wai.Compatible
        , cell = Wai.Compatible
        , columnheader = Wai.Compatible
        , combobox = Wai.Compatible
        , complementary = Wai.Compatible
        , contentinfo = Wai.Compatible
        , definition = Wai.Compatible
        , directory = Wai.Compatible
        , document = Wai.Compatible
        , feed = Wai.Compatible
        , figure = Wai.Compatible
        , form = Wai.Compatible
        , grid = Wai.Compatible
        , gridcell = Wai.Compatible
        , group = Wai.Compatible
        , heading = Wai.Compatible
        , img = Wai.Compatible
        , link = Wai.Compatible
        , list = Wai.Compatible
        , listbox = Wai.Compatible
        , listitem = Wai.Compatible
        , log = Wai.Compatible
        , main = Wai.Compatible
        , marquee = Wai.Compatible
        , math = Wai.Compatible
        , menu = Wai.Compatible
        , menubar = Wai.Compatible
        , menuitem = Wai.Compatible
        , menuitemcheckbox = Wai.Compatible
        , menuitemradio = Wai.Compatible
        , navigation = Wai.Compatible
        , note = Wai.Compatible
        , presentation = Wai.Compatible
        , progressbar = Wai.Compatible
        , radiogroup = Wai.Compatible
        , region = Wai.Compatible
        , row = Wai.Compatible
        , rowgroup = Wai.Compatible
        , rowheader = Wai.Compatible
        , search = Wai.Compatible
        , separator = Wai.Compatible
        , spinbutton = Wai.Compatible
        , status = Wai.Compatible
        , tab = Wai.Compatible
        , table = Wai.Compatible
        , tablist = Wai.Compatible
        , tabpanel = Wai.Compatible
        , term = Wai.Compatible
        , timer = Wai.Compatible
        , toolbar = Wai.Compatible
        , tooltip = Wai.Compatible
        , tree = Wai.Compatible
        , treegrid = Wai.Compatible
        , treeitem = Wai.Compatible
        , command = Wai.Compatible
        , composite = Wai.Compatible
        , landmark = Wai.Compatible
        , section = Wai.Compatible
        , sectionhead = Wai.Compatible
        , select = Wai.Compatible
        , structure = Wai.Compatible
        , widget = Wai.Compatible
        , window = Wai.Compatible
        }
