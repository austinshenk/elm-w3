module Wai exposing
    ( activeDescendant, atomic, autoComplete, busy, checked, colCount, colIndex, colSpan, controls, current, describedBy, details, disabled, dropEffect, errorMessage, expanded, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, level, live, modal, multiLine, multiSelectable, orientation, owns, placeholder, posInSet, pressed, readOnly, relevant, relevantAll, required, roleDescription, rowCount, rowIndex, rowSpan, selected, setSize, sort, valueMax, valueMin, valueNow, valueText
    , alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog, directory, document, feed, figure, form, grid, gridCell, group, heading, img, link, list, listBox, listItem, log, main_, marquee, math, menu, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree, treeGrid, treeItem
    )

{-| Module that defines all ARIA attributes and roles.


# Attributes

@docs activeDescendant, atomic, autoComplete, busy, checked, colCount, colIndex, colSpan, controls, current, describedBy, details, disabled, dropEffect, errorMessage, expanded, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, level, live, modal, multiLine, multiSelectable, orientation, owns, placeholder, posInSet, pressed, readOnly, relevant, relevantAll, required, roleDescription, rowCount, rowIndex, rowSpan, selected, setSize, sort, valueMax, valueMin, valueNow, valueText


# Roles

@docs alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog, directory, document, feed, figure, form, grid, gridCell, group, heading, img, link, list, listBox, listItem, log, main_, marquee, math, menu, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree, treeGrid, treeItem

-}

import Html
import Wai.Aria.Help as Wai
import Wai.IdReference exposing (IdReference)
import Wai.Token as Token exposing (AutoComplete(..), Current(..), DropEffect(..), HasPopup(..), Invalid(..), Live(..), Orientation(..), Relevant(..), Sort(..))
import Wai.TriState.Help exposing (TriState)


{-| -}
activeDescendant : IdReference -> Wai.Attribute { compatible | activeDescendant : Wai.Supported }
activeDescendant =
    Wai.idReference "activedescendant"


{-| -}
atomic : Bool -> Wai.Attribute { compatible | atomic : Wai.Supported }
atomic =
    Wai.bool "atomic"


{-| -}
autoComplete : AutoComplete -> Wai.Attribute { compatible | autoComplete : Wai.Supported }
autoComplete (AutoComplete value) =
    Wai.token "autocomplete" value


{-| -}
busy : Bool -> Wai.Attribute { compatible | busy : Wai.Supported }
busy =
    Wai.bool "busy"


{-| -}
checked : TriState -> Wai.Attribute { compatible | checked : Wai.Supported }
checked =
    Wai.triState "checked"


{-| -}
colCount : Int -> Wai.Attribute { compatible | colCount : Wai.Supported }
colCount =
    Wai.integer "colcount" -1


{-| -}
colIndex : Int -> Wai.Attribute { compatible | colIndex : Wai.Supported }
colIndex =
    Wai.integer "colindex" 1


{-| -}
colSpan : Int -> Wai.Attribute { compatible | colSpan : Wai.Supported }
colSpan =
    Wai.integer "colspan" 1


{-| -}
controls : List IdReference -> Wai.Attribute { compatible | controls : Wai.Supported }
controls =
    Wai.idReferenceList "controls"


{-| -}
current : Current -> Wai.Attribute { compatible | current : Wai.Supported }
current (Current value) =
    Wai.token "current" value


{-| -}
describedBy : List IdReference -> Wai.Attribute { compatible | describedBy : Wai.Supported }
describedBy =
    Wai.idReferenceList "describedby"


{-| -}
details : IdReference -> Wai.Attribute { compatible | details : Wai.Supported }
details =
    Wai.idReference "details"


{-| -}
disabled : Bool -> Wai.Attribute { compatible | disabled : Wai.Supported }
disabled =
    Wai.bool "disabled"


{-| -}
dropEffect : DropEffect -> Wai.Attribute { compatible | dropEffect : Wai.Supported }
dropEffect (DropEffect value) =
    Wai.token "dropeffect" value


{-| -}
errorMessage : IdReference -> Wai.Attribute { compatible | errorMessage : Wai.Supported }
errorMessage =
    Wai.idReference "errormessage"


{-| -}
expanded : Maybe Bool -> Wai.Attribute { compatible | expanded : Wai.Supported }
expanded =
    Wai.maybeBool "expanded"


{-| -}
flowTo : List IdReference -> Wai.Attribute { compatible | flowTo : Wai.Supported }
flowTo =
    Wai.idReferenceList "flowto"


