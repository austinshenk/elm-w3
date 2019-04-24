module Wai.Aria exposing
    ( activeDescendant, atomic, autoComplete, busy, checked, colCount, colIndex, colSpan, controls, current, describedBy, details, disabled, dropEffect, errorMessage, expanded, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, level, live, modal, multiLine, multiSelectable, orientation, owns, placeholder, posInSet, pressed, readOnly, relevant, relevantAll, required, roleDescription, rowCount, rowIndex, rowSpan, selected, setSize, sort, valueMax, valueMin, valueNow, valueText
    , alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog, directory, document, feed, figure, form, grid, gridCell, group, heading, img, link, list, listBox, listItem, log, main_, marquee, math, menu, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree, treeGrid, treeItem
    )

{-| Module that defines all ARIA attributes and roles.


# Attributes

@docs activeDescendant, atomic, autoComplete, busy, checked, colCount, colIndex, colSpan, controls, current, describedBy, details, disabled, dropEffect, errorMessage, expanded, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, level, live, modal, multiLine, multiSelectable, orientation, owns, placeholder, posInSet, pressed, readOnly, relevant, relevantAll, required, roleDescription, rowCount, rowIndex, rowSpan, selected, setSize, sort, valueMax, valueMin, valueNow, valueText


# Roles

@docs alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog, directory, document, feed, figure, form, grid, gridCell, group, heading, img, link, list, listBox, listItem, log, main_, marquee, math, menu, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree, treeGrid, treeItem

-}

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)
import Wai.Aria.Help as Aria
import Wai.IdReference exposing (IdReference)
import Wai.Token as Token exposing (AutoComplete(..), Current(..), DropEffect(..), HasPopup(..), Invalid(..), Live(..), Orientation(..), Relevant(..), Sort(..), toToken)
import Wai.TriState.Help exposing (TriState(..))


{-| -}
activeDescendant : IdReference -> Attribute msg
activeDescendant =
    Aria.withIdReference "aria-activedescendant"


{-| -}
atomic : Bool -> Attribute msg
atomic =
    Aria.withBool "aria-atomic"


{-| -}
autoComplete : AutoComplete -> Attribute msg
autoComplete (AutoComplete value) =
    Aria.withToken "aria-autocomplete" value


{-| -}
busy : Bool -> Attribute msg
busy =
    Aria.withBool "aria-busy"


{-| -}
checked : TriState -> Attribute msg
checked =
    Aria.withTriState "aria-checked"


{-| -}
colCount : Int -> Attribute msg
colCount =
    Aria.withInteger "aria-colcount" -1


{-| -}
colIndex : Int -> Attribute msg
colIndex =
    Aria.withInteger "aria-colindex" 1


{-| -}
colSpan : Int -> Attribute msg
colSpan =
    Aria.withInteger "aria-colspan" 1


{-| -}
controls : List IdReference -> Attribute msg
controls =
    Aria.withIdReferenceList "aria-controls"


{-| -}
current : Current -> Attribute msg
current (Current value) =
    Aria.withToken "aria-current" value


{-| -}
describedBy : List IdReference -> Attribute msg
describedBy =
    Aria.withIdReferenceList "aria-describedby"


{-| -}
details : IdReference -> Attribute msg
details =
    Aria.withIdReference "aria-details"


{-| -}
disabled : Bool -> Attribute msg
disabled =
    Aria.withBool "aria-disabled"


{-| -}
dropEffect : DropEffect -> Attribute msg
dropEffect (DropEffect value) =
    Aria.withToken "aria-dropeffect" value


{-| -}
errorMessage : IdReference -> Attribute msg
errorMessage =
    Aria.withIdReference "aria-errormessage"


{-| -}
expanded : Maybe Bool -> Attribute msg
expanded =
    Aria.withMaybeBool "aria-expanded"


{-| -}
flowTo : List IdReference -> Attribute msg
flowTo =
    Aria.withIdReferenceList "aria-flowto"


{-| -}
grabbed : Maybe Bool -> Attribute msg
grabbed =
    Aria.withMaybeBool "aria-grabbed"


{-| -}
hasPopup : HasPopup -> Attribute msg
hasPopup (HasPopup value) =
    Aria.withToken "aria-haspopup" value


{-| -}
hidden : Maybe Bool -> Attribute msg
hidden =
    Aria.withMaybeBool "aria-hidden"


