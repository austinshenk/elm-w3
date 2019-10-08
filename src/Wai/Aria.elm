module Wai.Aria exposing (alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog, directory, document, feed, figure, form, grid, gridCell, group, heading, img, link, list, listBox, listItem, log, main_, marquee, math, menu, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree, treeGrid, treeItem)

{-| Module that defines all ARIA roles.


# Roles

@docs alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog, directory, document, feed, figure, form, grid, gridCell, group, heading, img, link, list, listBox, listItem, log, main_, marquee, math, menu, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree, treeGrid, treeItem

-}

import Html
import Wai.Aria.Help as Aria


type alias GlobalAttributes a =
    Aria.Attribute
        { a
            | atomic : Aria.Supported
            , busy : Aria.Supported
            , controls : Aria.Supported
            , current : Aria.Supported
            , describedby : Aria.Supported
            , details : Aria.Supported
            , disabled : Aria.Supported
            , dropEffect : Aria.Supported
            , errorMessage : Aria.Supported
            , flowTo : Aria.Supported
            , grabbed : Aria.Supported
            , hasPopup : Aria.Supported
            , hidden : Aria.Supported
            , invalid : Aria.Supported
            , keyShortcuts : Aria.Supported
            , label : Aria.Supported
            , labelledBy : Aria.Supported
            , live : Aria.Supported
            , owns : Aria.Supported
            , relevant : Aria.Supported
            , roleDescription : Aria.Supported
        }


{-| -}
alert : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
alert =
    Aria.role "alert"