{-| -}
grabbed : Maybe Bool -> Wai.Attribute { compatible | grabbed : Wai.Supported }
grabbed =
    Wai.maybeBool "grabbed"


{-| -}
hasPopup : HasPopup -> Wai.Attribute { compatible | hasPopup : Wai.Supported }
hasPopup (HasPopup value) =
    Wai.token "haspopup" value


{-| -}
hidden : Maybe Bool -> Wai.Attribute { compatible | hidden : Wai.Supported }
hidden =
    Wai.maybeBool "hidden"


{-| -}
invalid : Invalid -> Wai.Attribute { compatible | invalid : Wai.Supported }
invalid (Invalid value) =
    Wai.token "invalid" value


{-| -}
keyShortcuts : String -> Wai.Attribute { compatible | keyShortcuts : Wai.Supported }
keyShortcuts =
    Wai.string "keyshortcuts"


{-| -}
label : String -> Wai.Attribute { compatible | label : Wai.Supported }
label =
    Wai.string "label"


{-| -}
labelledBy : List IdReference -> Wai.Attribute { compatible | labelledBy : Wai.Supported }
labelledBy =
    Wai.idReferenceList "labelledby"


{-| -}
level : Int -> Wai.Attribute { compatible | level : Wai.Supported }
level =
    Wai.integer "level" 1


{-| -}
live : Live -> Wai.Attribute { compatible | live : Wai.Supported }
live (Live value) =
    Wai.token "live" value


{-| -}
modal : Bool -> Wai.Attribute { compatible | modal : Wai.Supported }
modal =
    Wai.bool "modal"


{-| -}
multiLine : Bool -> Wai.Attribute { compatible | multiLine : Wai.Supported }
multiLine =
    Wai.bool "multiline"


{-| -}
multiSelectable : Bool -> Wai.Attribute { compatible | multiSelectable : Wai.Supported }
multiSelectable =
    Wai.bool "multiselectable"


{-| -}
orientation : Orientation -> Wai.Attribute { compatible | orientation : Wai.Supported }
orientation (Orientation value) =
    Wai.token "orientation" value


{-| -}
owns : List IdReference -> Wai.Attribute { compatible | owns : Wai.Supported }
owns =
    Wai.idReferenceList "owns"


{-| -}
placeholder : String -> Wai.Attribute { compatible | placeholder : Wai.Supported }
placeholder =
    Wai.string "placeholder"


{-| -}
posInSet : Int -> Wai.Attribute { compatible | posInSet : Wai.Supported }
posInSet =
    Wai.integer "posinset" 1


{-| -}
pressed : TriState -> Wai.Attribute { compatible | pressed : Wai.Supported }
pressed =
    Wai.triState "pressed"


{-| -}
readOnly : Bool -> Wai.Attribute { compatible | readOnly : Wai.Supported }
readOnly =
    Wai.bool "readonly"


{-| -}
relevant : List Relevant -> Wai.Attribute { compatible | relevant : Wai.Supported }
relevant value =
    Wai.string "relevant" <| Token.listToString <| List.map relevantToToken value


relevantToToken : Relevant -> Token.Type
relevantToToken (Relevant value) =
    value


{-| -}
relevantAll : Wai.Attribute { compatible | relevant : Wai.Supported }
relevantAll =
    Wai.token "relevant" <| Token.toToken "all"


{-| -}
required : Bool -> Wai.Attribute { compatible | required : Wai.Supported }
required =
    Wai.bool "required"


{-| -}
roleDescription : String -> Wai.Attribute { compatible | roleDescription : Wai.Supported }
roleDescription =
    Wai.string "roledescription"


{-| -}
rowCount : Int -> Wai.Attribute { compatible | rowCount : Wai.Supported }
rowCount =
    Wai.integer "rowcount" -1


{-| -}
rowIndex : Int -> Wai.Attribute { compatible | rowIndex : Wai.Supported }
rowIndex =
    Wai.integer "rowindex" 1


{-| -}
rowSpan : Int -> Wai.Attribute { compatible | rowSpan : Wai.Supported }
rowSpan =
    Wai.integer "rowspan" 0


{-| -}
selected : Maybe Bool -> Wai.Attribute { compatible | selected : Wai.Supported }
selected =
    Wai.maybeBool "selected"


{-| -}
setSize : Int -> Wai.Attribute { compatible | setSize : Wai.Supported }
setSize =
    Wai.integer "setsize" -1


{-| -}
sort : Sort -> Wai.Attribute { compatible | sort : Wai.Supported }
sort (Sort value) =
    Wai.token "sort" value


