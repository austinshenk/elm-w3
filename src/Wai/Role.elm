module Wai.Role exposing (activeDescendant, application, atomic, attribute, busy, controls, current, describedBy, details, disabled, dropEffect, errorMessage, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, live, owns, relevant, relevantAll, relevantToToken, roleDescription, separator)

import Html
import Wai.IdReference exposing (IdReference)
import Wai.Role.Abstract.RoleType as RoleType
import Wai.Role.Abstract.Select as Select
import Wai.Role.Alert as Alert
import Wai.Role.AlertDialog as AlertDialog
import Wai.Role.Application as Application
import Wai.Role.Article as Article
import Wai.Role.Cell as Cell
import Wai.Role.ColumnHeader as ColumnHeader
import Wai.Role.ComboBox as ComboBox
import Wai.Role.Definition as Definition
import Wai.Role.Document as Document
import Wai.Role.GridCell as GridCell
import Wai.Role.Group as Group
import Wai.Role.Help as Wai
import Wai.Role.ListBox as ListBox
import Wai.Role.Presentation as Presentation
import Wai.Role.RadioGroup as RadioGroup
import Wai.Role.Row as Row
import Wai.Role.RowGroup as RowGroup
import Wai.Role.RowHeader as RowHeader
import Wai.Role.Separator as Separator
import Wai.Role.Toolbar as Toolbar
import Wai.Role.Tree as Tree
import Wai.Token as Token exposing (AutoComplete(..), Current(..), DropEffect(..), HasPopup(..), Invalid(..), Live(..), Orientation(..), Relevant(..), Sort(..))


activeDescendant : IdReference -> Wai.Attribute (Application.Attribute (Group.Attribute {}))
activeDescendant =
    Wai.idReference activeDescendantAttribute "activedescendant"


activeDescendantAttribute : String -> String -> Wai.Attribute (Application.Attribute (Group.Attribute {}))
activeDescendantAttribute name value =
    Wai.Attribute name
        value
        { application = Wai.Compatible
        , group = Wai.Compatible
        , row = Wai.Compatible
        , select = Wai.Compatible
        , combobox = Wai.Compatible
        , listbox = Wai.Compatible
        , menu = Wai.Compatible
        , menubar = Wai.Compatible
        , radiogroup = Wai.Compatible
        , tree = Wai.Compatible
        , treegrid = Wai.Compatible
        , toolbar = Wai.Compatible
        }


atomic : Bool -> Wai.Attribute (RoleType.Attribute {})
atomic =
    Wai.bool RoleType.attribute "atomic"


autoComplete : AutoComplete -> Wai.Attribute (ComboBox.Attribute {})
autoComplete (AutoComplete value) =
    Wai.token ComboBox.attribute "autocomplete" value


busy : Bool -> Wai.Attribute (RoleType.Attribute {})
busy =
    Wai.bool RoleType.attribute "busy"


colIndex : Int -> Wai.Attribute (Cell.Attribute (Row.Attribute {}))
colIndex =
    Wai.integer colIndexAttribute "colindex" 1


colIndexAttribute : String -> String -> Wai.Attribute (Cell.Attribute (Row.Attribute {}))
colIndexAttribute name value =
    Wai.Attribute name
        value
        { cell = Wai.Compatible
        , columnheader = Wai.Compatible
        , gridcell = Wai.Compatible
        , rowheader = Wai.Compatible
        , row = Wai.Compatible
        }


{-| -}
colSpan : Int -> Wai.Attribute (Cell.Attribute {})
colSpan =
    Wai.integer Cell.attribute "colspan" 1


controls : List IdReference -> Wai.Attribute (RoleType.Attribute {})
controls =
    Wai.idReferenceList RoleType.attribute "controls"


current : Current -> Wai.Attribute (RoleType.Attribute {})
current (Current value) =
    Wai.token RoleType.attribute "current" value


describedBy : List IdReference -> Wai.Attribute (RoleType.Attribute {})
describedBy =
    Wai.idReferenceList RoleType.attribute "describedby"


details : IdReference -> Wai.Attribute (RoleType.Attribute {})
details =
    Wai.idReference RoleType.attribute "details"


