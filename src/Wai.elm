module Wai exposing
    ( alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog_, directory, document, feed, figure, form, grid_, gridCell, group, heading, img, link_, list_, listBox, listItem, log, main_, marquee, math, menu_, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none_, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree_, treeGrid, treeItem
    , activeDescendant, atomic, autoComplete, busy, checked, colCount, colIndex, colSpan, controls, current, describedBy, details, disabled, dropEffect, errorMessage, expanded, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, level, live, modal, multiLine, multiSelectable, orientation, owns, placeholder, posInSet, pressed, readOnly, relevant, relevantAll, required, roleDescription, rowCount, rowIndex, rowSpan, selected, setSize, sort, valueMax, valueMin, valueNow, valueText
    )

{-| Module that defines all ARIA attributes and roles.


# Roles

@docs alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog_, directory, document, feed, figure, form, grid_, gridCell, group, heading, img, link_, list_, listBox, listItem, log, main_, marquee, math, menu_, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none_, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree_, treeGrid, treeItem


# Attributes

@docs activeDescendant, atomic, autoComplete, busy, checked, colCount, colIndex, colSpan, controls, current, describedBy, details, disabled, dropEffect, errorMessage, expanded, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, level, live, modal, multiLine, multiSelectable, orientation, owns, placeholder, posInSet, pressed, readOnly, relevant, relevantAll, required, roleDescription, rowCount, rowIndex, rowSpan, selected, setSize, sort, valueMax, valueMin, valueNow, valueText

-}

import Html
import Wai.Help as Wai


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
dialog_ : List (GlobalAttributes { expanded : Wai.Supported, modal : Wai.Supported }) -> List (Html.Attribute msg)
dialog_ =
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
grid_ : List (GlobalAttributes { level : Wai.Supported, multiSelectable : Wai.Supported, readOnly : Wai.Supported, activeDescendant : Wai.Supported, colCount : Wai.Supported, expanded : Wai.Supported, rowCount : Wai.Supported }) -> List (Html.Attribute msg)
grid_ =
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
link_ : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
link_ =
    Wai.role "link"


{-| -}
list_ : List (GlobalAttributes { expanded : Wai.Supported }) -> List (Html.Attribute msg)
list_ =
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
menu_ : List (GlobalAttributes { activeDescendant : Wai.Supported, expanded : Wai.Supported, orientation : Wai.Supported }) -> List (Html.Attribute msg)
menu_ =
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
none_ : List (GlobalAttributes {}) -> List (Html.Attribute msg)
none_ =
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
tree_ : List (GlobalAttributes { multiSelectable : Wai.Supported, required : Wai.Supported, activeDescendant : Wai.Supported, expanded : Wai.Supported, orientation : Wai.Supported }) -> List (Html.Attribute msg)
tree_ =
    Wai.role "tree"


{-| -}
treeGrid : List (GlobalAttributes { activeDescendant : Wai.Supported, colCount : Wai.Supported, expanded : Wai.Supported, level : Wai.Supported, multiSelectable : Wai.Supported, orientation : Wai.Supported, readOnly : Wai.Supported, required : Wai.Supported, rowCount : Wai.Supported }) -> List (Html.Attribute msg)
treeGrid =
    Wai.role "treegrid"


{-| -}
treeItem : List (GlobalAttributes { checked : Wai.Supported, expanded : Wai.Supported, level : Wai.Supported, posInSet : Wai.Supported, selected : Wai.Supported, setSize : Wai.Supported }) -> List (Html.Attribute msg)
treeItem =
    Wai.role "treeitem"


{-| -}
activeDescendant : Wai.IdReference -> Wai.Attribute { compatible | activeDescendant : Wai.Supported }
activeDescendant =
    Wai.idReference "activedescendant"


{-| -}
atomic : Bool -> Wai.Attribute { compatible | atomic : Wai.Supported }
atomic =
    Wai.bool "atomic"


{-| -}
autoComplete : Wai.Value { inline : Wai.SupportedValue, list : Wai.SupportedValue, both : Wai.SupportedValue, none : Wai.SupportedValue } -> Wai.Attribute { compatible | autoComplete : Wai.Supported }
autoComplete =
    Wai.value "autocomplete"


{-| -}
busy : Bool -> Wai.Attribute { compatible | busy : Wai.Supported }
busy =
    Wai.bool "busy"


{-| -}
checked : Wai.TriState -> Wai.Attribute { compatible | checked : Wai.Supported }
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
controls : List Wai.IdReference -> Wai.Attribute { compatible | controls : Wai.Supported }
controls =
    Wai.idReferenceList "controls"