{-| -}
valueMax : Int -> Wai.Attribute { compatible | valueMax : Wai.Supported }
valueMax =
    Wai.number "valuemax"


{-| -}
valueMin : Int -> Wai.Attribute { compatible | valueMin : Wai.Supported }
valueMin =
    Wai.number "valuemin"


{-| -}
valueNow : Int -> Wai.Attribute { compatible | valueNow : Wai.Supported }
valueNow =
    Wai.number "valuenow"


{-| -}
valueText : String -> Wai.Attribute { compatible | valueText : Wai.Supported }
valueText =
    Wai.string "valuetext"


type alias GlobalAttributes a =
    Wai.Attribute
        { a
            | atomic : Wai.Supported
            , busy : Wai.Supported
            , controls : Wai.Supported
            , current : Wai.Supported
            , describedby : Wai.Supported
            , details : Wai.Supported
            , disabled : Wai.Supported
            , dropEffect : Wai.Supported
            , errorMessage : Wai.Supported
            , flowTo : Wai.Supported
            , grabbed : Wai.Supported
            , hasPopup : Wai.Supported
            , hidden : Wai.Supported
            , invalid : Wai.Supported
            , keyShortcuts : Wai.Supported
            , label : Wai.Supported
            , labelledBy : Wai.Supported
            , live : Wai.Supported
            , owns : Wai.Supported
            , relevant : Wai.Supported
            , roleDescription : Wai.Supported
        }


{-| -}
alert : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
alert =
    Wai.role "alert"


{-| -}
alertDialog : List (GlobalAttributes { expanded : Wai.Supported, modal : Wai.Supported }) -> List (Html.Attribute msg)
alertDialog =
    Wai.role "alertdialog"


{-| -}
application : List (GlobalAttributes { activeDescendant : Wai.Supported }) -> List (Html.Attribute msg)
application =
    Wai.role "application"