{-| -}
invalid : Invalid -> Attribute msg
invalid (Invalid value) =
    Aria.withToken "aria-invalid" value


{-| -}
keyShortcuts : String -> Attribute msg
keyShortcuts =
    attribute "aria-keyshortcuts"


{-| -}
label : String -> Attribute msg
label =
    Aria.withString "aria-label"


{-| -}
labelledBy : List IdReference -> Attribute msg
labelledBy =
    Aria.withIdReferenceList "aria-labelledby"


{-| -}
level : Int -> Attribute msg
level =
    Aria.withInteger "aria-level" 1


{-| -}
live : Live -> Attribute msg
live (Live value) =
    Aria.withToken "aria-live" value


{-| -}
modal : Bool -> Attribute msg
modal =
    Aria.withBool "aria-modal"


{-| -}
multiLine : Bool -> Attribute msg
multiLine =
    Aria.withBool "aria-multiline"


{-| -}
multiSelectable : Bool -> Attribute msg
multiSelectable =
    Aria.withBool "aria-multiselectable"


{-| -}
orientation : Orientation -> Attribute msg
orientation (Orientation value) =
    Aria.withToken "aria-orientation" value


{-| -}
owns : List IdReference -> Attribute msg
owns =
    Aria.withIdReferenceList "aria-owns"


{-| -}
placeholder : String -> Attribute msg
placeholder =
    Aria.withString "aria-placeholder"


{-| -}
posInSet : Int -> Attribute msg
posInSet =
    Aria.withInteger "aria-posinset" 1


{-| -}
pressed : TriState -> Attribute msg
pressed =
    Aria.withTriState "aria-pressed"


{-| -}
readOnly : Bool -> Attribute msg
readOnly =
    Aria.withBool "aria-readonly"


{-| -}
relevant : List Relevant -> Attribute msg
relevant value =
    attribute "aria-relevant" <| Token.listToString <| List.map relevantToToken value


{-| -}
relevantToToken : Relevant -> Token.Type
relevantToToken (Relevant value) =
    value


{-| -}
relevantAll : Attribute msg
relevantAll =
    Aria.withToken "aria-relevant" <| Token.toToken "all"


{-| -}
required : Bool -> Attribute msg
required =
    Aria.withBool "aria-required"


{-| -}
roleDescription : String -> Attribute msg
roleDescription =
    Aria.withString "aria-roledescription"


{-| -}
rowCount : Int -> Attribute msg
rowCount =
    Aria.withInteger "aria-rowcount" -1


{-| -}
rowIndex : Int -> Attribute msg
rowIndex =
    Aria.withInteger "aria-rowindex" 1


{-| -}
rowSpan : Int -> Attribute msg
rowSpan =
    Aria.withInteger "aria-rowspan" 0


{-| -}
selected : Maybe Bool -> Attribute msg
selected =
    Aria.withMaybeBool "aria-selected"


{-| -}
setSize : Int -> Attribute msg
setSize =
    Aria.withInteger "aria-setsize" -1


{-| -}
sort : Sort -> Attribute msg
sort (Sort value) =
    Aria.withToken "aria-sort" value


{-| -}
valueMax : Int -> Attribute msg
valueMax =
    Aria.withNumber "aria-valuemax"


{-| -}
valueMin : Int -> Attribute msg
valueMin =
    Aria.withNumber "aria-valuemin"


{-| -}
valueNow : Int -> Attribute msg
valueNow =
    Aria.withNumber "aria-valuenow"


{-| -}
valueText : String -> Attribute msg
valueText =
    Aria.withString "aria-valuetext"


{-| -}
alert : Attribute msg
alert =
    role "alert"


{-| -}
alertDialog : Attribute msg
alertDialog =
    role "alertdialog"


{-| -}
application : Attribute msg
application =
    role "application"


{-| -}
article : Attribute msg
article =
    role "article"


{-| -}
banner : Attribute msg
banner =
    role "banner"


{-| -}
button : Attribute msg
button =
    role "button"


{-| -}
cell : Attribute msg
cell =
    role "cell"


{-| -}
checkBox : Attribute msg
checkBox =
    role "checkbox"


{-| -}
columnHeader : Attribute msg
columnHeader =
    role "columnheader"


{-| -}
comboBox : Attribute msg
comboBox =
    role "combobox"