disabled : Bool -> Wai.Attribute (RoleType.Attribute {})
disabled =
    Wai.bool RoleType.attribute "disabled"


dropEffect : DropEffect -> Wai.Attribute (RoleType.Attribute {})
dropEffect (DropEffect value) =
    Wai.token RoleType.attribute "dropeffect" value


errorMessage : IdReference -> Wai.Attribute (RoleType.Attribute {})
errorMessage =
    Wai.idReference RoleType.attribute "errormessage"


expanded : Maybe Bool -> Wai.Attribute (RoleType.Attribute {})
expanded =
    Wai.maybeBool RoleType.attribute "expanded"


flowTo : List IdReference -> Wai.Attribute (RoleType.Attribute {})
flowTo =
    Wai.idReferenceList RoleType.attribute "flowto"


grabbed : Maybe Bool -> Wai.Attribute (RoleType.Attribute {})
grabbed =
    Wai.maybeBool RoleType.attribute "grabbed"


hasPopup : HasPopup -> Wai.Attribute (RoleType.Attribute {})
hasPopup (HasPopup value) =
    Wai.token RoleType.attribute "haspopup" value


hidden : Maybe Bool -> Wai.Attribute (RoleType.Attribute {})
hidden =
    Wai.maybeBool RoleType.attribute "hidden"


invalid : Invalid -> Wai.Attribute (RoleType.Attribute {})
invalid (Invalid value) =
    Wai.token RoleType.attribute "invalid" value


keyShortcuts : String -> Wai.Attribute (RoleType.Attribute {})
keyShortcuts =
    Wai.string RoleType.attribute "keyshortcuts"


label : String -> Wai.Attribute (RoleType.Attribute {})
label =
    Wai.string RoleType.attribute "label"


labelledBy : List IdReference -> Wai.Attribute (RoleType.Attribute {})
labelledBy =
    Wai.idReferenceList RoleType.attribute "labelledby"


live : Live -> Wai.Attribute (RoleType.Attribute {})
live (Live value) =
    Wai.token RoleType.attribute "live" value


multiSelectable : Bool -> Wai.Attribute (ListBox.Attribute (Tree.Attribute {}))
multiSelectable =
    Wai.bool multiSelectableAttribute "multiselectable"


multiSelectableAttribute : String -> String -> Wai.Attribute (ListBox.Attribute (Tree.Attribute {}))
multiSelectableAttribute name value =
    Wai.Attribute name
        value
        { listbox = Wai.Compatible
        , tree = Wai.Compatible
        , treegrid = Wai.Compatible
        }


orientation : Orientation -> Wai.Attribute (Select.Attribute (Toolbar.Attribute {}))
orientation (Orientation value) =
    Wai.token orientationAttribute "orientation" value


orientationAttribute : String -> String -> Wai.Attribute (Select.Attribute (Toolbar.Attribute {}))
orientationAttribute name value =
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
        , toolbar = Wai.Compatible
        }


owns : List IdReference -> Wai.Attribute (RoleType.Attribute {})
owns =
    Wai.idReferenceList RoleType.attribute "owns"


posInSet : Int -> Wai.Attribute (Article.Attribute {})
posInSet =
    Wai.integer Article.attribute "posinset" 1


readOnly : Bool -> Wai.Attribute (GridCell.Attribute (ComboBox.Attribute (ListBox.Attribute (RadioGroup.Attribute {}))))
readOnly =
    Wai.bool readOnlyAttribute "readonly"


readOnlyAttribute : String -> String -> Wai.Attribute (GridCell.Attribute (ComboBox.Attribute (ListBox.Attribute (RadioGroup.Attribute {}))))
readOnlyAttribute name value =
    Wai.Attribute name
        value
        { combobox = Wai.Compatible
        , listbox = Wai.Compatible
        , gridcell = Wai.Compatible
        , columnheader = Wai.Compatible
        , rowheader = Wai.Compatible
        , radiogroup = Wai.Compatible
        }


relevant : List Relevant -> Wai.Attribute (RoleType.Attribute {})
relevant value =
    Wai.string RoleType.attribute "relevant" <| Token.listToString <| List.map relevantToToken value


relevantToToken : Relevant -> Token.Type
relevantToToken (Relevant value) =
    value