{-| -}
article : List (GlobalAttributes { expanded : Wai.Supported, posInSet : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
article =
    Wai.role "article"


{-| -}
banner : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
banner =
    Wai.role "banner"


{-| -}
button : List (GlobalAttributes { expanded : Wai.Supported, pressed : Wai.Supported }) -> List (Html.Attribute msg)
button =
    Wai.role "button"


{-| -}
cell : List (GlobalAttributes { expanded : Wai.Supported, colIndex : Wai.Supported, colSpan : Wai.Supported, rowIndex : Wai.Supported, rowSpan : Wai.Supported }) -> List (Html.Attribute msg)
cell =
    Wai.role "cell"


{-| -}
checkBox : List (GlobalAttributes { checked : Wai.Supported, readOnly : Wai.Supported }) -> List (Html.Attribute msg)
checkBox =
    Wai.role "checkbox"


{-| -}
columnHeader : List (GlobalAttributes { colIndex : Wai.Supported, colSpan : Wai.Supported, expanded : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported, rowIndex : Wai.Supported, rowSpan : Wai.Supported, selected : Wai.Supported }) -> List (Html.Attribute msg)
columnHeader =
    Wai.role "columnheader"


{-| -}
comboBox : List (GlobalAttributes { controls : Wai.Supported, expanded : Wai.Supported, autoComplete : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported, activeDescendant : Wai.Supported, orientation : Wai.Supported }) -> List (Html.Attribute msg)
comboBox =
    Wai.role "combobox"


{-| -}
complementary : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
complementary =
    Wai.role "complementary"


{-| -}
contentInfo : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
contentInfo =
    Wai.role "contentinfo"


{-| -}
definition : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
definition =
    Wai.role "definition"


{-| -}
dialog : List (GlobalAttributes { expanded : Wai.Supported, modal : Wai.Supported }) -> List (Html.Attribute msg)
dialog =
    Wai.role "dialog"


{-| -}
directory : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
directory =
    Wai.role "directory"


{-| -}
document : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
document =
    Wai.role "document"


{-| -}
feed : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
feed =
    Wai.role "feed"


{-| -}
figure : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
figure =
    Wai.role "figure"


{-| -}
form : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
form =
    Wai.role "form"


{-| -}
grid : List (GlobalAttributes { level : Wai.Supported, multiSelectable : Wai.Supported, readOnly : Wai.Supported, activeDescendant : Wai.Supported, colCount : Wai.Supported, expanded : Wai.Supported, rowCount : Wai.Supported }) -> List (Html.Attribute msg)
grid =
    Wai.role "grid"


{-| -}
gridCell : List (GlobalAttributes { colIndex : Wai.Supported, colSpan : Wai.Supported, expanded : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported, rowIndex : Wai.Supported, rowSpan : Wai.Supported, selected : Wai.Supported }) -> List (Html.Attribute msg)
gridCell =
    Wai.role "gridcell"


{-| -}
group : List (GlobalAttributes { activeDescendant : Wai.Supported, expanded : Wai.Supported }) -> List (Html.Attribute msg)
group =
    Wai.role "group"


{-| -}
heading : List (GlobalAttributes { level : Wai.Supported, expanded : Wai.Supported }) -> List (Html.Attribute msg)
heading =
    Wai.role "heading"


{-| -}
img : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
img =
    Wai.role "img"


{-| -}
link : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
link =
    Wai.role "link"


{-| -}
list : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
list =
    Wai.role "list"


{-| -}
listBox : List (GlobalAttributes { multiSelectable : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported, activeDescendant : Wai.Supported, expanded : Wai.Supported, orientation : Wai.Supported }) -> List (Html.Attribute msg)
listBox =
    Wai.role "listbox"


{-| -}
listItem : List (GlobalAttributes { level : Wai.Supported, posInSet : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
listItem =
    Wai.role "listitem"


{-| -}
log : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
log =
    Wai.role "log"


{-| -}
main_ : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
main_ =
    Wai.role "main"


{-| -}
marquee : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
marquee =
    Wai.role "marquee"


{-| -}
math : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
math =
    Wai.role "math"


{-| -}
menu : List (GlobalAttributes { activeDescendant : Wai.Supported, expanded : Wai.Supported, orientation : Wai.Supported }) -> List (Html.Attribute msg)
menu =
    Wai.role "menu"


{-| -}
menuBar : List (GlobalAttributes { activeDescendant : Wai.Supported, expanded : Wai.Supported, orientation : Wai.Supported }) -> List (Html.Attribute msg)
menuBar =
    Wai.role "menubar"


{-| -}
menuItem : List (GlobalAttributes { posInSet : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
menuItem =
    Wai.role "menuitem"


{-| -}
menuItemCheckBox : List (GlobalAttributes { checked : Wai.Supported, posInSet : Wai.Supported, readOnly : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
menuItemCheckBox =
    Wai.role "menuitemcheckbox"


{-| -}
menuItemRadio : List (GlobalAttributes { checked : Wai.Supported, posInSet : Wai.Supported, readOnly : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
menuItemRadio =
    Wai.role "menuitemradio"


{-| -}
navigation : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
navigation =
    Wai.role "navigation"


{-| -}
none : List (GlobalAttributes {}) -> List (Html.Attribute msg)
none =
    Wai.role "none"


{-| -}
note : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
note =
    Wai.role "note"


{-| -}
option : List (GlobalAttributes { selected : Wai.Supported, checked : Wai.Supported, posInSet : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
option =
    Wai.role "option"


{-| -}
presentation : List (GlobalAttributes {}) -> List (Html.Attribute msg)
presentation =
    Wai.role "presentation"


{-| -}
progressBar : List (GlobalAttributes { expanded : Wai.Supported, valueMax : Wai.Supported, valueMin : Wai.Supported, valueNow : Wai.Supported, valueText : Wai.Supported }) -> List (Html.Attribute msg)
progressBar =
    Wai.role "progressbar"


{-| -}
radio : List (GlobalAttributes { checked : Wai.Supported, posInSet : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
radio =
    Wai.role "radio"


{-| -}
radioGroup : List (GlobalAttributes { readOnly : Wai.Supported, required : Wai.Supported, activeDescendant : Wai.Supported, expanded : Wai.Supported, orientation : Wai.Supported }) -> List (Html.Attribute msg)
radioGroup =
    Wai.role "radiogroup"


{-| -}
region : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
region =
    Wai.role "region"


{-| -}
row : List (GlobalAttributes { colIndex : Wai.Supported, level : Wai.Supported, rowIndex : Wai.Supported, selected : Wai.Supported, activeDescendant : Wai.Supported, expanded : Wai.Supported }) -> List (Html.Attribute msg)
row =
    Wai.role "row"


{-| -}
rowGroup : List (GlobalAttributes {}) -> List (Html.Attribute msg)
rowGroup =
    Wai.role "rowgroup"


{-| -}
rowHeader : List (GlobalAttributes { sort : Wai.Supported, colIndex : Wai.Supported, colSpan : Wai.Supported, expanded : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported, rowIndex : Wai.Supported, rowSpan : Wai.Supported, selected : Wai.Supported }) -> List (Html.Attribute msg)
rowHeader =
    Wai.role "rowheader"


{-| -}
scrollBar : List (GlobalAttributes { controls : Wai.Supported, orientation : Wai.Supported, valueMax : Wai.Supported, valueMin : Wai.Supported, valueNow : Wai.Supported, valueText : Wai.Supported }) -> List (Html.Attribute msg)
scrollBar =
    Wai.role "scrollbar"


{-| -}
search : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
search =
    Wai.role "search"


{-| -}
searchBox : List (GlobalAttributes { activeDescendant : Wai.Supported, autoComplete : Wai.Supported, multiLine : Wai.Supported, placeholder : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported }) -> List (Html.Attribute msg)
searchBox =
    Wai.role "searchbox"


{-| -}
separator : List (GlobalAttributes { valueMax : Wai.Supported, valueMin : Wai.Supported, valueNow : Wai.Supported, orientation : Wai.Supported, valueText : Wai.Supported }) -> List (Html.Attribute msg)
separator =
    Wai.role "separator"


{-| -}
slider : List (GlobalAttributes { valueMax : Wai.Supported, valueMin : Wai.Supported, valueNow : Wai.Supported, orientation : Wai.Supported, readOnly : Wai.Supported, valueText : Wai.Supported }) -> List (Html.Attribute msg)
slider =
    Wai.role "slider"


{-| -}
spinButton : List (GlobalAttributes { valueMax : Wai.Supported, valueMin : Wai.Supported, valueNow : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported, activeDescendant : Wai.Supported, valueText : Wai.Supported }) -> List (Html.Attribute msg)
spinButton =
    Wai.role "spinbutton"


{-| -}
status : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
status =
    Wai.role "status"


{-| -}
switch : List (GlobalAttributes { checked : Wai.Supported, readOnly : Wai.Supported }) -> List (Html.Attribute msg)
switch =
    Wai.role "switch"


{-| -}
tab : List (GlobalAttributes { posInSet : Wai.Supported, selected : Wai.Supported, setSize : Wai.Supported, expanded : Wai.Supported }) -> List (Html.Attribute msg)
tab =
    Wai.role "tab"


{-| -}
table : List (GlobalAttributes { colCount : Wai.Supported, rowCount : Wai.Supported, expanded : Wai.Supported }) -> List (Html.Attribute msg)
table =
    Wai.role "table"


{-| -}
tabList : List (GlobalAttributes { level : Wai.Supported, multiSelectable : Wai.Supported, orientation : Wai.Supported, activeDescendant : Wai.Supported }) -> List (Html.Attribute msg)
tabList =
    Wai.role "tablist"


{-| -}
tabPanel : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
tabPanel =
    Wai.role "tabpanel"


{-| -}
term : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
term =
    Wai.role "term"


{-| -}
textBox : List (GlobalAttributes { activeDescendant : Wai.Supported, autoComplete : Wai.Supported, multiLine : Wai.Supported, placeholder : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported }) -> List (Html.Attribute msg)
textBox =
    Wai.role "textbox"


{-| -}
timer : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
timer =
    Wai.role "timer"


{-| -}
toolBar : List (GlobalAttributes { orientation : Wai.Supported, activeDescendant : Wai.Supported, expanded : Wai.Supported }) -> List (Html.Attribute msg)
toolBar =
    Wai.role "toolbar"


{-| -}
toolTip : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
toolTip =
    Wai.role "tooltip"


{-| -}
tree : List (GlobalAttributes { multiSelectable : Wai.Supported, required : Wai.Supported, activeDescendant : Wai.Supported, expanded : Wai.Supported, orientation : Wai.Supported }) -> List (Html.Attribute msg)
tree =
    Wai.role "tree"


{-| -}
treeGrid : List (GlobalAttributes { activeDescendant : Wai.Supported, colCount : Wai.Supported, expanded : Wai.Supported, level : Wai.Supported, multiSelectable : Wai.Supported, orientation : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported, rowCount : Wai.Supported }) -> List (Html.Attribute msg)
treeGrid =
    Wai.role "treegrid"


{-| -}
treeItem : List (GlobalAttributes { checked : Wai.Supported, expanded : Wai.Supported, level : Wai.Supported, posInSet : Wai.Supported, selected : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
treeItem =
    Wai.role "treeitem"


attribute : Wai.Attribute a -> Html.Attribute msg
attribute =
    Wai.toAttribute