{-| -}
current : Wai.Value { page : Wai.SupportedValue, step : Wai.SupportedValue, location : Wai.SupportedValue, date : Wai.SupportedValue, time : Wai.SupportedValue, true : Wai.SupportedValue, false : Wai.SupportedValue } -> Wai.Attribute { compatible | current : Wai.Supported }
current =
    Wai.value "current"


{-| -}
describedBy : List Wai.IdReference -> Wai.Attribute { compatible | describedBy : Wai.Supported }
describedBy =
    Wai.idReferenceList "describedby"


{-| -}
details : Wai.IdReference -> Wai.Attribute { compatible | details : Wai.Supported }
details =
    Wai.idReference "details"


{-| -}
disabled : Bool -> Wai.Attribute { compatible | disabled : Wai.Supported }
disabled =
    Wai.bool "disabled"


{-| -}
dropEffect : Wai.Value { copy : Wai.SupportedValue, execute : Wai.SupportedValue, link : Wai.SupportedValue, move : Wai.SupportedValue, none : Wai.SupportedValue, popup : Wai.SupportedValue } -> Wai.Attribute { compatible | dropEffect : Wai.Supported }
dropEffect =
    Wai.value "dropeffect"


{-| -}
errorMessage : Wai.IdReference -> Wai.Attribute { compatible | errorMessage : Wai.Supported }
errorMessage =
    Wai.idReference "errormessage"


{-| -}
expanded : Maybe Bool -> Wai.Attribute { compatible | expanded : Wai.Supported }
expanded =
    Wai.maybeBool "expanded"


{-| -}
flowTo : List Wai.IdReference -> Wai.Attribute { compatible | flowTo : Wai.Supported }
flowTo =
    Wai.idReferenceList "flowto"


{-| -}
grabbed : Maybe Bool -> Wai.Attribute { compatible | grabbed : Wai.Supported }
grabbed =
    Wai.maybeBool "grabbed"


{-| -}
hasPopup : Wai.Value { menu : Wai.SupportedValue, listbox : Wai.SupportedValue, tree : Wai.SupportedValue, grid : Wai.SupportedValue, dialog : Wai.SupportedValue, true : Wai.SupportedValue, false : Wai.SupportedValue } -> Wai.Attribute { compatible | hasPopup : Wai.Supported }
hasPopup =
    Wai.value "haspopup"


{-| -}
hidden : Maybe Bool -> Wai.Attribute { compatible | hidden : Wai.Supported }
hidden =
    Wai.maybeBool "hidden"


{-| -}
invalid : Wai.Value { grammar : Wai.SupportedValue, spelling : Wai.SupportedValue, true : Wai.SupportedValue, false : Wai.SupportedValue } -> Wai.Attribute { compatible | invalid : Wai.Supported }
invalid =
    Wai.value "invalid"


{-| -}
keyShortcuts : String -> Wai.Attribute { compatible | keyShortcuts : Wai.Supported }
keyShortcuts =
    Wai.string "keyshortcuts"


{-| -}
label : String -> Wai.Attribute { compatible | label : Wai.Supported }
label =
    Wai.string "label"


{-| -}
labelledBy : List Wai.IdReference -> Wai.Attribute { compatible | labelledBy : Wai.Supported }
labelledBy =
    Wai.idReferenceList "labelledby"


{-| -}
level : Int -> Wai.Attribute { compatible | level : Wai.Supported }
level =
    Wai.integer "level" 1


{-| -}
live : Wai.Value { assertive : Wai.SupportedValue, polite : Wai.SupportedValue, off : Wai.SupportedValue } -> Wai.Attribute { compatible | live : Wai.Supported }
live =
    Wai.value "live"


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
orientation : Wai.Value { horizontal : Wai.SupportedValue, vertical : Wai.SupportedValue, undefined : Wai.SupportedValue } -> Wai.Attribute { compatible | orientation : Wai.Supported }
orientation =
    Wai.value "orientation"


{-| -}
owns : List Wai.IdReference -> Wai.Attribute { compatible | owns : Wai.Supported }
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
pressed : Wai.TriState -> Wai.Attribute { compatible | pressed : Wai.Supported }
pressed =
    Wai.triState "pressed"


{-| -}
readOnly : Bool -> Wai.Attribute { compatible | readOnly : Wai.Supported }
readOnly =
    Wai.bool "readonly"


{-| -}
relevant : List (Wai.Value { additions : Wai.SupportedValue, removals : Wai.SupportedValue, text : Wai.SupportedValue }) -> Wai.Attribute { compatible | relevant : Wai.Supported }
relevant value =
    Wai.string "relevant" <| String.join "," (List.map Wai.valueToString value)


{-| -}
relevantAll : Wai.Attribute { compatible | relevant : Wai.Supported }
relevantAll =
    Wai.value "relevant" <| Wai.Value "all"


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
sort : Wai.Value { ascending : Wai.SupportedValue, descending : Wai.SupportedValue, none : Wai.SupportedValue, other : Wai.SupportedValue } -> Wai.Attribute { compatible | sort : Wai.Supported }
sort =
    Wai.value "sort"


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