relevantAll : Wai.Attribute (RoleType.Attribute {})
relevantAll =
    Wai.token RoleType.attribute "relevant" <| Token.toToken "all"


required : Bool -> Wai.Attribute (GridCell.Attribute (ComboBox.Attribute (ListBox.Attribute (RadioGroup.Attribute (Tree.Attribute {})))))
required =
    Wai.bool requiredAttribute "required"


requiredAttribute : String -> String -> Wai.Attribute (GridCell.Attribute (ComboBox.Attribute (ListBox.Attribute (RadioGroup.Attribute (Tree.Attribute {})))))
requiredAttribute name value =
    Wai.Attribute name
        value
        { combobox = Wai.Compatible
        , listbox = Wai.Compatible
        , gridcell = Wai.Compatible
        , columnheader = Wai.Compatible
        , rowheader = Wai.Compatible
        , radiogroup = Wai.Compatible
        , tree = Wai.Compatible
        , treegrid = Wai.Compatible
        }


roleDescription : String -> Wai.Attribute (RoleType.Attribute {})
roleDescription =
    Wai.string RoleType.attribute "roledescription"


rowIndex : Int -> Wai.Attribute (Cell.Attribute {})
rowIndex =
    Wai.integer Cell.attribute "rowindex" 1


{-| -}
rowSpan : Int -> Wai.Attribute (Cell.Attribute {})
rowSpan =
    Wai.integer Cell.attribute "rowspan" 0


selected : Maybe Bool -> Wai.Attribute (GridCell.Attribute {})
selected =
    Wai.maybeBool GridCell.attribute "selected"


setSize : Int -> Wai.Attribute (Article.Attribute {})
setSize =
    Wai.integer Article.attribute "setsize" -1


sort : Sort -> Wai.Attribute (ColumnHeader.Attribute (RowHeader.Attribute {}))
sort (Sort value) =
    Wai.token sortAttribute "sort" value


sortAttribute : String -> String -> Wai.Attribute (ColumnHeader.Attribute (RowHeader.Attribute {}))
sortAttribute name value =
    Wai.Attribute name
        value
        { columnheader = Wai.Compatible
        , rowheader = Wai.Compatible
        }


alert : List (Wai.Attribute (Alert.Attribute a)) -> List (Html.Attribute msg)
alert =
    Wai.role "alert"


alertdialog : List (Wai.Attribute (AlertDialog.Attribute a)) -> List (Html.Attribute msg)
alertdialog =
    Wai.role "alertdialog"


application : List (Wai.Attribute (Application.Attribute a)) -> List (Html.Attribute msg)
application =
    Wai.role "application"


article : List (Wai.Attribute (Article.Attribute a)) -> List (Html.Attribute msg)
article =
    Wai.role "article"


cell : List (Wai.Attribute (Cell.RoleAttribute a)) -> List (Html.Attribute msg)
cell =
    Wai.role "cell"


columnheader : List (Wai.Attribute (ColumnHeader.RoleAttribute a)) -> List (Html.Attribute msg)
columnheader =
    Wai.role "columnheader"


definition : List (Wai.Attribute (Definition.Attribute a)) -> List (Html.Attribute msg)
definition =
    Wai.role "definition"


document : List (Wai.Attribute (Document.Attribute a)) -> List (Html.Attribute msg)
document =
    Wai.role "document"


gridcell : List (Wai.Attribute (GridCell.RoleAttribute a)) -> List (Html.Attribute msg)
gridcell =
    Wai.role "gridcell"


presentation : List (Wai.Attribute (Presentation.Attribute a)) -> List (Html.Attribute msg)
presentation =
    Wai.role "presentation"


rowgroup : List (Wai.Attribute (RowGroup.Attribute a)) -> List (Html.Attribute msg)
rowgroup =
    Wai.role "rowgroup"


rowheader : List (Wai.Attribute (RowHeader.RoleAttribute a)) -> List (Html.Attribute msg)
rowheader =
    Wai.role "rowheader"


separator : List (Wai.Attribute (Separator.Attribute a)) -> List (Html.Attribute msg)
separator =
    Wai.role "separator"


attribute : Wai.Attribute a -> Html.Attribute msg
attribute =
    Wai.toAttribute