{-| -}
complementary : Attribute msg
complementary =
    role "complementary"


{-| -}
contentInfo : Attribute msg
contentInfo =
    role "contentinfo"


{-| -}
definition : Attribute msg
definition =
    role "definition"


{-| -}
dialog : Attribute msg
dialog =
    role "dialog"


{-| -}
directory : Attribute msg
directory =
    role "directory"


{-| -}
document : Attribute msg
document =
    role "document"


{-| -}
feed : Attribute msg
feed =
    role "feed"


{-| -}
figure : Attribute msg
figure =
    role "figure"


{-| -}
form : Attribute msg
form =
    role "form"


{-| -}
grid : Attribute msg
grid =
    role "grid"


{-| -}
gridCell : Attribute msg
gridCell =
    role "gridcell"


{-| -}
group : Attribute msg
group =
    role "group"


{-| -}
heading : Attribute msg
heading =
    role "heading"


{-| -}
img : Attribute msg
img =
    role "img"


{-| -}
link : Attribute msg
link =
    role "link"


{-| -}
list : Attribute msg
list =
    role "list"


{-| -}
listBox : Attribute msg
listBox =
    role "listbox"


{-| -}
listItem : Attribute msg
listItem =
    role "listitem"


{-| -}
log : Attribute msg
log =
    role "log"


{-| -}
main_ : Attribute msg
main_ =
    role "main"


{-| -}
marquee : Attribute msg
marquee =
    role "marquee"


{-| -}
math : Attribute msg
math =
    role "math"


{-| -}
menu : Attribute msg
menu =
    role "menu"


{-| -}
menuBar : Attribute msg
menuBar =
    role "menubar"


{-| -}
menuItem : Attribute msg
menuItem =
    role "menuitem"


{-| -}
menuItemCheckBox : Attribute msg
menuItemCheckBox =
    role "menuitemcheckbox"


{-| -}
menuItemRadio : Attribute msg
menuItemRadio =
    role "menuitemradio"


{-| -}
navigation : Attribute msg
navigation =
    role "navigation"


{-| -}
none : Attribute msg
none =
    role "none"


{-| -}
note : Attribute msg
note =
    role "note"


{-| -}
option : Attribute msg
option =
    role "option"


{-| -}
presentation : Attribute msg
presentation =
    role "presentation"


{-| -}
progressBar : Attribute msg
progressBar =
    role "progressbar"


{-| -}
radio : Attribute msg
radio =
    role "radio"


{-| -}
radioGroup : Attribute msg
radioGroup =
    role "radiogroup"


{-| -}
region : Attribute msg
region =
    role "region"


{-| -}
row : Attribute msg
row =
    role "row"


{-| -}
rowGroup : Attribute msg
rowGroup =
    role "rowgroup"


{-| -}
rowHeader : Attribute msg
rowHeader =
    role "rowheader"


{-| -}
scrollBar : Attribute msg
scrollBar =
    role "scrollbar"


{-| -}
search : Attribute msg
search =
    role "search"


{-| -}
searchBox : Attribute msg
searchBox =
    role "searchbox"


{-| -}
separator : Attribute msg
separator =
    role "separator"


{-| -}
slider : Attribute msg
slider =
    role "slider"


{-| -}
spinButton : Attribute msg
spinButton =
    role "spinbutton"


{-| -}
status : Attribute msg
status =
    role "status"


{-| -}
switch : Attribute msg
switch =
    role "switch"


{-| -}
tab : Attribute msg
tab =
    role "tab"


{-| -}
table : Attribute msg
table =
    role "table"


{-| -}
tabList : Attribute msg
tabList =
    role "tablist"


{-| -}
tabPanel : Attribute msg
tabPanel =
    role "tabpanel"


{-| -}
term : Attribute msg
term =
    role "term"


{-| -}
textBox : Attribute msg
textBox =
    role "textbox"


{-| -}
timer : Attribute msg
timer =
    role "timer"


{-| -}
toolBar : Attribute msg
toolBar =
    role "toolbar"


{-| -}
toolTip : Attribute msg
toolTip =
    role "tooltip"


{-| -}
tree : Attribute msg
tree =
    role "tree"


{-| -}
treeGrid : Attribute msg
treeGrid =
    role "treegrid"


{-| -}
treeItem : Attribute msg
treeItem =
    role "treeitem"


role : String -> Attribute msg
role =
    attribute "role"