{-| -}
additions : Wai.Value { compatible | additions : Wai.SupportedValue }
additions =
    Wai.Value "additions"


{-| -}
ascending : Wai.Value { compatible | ascending : Wai.SupportedValue }
ascending =
    Wai.Value "ascending"


{-| -}
assertive : Wai.Value { compatible | assertive : Wai.SupportedValue }
assertive =
    Wai.Value "assertive"


{-| -}
both : Wai.Value { compatible | both : Wai.SupportedValue }
both =
    Wai.Value "both"


{-| -}
copy : Wai.Value { compatible | copy : Wai.SupportedValue }
copy =
    Wai.Value "copy"


{-| -}
date : Wai.Value { compatible | date : Wai.SupportedValue }
date =
    Wai.Value "date"


{-| -}
descending : Wai.Value { compatible | descending : Wai.SupportedValue }
descending =
    Wai.Value "descending"


{-| -}
dialog : Wai.Value { compatible | dialog : Wai.SupportedValue }
dialog =
    Wai.Value "dialog"


{-| -}
execute : Wai.Value { compatible | execute : Wai.SupportedValue }
execute =
    Wai.Value "execute"


{-| -}
false : Wai.Value { compatible | false : Wai.SupportedValue }
false =
    Wai.Value "false"


{-| -}
grammar : Wai.Value { compatible | grammar : Wai.SupportedValue }
grammar =
    Wai.Value "grammar"


{-| -}
grid : Wai.Value { compatible | grid : Wai.SupportedValue }
grid =
    Wai.Value "grid"


{-| -}
horizontal : Wai.Value { compatible | horizontal : Wai.SupportedValue }
horizontal =
    Wai.Value "horizontal"


{-| -}
inline : Wai.Value { compatible | inline : Wai.SupportedValue }
inline =
    Wai.Value "inline"


{-| -}
link : Wai.Value { compatible | link : Wai.SupportedValue }
link =
    Wai.Value "link"


{-| -}
list : Wai.Value { compatible | list : Wai.SupportedValue }
list =
    Wai.Value "list"


{-| -}
listbox : Wai.Value { compatible | listbox : Wai.SupportedValue }
listbox =
    Wai.Value "listbox"


{-| -}
location : Wai.Value { compatible | location : Wai.SupportedValue }
location =
    Wai.Value "location"


{-| -}
menu : Wai.Value { compatible | menu : Wai.SupportedValue }
menu =
    Wai.Value "menu"


{-| -}
move : Wai.Value { compatible | move : Wai.SupportedValue }
move =
    Wai.Value "move"


{-| -}
none : Wai.Value { compatible | none : Wai.SupportedValue }
none =
    Wai.Value "none"


{-| -}
off : Wai.Value { compatible | none : Wai.SupportedValue }
off =
    Wai.Value "off"


{-| -}
other : Wai.Value { compatible | other : Wai.SupportedValue }
other =
    Wai.Value "other"


{-| -}
page : Wai.Value { compatible | page : Wai.SupportedValue }
page =
    Wai.Value "page"


{-| -}
polite : Wai.Value { compatible | polite : Wai.SupportedValue }
polite =
    Wai.Value "polite"


{-| -}
popup : Wai.Value { compatible | popup : Wai.SupportedValue }
popup =
    Wai.Value "popup"


{-| -}
removals : Wai.Value { compatible | removals : Wai.SupportedValue }
removals =
    Wai.Value "removals"


{-| -}
spelling : Wai.Value { compatible | spelling : Wai.SupportedValue }
spelling =
    Wai.Value "spelling"


{-| -}
step : Wai.Value { compatible | step : Wai.SupportedValue }
step =
    Wai.Value "step"


{-| -}
text : Wai.Value { compatible | step : Wai.SupportedValue }
text =
    Wai.Value "text"


{-| -}
time : Wai.Value { compatible | time : Wai.SupportedValue }
time =
    Wai.Value "time"


{-| -}
tree : Wai.Value { compatible | tree : Wai.SupportedValue }
tree =
    Wai.Value "tree"


{-| -}
true : Wai.Value { compatible | true : Wai.SupportedValue }
true =
    Wai.Value "true"


{-| -}
undefined : Wai.Value { compatible | undefined : Wai.SupportedValue }
undefined =
    Wai.Value "undefined"


{-| -}
vertical : Wai.Value { compatible | vertical : Wai.SupportedValue }
vertical =
    Wai.Value "vertical"


{-| Escape Hatch
-}
attribute : Wai.Attribute a -> Html.Attribute msg
attribute =
    Wai.toAttribute