{-| -}
alertDialog : List (GlobalAttributes { expanded : Aria.Supported, modal : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
alertDialog =
    Aria.role "alertdialog"


{-| -}
application : List (GlobalAttributes { activeDescendant : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
application =
    Aria.role "application"


{-| -}
article : List (GlobalAttributes { expanded : Aria.Supported, posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
article =
    Aria.role "article"


{-| -}
banner : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
banner =
    Aria.role "banner"


{-| -}
button : List (GlobalAttributes { expanded : Aria.Supported, pressed : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
button =
    Aria.role "button"


{-| -}
cell : List (GlobalAttributes { expanded : Aria.Supported, colIndex : Aria.Supported, colSpan : Aria.Supported, rowIndex : Aria.Supported, rowSpan : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
cell =
    Aria.role "cell"


{-| -}
checkBox : List (GlobalAttributes { checked : Aria.Supported, readOnly : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
checkBox =
    Aria.role "checkbox"


{-| -}
columnHeader : List (GlobalAttributes { colIndex : Aria.Supported, colSpan : Aria.Supported, expanded : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, rowIndex : Aria.Supported, rowSpan : Aria.Supported, selected : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
columnHeader =
    Aria.role "columnheader"


{-| -}
comboBox : List (GlobalAttributes { controls : Aria.Supported, expanded : Aria.Supported, autoComplete : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, orientation : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
comboBox =
    Aria.role "combobox"


{-| -}
complementary : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
complementary =
    Aria.role "complementary"


{-| -}
contentInfo : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
contentInfo =
    Aria.role "contentinfo"


{-| -}
definition : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
definition =
    Aria.role "definition"


{-| -}
dialog : List (GlobalAttributes { expanded : Aria.Supported, modal : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
dialog =
    Aria.role "dialog"


{-| -}
directory : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
directory =
    Aria.role "directory"


{-| -}
document : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
document =
    Aria.role "document"


{-| -}
feed : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
feed =
    Aria.role "feed"


{-| -}
figure : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
figure =
    Aria.role "figure"


{-| -}
form : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
form =
    Aria.role "form"


{-| -}
grid : List (GlobalAttributes { level : Aria.Supported, multiSelectable : Aria.Supported, readOnly : Aria.Supported, activeDescendant : Aria.Supported, colCount : Aria.Supported, expanded : Aria.Supported, rowCount : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
grid =
    Aria.role "grid"


{-| -}
gridCell : List (GlobalAttributes { colIndex : Aria.Supported, colSpan : Aria.Supported, expanded : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, rowIndex : Aria.Supported, rowSpan : Aria.Supported, selected : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
gridCell =
    Aria.role "gridcell"


{-| -}
group : List (GlobalAttributes { activeDescendant : Aria.Supported, expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
group =
    Aria.role "group"


{-| -}
heading : List (GlobalAttributes { level : Aria.Supported, expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
heading =
    Aria.role "heading"


{-| -}
img : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
img =
    Aria.role "img"


{-| -}
link : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
link =
    Aria.role "link"


{-| -}
list : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
list =
    Aria.role "list"


{-| -}
listBox : List (GlobalAttributes { multiSelectable : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
listBox =
    Aria.role "listbox"


{-| -}
listItem : List (GlobalAttributes { level : Aria.Supported, posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
listItem =
    Aria.role "listitem"


{-| -}
log : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
log =
    Aria.role "log"


{-| -}
main_ : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
main_ =
    Aria.role "main"


{-| -}
marquee : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
marquee =
    Aria.role "marquee"


{-| -}
math : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
math =
    Aria.role "math"


{-| -}
menu : List (GlobalAttributes { activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
menu =
    Aria.role "menu"


{-| -}
menuBar : List (GlobalAttributes { activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
menuBar =
    Aria.role "menubar"


{-| -}
menuItem : List (GlobalAttributes { posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
menuItem =
    Aria.role "menuitem"


{-| -}
menuItemCheckBox : List (GlobalAttributes { checked : Aria.Supported, posInSet : Aria.Supported, readOnly : Aria.Supported, setSize : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
menuItemCheckBox =
    Aria.role "menuitemcheckbox"


{-| -}
menuItemRadio : List (GlobalAttributes { checked : Aria.Supported, posInSet : Aria.Supported, readOnly : Aria.Supported, setSize : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
menuItemRadio =
    Aria.role "menuitemradio"


{-| -}
navigation : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
navigation =
    Aria.role "navigation"


{-| -}
none : List (GlobalAttributes {}) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
none =
    Aria.role "none"


{-| -}
note : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
note =
    Aria.role "note"


{-| -}
option : List (GlobalAttributes { selected : Aria.Supported, checked : Aria.Supported, posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
option =
    Aria.role "option"


{-| -}
presentation : List (GlobalAttributes {}) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
presentation =
    Aria.role "presentation"


{-| -}
progressBar : List (GlobalAttributes { expanded : Aria.Supported, valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, valueText : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
progressBar =
    Aria.role "progressbar"


{-| -}
radio : List (GlobalAttributes { checked : Aria.Supported, posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
radio =
    Aria.role "radio"


{-| -}
radioGroup : List (GlobalAttributes { readOnly : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
radioGroup =
    Aria.role "radiogroup"


{-| -}
region : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
region =
    Aria.role "region"


{-| -}
row : List (GlobalAttributes { colIndex : Aria.Supported, level : Aria.Supported, rowIndex : Aria.Supported, selected : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
row =
    Aria.role "row"


{-| -}
rowGroup : List (GlobalAttributes {}) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
rowGroup =
    Aria.role "rowgroup"


{-| -}
rowHeader : List (GlobalAttributes { sort : Aria.Supported, colIndex : Aria.Supported, colSpan : Aria.Supported, expanded : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, rowIndex : Aria.Supported, rowSpan : Aria.Supported, selected : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
rowHeader =
    Aria.role "rowheader"


{-| -}
scrollBar : List (GlobalAttributes { controls : Aria.Supported, orientation : Aria.Supported, valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, valueText : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
scrollBar =
    Aria.role "scrollbar"


{-| -}
search : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
search =
    Aria.role "search"


{-| -}
searchBox : List (GlobalAttributes { activeDescendant : Aria.Supported, autoComplete : Aria.Supported, multiLine : Aria.Supported, placeholder : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
searchBox =
    Aria.role "searchbox"


{-| -}
separator : List (GlobalAttributes { valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, orientation : Aria.Supported, valueText : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
separator =
    Aria.role "separator"


{-| -}
slider : List (GlobalAttributes { valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, orientation : Aria.Supported, readOnly : Aria.Supported, valueText : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
slider =
    Aria.role "slider"


{-| -}
spinButton : List (GlobalAttributes { valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, valueText : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
spinButton =
    Aria.role "spinbutton"


{-| -}
status : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
status =
    Aria.role "status"


{-| -}
switch : List (GlobalAttributes { checked : Aria.Supported, readOnly : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
switch =
    Aria.role "switch"


{-| -}
tab : List (GlobalAttributes { posInSet : Aria.Supported, selected : Aria.Supported, setSize : Aria.Supported, expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
tab =
    Aria.role "tab"


{-| -}
table : List (GlobalAttributes { colCount : Aria.Supported, rowCount : Aria.Supported, expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
table =
    Aria.role "table"


{-| -}
tabList : List (GlobalAttributes { level : Aria.Supported, multiSelectable : Aria.Supported, orientation : Aria.Supported, activeDescendant : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
tabList =
    Aria.role "tablist"


{-| -}
tabPanel : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
tabPanel =
    Aria.role "tabpanel"


{-| -}
term : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
term =
    Aria.role "term"


{-| -}
textBox : List (GlobalAttributes { activeDescendant : Aria.Supported, autoComplete : Aria.Supported, multiLine : Aria.Supported, placeholder : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
textBox =
    Aria.role "textbox"


{-| -}
timer : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
timer =
    Aria.role "timer"


{-| -}
toolBar : List (GlobalAttributes { orientation : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
toolBar =
    Aria.role "toolbar"


{-| -}
toolTip : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
toolTip =
    Aria.role "tooltip"


{-| -}
tree : List (GlobalAttributes { multiSelectable : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
tree =
    Aria.role "tree"


{-| -}
treeGrid : List (GlobalAttributes { activeDescendant : Aria.Supported, colCount : Aria.Supported, expanded : Aria.Supported, level : Aria.Supported, multiSelectable : Aria.Supported, orientation : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, rowCount : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
treeGrid =
    Aria.role "treegrid"


{-| -}
treeItem : List (GlobalAttributes { checked : Aria.Supported, expanded : Aria.Supported, level : Aria.Supported, posInSet : Aria.Supported, selected : Aria.Supported, setSize : Aria.Supported }) -> List (Html.Attribute msg) -> List (Html.Attribute msg)
treeItem =
    Aria.role "treeitem"
