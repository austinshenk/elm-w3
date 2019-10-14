module W3.Aria exposing
    ( Attribute
    , alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog, directory, document, feed, figure, form, grid, gridCell, group, heading, img, link, list, listBox, listItem, log, main_, marquee, math, menu, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree, treeGrid, treeItem
    )

{-| File that contains all WAI-ARIA roles as defined by W3's specification and in alphabetical order. If you want to read more about a role's purpose, take a look at the [role definitions list](https://www.w3.org/TR/wai-aria-1.1/#role_definitions).


# Types

@docs Attribute


# Roles

@docs alert, alertDialog, application, article, banner, button, cell, checkBox, columnHeader, comboBox, complementary, contentInfo, definition, dialog, directory, document, feed, figure, form, grid, gridCell, group, heading, img, link, list, listBox, listItem, log, main_, marquee, math, menu, menuBar, menuItem, menuItemCheckBox, menuItemRadio, navigation, none, note, option, presentation, progressBar, radio, radioGroup, region, row, rowGroup, rowHeader, scrollBar, search, searchBox, separator, slider, spinButton, status, switch, tab, tabList, tabPanel, table, term, textBox, timer, toolBar, toolTip, tree, treeGrid, treeItem

-}

import VirtualDom
import W3.Aria.Help as Aria


{-| -}
type alias Attribute a =
    Aria.Attribute a


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


{-| A type of live region with important, and usually time-sensitive, information.
-}
alert : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
alert =
    Aria.role "alert"


{-| A type of dialog that contains an alert message, where initial focus goes to an element within the dialog.
-}
alertDialog : List (GlobalAttributes { expanded : Aria.Supported, modal : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
alertDialog =
    Aria.role "alertdialog"


{-| A structure containing one or more focusable elements requiring user input, such as keyboard or gesture events, that do not follow a standard interaction pattern supported by a widget role.
-}
application : List (GlobalAttributes { activeDescendant : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
application =
    Aria.role "application"


{-| A section of a page that consists of a composition that forms an independent part of a document, page, or site.
-}
article : List (GlobalAttributes { expanded : Aria.Supported, posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
article =
    Aria.role "article"


{-| A region that contains mostly site-oriented content, rather than page-specific content.
-}
banner : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
banner =
    Aria.role "banner"


{-| An input that allows for user-triggered actions when clicked or pressed.
-}
button : List (GlobalAttributes { expanded : Aria.Supported, pressed : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
button =
    Aria.role "button"


{-| A cell in a tabular container.
-}
cell : List (GlobalAttributes { expanded : Aria.Supported, colIndex : Aria.Supported, colSpan : Aria.Supported, rowIndex : Aria.Supported, rowSpan : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
cell =
    Aria.role "cell"


{-| A checkable input that has three possible values: true, false, or mixed.
-}
checkBox : List (GlobalAttributes { checked : Aria.Supported, readOnly : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
checkBox =
    Aria.role "checkbox"


{-| A cell containing header information for a column.
-}
columnHeader : List (GlobalAttributes { colIndex : Aria.Supported, colSpan : Aria.Supported, expanded : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, rowIndex : Aria.Supported, rowSpan : Aria.Supported, selected : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
columnHeader =
    Aria.role "columnheader"


{-| A composite widget containing a single-line textbox and another element, such as a listbox or grid, that can dynamically pop up to help the user set the value of the textbox.
-}
comboBox : List (GlobalAttributes { controls : Aria.Supported, expanded : Aria.Supported, autoComplete : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, orientation : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
comboBox =
    Aria.role "combobox"


{-| A supporting section of the document, designed to be complementary to the main content at a similar level in the DOM hierarchy, but remains meaningful when separated from the main content.
-}
complementary : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
complementary =
    Aria.role "complementary"


{-| A large perceivable region that contains information about the parent document.
-}
contentInfo : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
contentInfo =
    Aria.role "contentinfo"


{-| A definition of a term or concept.
-}
definition : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
definition =
    Aria.role "definition"


{-| A dialog is a descendant window of the primary window of a web application. For HTML pages, the primary application window is the entire web document, i.e., the body element.
-}
dialog : List (GlobalAttributes { expanded : Aria.Supported, modal : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
dialog =
    Aria.role "dialog"


{-| A list of references to members of a group, such as a static table of contents.
-}
directory : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
directory =
    Aria.role "directory"


{-| An element containing content that assistive technology users may want to browse in a reading mode.
-}
document : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
document =
    Aria.role "document"


{-| A scrollable list of articles where scrolling may cause articles to be added to or removed from either end of the list.
-}
feed : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
feed =
    Aria.role "feed"


{-| A perceivable section of content that typically contains a graphical document, images, code snippets, or example text. The parts of a figure MAY be user-navigable.
-}
figure : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
figure =
    Aria.role "figure"


{-| A landmark region that contains a collection of items and objects that, as a whole, combine to create a form.
-}
form : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
form =
    Aria.role "form"


{-| A composite widget containing a collection of one or more rows with one or more cells where some or all cells in the grid are focusable by using methods of two-dimensional navigation, such as directional arrow keys.
-}
grid : List (GlobalAttributes { level : Aria.Supported, multiSelectable : Aria.Supported, readOnly : Aria.Supported, activeDescendant : Aria.Supported, colCount : Aria.Supported, expanded : Aria.Supported, rowCount : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
grid =
    Aria.role "grid"


{-| A cell in a grid or treegrid.
-}
gridCell : List (GlobalAttributes { colIndex : Aria.Supported, colSpan : Aria.Supported, expanded : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, rowIndex : Aria.Supported, rowSpan : Aria.Supported, selected : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
gridCell =
    Aria.role "gridcell"


{-| A set of user interface objects which are not intended to be included in a page summary or table of contents by assistive technologies.
-}
group : List (GlobalAttributes { activeDescendant : Aria.Supported, expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
group =
    Aria.role "group"


{-| A heading for a section of the page.
-}
heading : List (GlobalAttributes { level : Aria.Supported, expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
heading =
    Aria.role "heading"


{-| A container for a collection of elements that form an image.
-}
img : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
img =
    Aria.role "img"


{-| An interactive reference to an internal or external resource that, when activated, causes the user agent to navigate to that resource.
-}
link : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
link =
    Aria.role "link"


{-| A section containing listitem elements.
-}
list : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
list =
    Aria.role "list"


{-| A widget that allows the user to select one or more items from a list of choices.
-}
listBox : List (GlobalAttributes { multiSelectable : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
listBox =
    Aria.role "listbox"


{-| A single item in a list or directory.
-}
listItem : List (GlobalAttributes { level : Aria.Supported, posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
listItem =
    Aria.role "listitem"


{-| A type of live region where new information is added in meaningful order and old information may disappear.
-}
log : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
log =
    Aria.role "log"


{-| The main content of a document.
-}
main_ : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
main_ =
    Aria.role "main"


{-| A type of live region where non-essential information changes frequently.
-}
marquee : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
marquee =
    Aria.role "marquee"


{-| Content that represents a mathematical expression.
-}
math : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
math =
    Aria.role "math"


{-| A type of widget that offers a list of choices to the user.
-}
menu : List (GlobalAttributes { activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
menu =
    Aria.role "menu"


{-| A presentation of menu that usually remains visible and is usually presented horizontally.
-}
menuBar : List (GlobalAttributes { activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
menuBar =
    Aria.role "menubar"


{-| An option in a set of choices contained by a menu or menubar.
-}
menuItem : List (GlobalAttributes { posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
menuItem =
    Aria.role "menuitem"


{-| A menuitem with a checkable state whose possible values are true, false, or mixed.
-}
menuItemCheckBox : List (GlobalAttributes { checked : Aria.Supported, posInSet : Aria.Supported, readOnly : Aria.Supported, setSize : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
menuItemCheckBox =
    Aria.role "menuitemcheckbox"


{-| A checkable menuitem in a set of elements with the same role, only one of which can be checked at a time.
-}
menuItemRadio : List (GlobalAttributes { checked : Aria.Supported, posInSet : Aria.Supported, readOnly : Aria.Supported, setSize : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
menuItemRadio =
    Aria.role "menuitemradio"


{-| A collection of navigational elements (usually links) for navigating the document or related documents.
-}
navigation : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
navigation =
    Aria.role "navigation"


{-| An element whose implicit native role semantics will not be mapped to the accessibility API.
-}
none : List (GlobalAttributes {}) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
none =
    Aria.role "none"


{-| A section whose content is parenthetic or ancillary to the main content of the resource.
-}
note : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
note =
    Aria.role "note"


{-| A selectable item in a select list.
-}
option : List (GlobalAttributes { selected : Aria.Supported, checked : Aria.Supported, posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
option =
    Aria.role "option"


{-| An element whose implicit native role semantics will not be mapped to the accessibility API.
-}
presentation : List (GlobalAttributes {}) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
presentation =
    Aria.role "presentation"


{-| An element that displays the progress status for tasks that take a long time.
-}
progressBar : List (GlobalAttributes { expanded : Aria.Supported, valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, valueText : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
progressBar =
    Aria.role "progressbar"


{-| A checkable input in a group of elements with the same role, only one of which can be checked at a time.
-}
radio : List (GlobalAttributes { checked : Aria.Supported, posInSet : Aria.Supported, setSize : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
radio =
    Aria.role "radio"


{-| A group of radio buttons.
-}
radioGroup : List (GlobalAttributes { readOnly : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
radioGroup =
    Aria.role "radiogroup"


{-| A perceivable section containing content that is relevant to a specific, author-specified purpose and sufficiently important that users will likely want to be able to navigate to the section easily and to have it listed in a summary of the page. Such a page summary could be generated dynamically by a user agent or assistive technology.
-}
region : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
region =
    Aria.role "region"


{-| A row of cells in a tabular container.
-}
row : List (GlobalAttributes { colIndex : Aria.Supported, level : Aria.Supported, rowIndex : Aria.Supported, selected : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
row =
    Aria.role "row"


{-| A structure containing one or more row elements in a tabular container.
-}
rowGroup : List (GlobalAttributes {}) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
rowGroup =
    Aria.role "rowgroup"


{-| A cell containing header information for a row in a grid.
-}
rowHeader : List (GlobalAttributes { sort : Aria.Supported, colIndex : Aria.Supported, colSpan : Aria.Supported, expanded : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, rowIndex : Aria.Supported, rowSpan : Aria.Supported, selected : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
rowHeader =
    Aria.role "rowheader"


{-| A graphical object that controls the scrolling of content within a viewing area, regardless of whether the content is fully displayed within the viewing area.
-}
scrollBar : List (GlobalAttributes { controls : Aria.Supported, orientation : Aria.Supported, valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, valueText : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
scrollBar =
    Aria.role "scrollbar"


{-| A landmark region that contains a collection of items and objects that, as a whole, combine to create a search facility.
-}
search : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
search =
    Aria.role "search"


{-| A type of textbox intended for specifying search criteria.
-}
searchBox : List (GlobalAttributes { activeDescendant : Aria.Supported, autoComplete : Aria.Supported, multiLine : Aria.Supported, placeholder : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
searchBox =
    Aria.role "searchbox"


{-| A divider that separates and distinguishes sections of content or groups of menuitems.
-}
separator : List (GlobalAttributes { valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, orientation : Aria.Supported, valueText : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
separator =
    Aria.role "separator"


{-| A user input where the user selects a value from within a given range.
-}
slider : List (GlobalAttributes { valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, orientation : Aria.Supported, readOnly : Aria.Supported, valueText : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
slider =
    Aria.role "slider"


{-| A form of range that expects the user to select from among discrete choices.
-}
spinButton : List (GlobalAttributes { valueMax : Aria.Supported, valueMin : Aria.Supported, valueNow : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, valueText : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
spinButton =
    Aria.role "spinbutton"


{-| A type of live region whose content is advisory information for the user but is not important enough to justify an alert, often but not necessarily presented as a status bar.
-}
status : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
status =
    Aria.role "status"


{-| A type of checkbox that represents on/off values, as opposed to checked/unchecked values.
-}
switch : List (GlobalAttributes { checked : Aria.Supported, readOnly : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
switch =
    Aria.role "switch"


{-| A grouping label providing a mechanism for selecting the tab content that is to be rendered to the user.
-}
tab : List (GlobalAttributes { posInSet : Aria.Supported, selected : Aria.Supported, setSize : Aria.Supported, expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
tab =
    Aria.role "tab"


{-| A section containing data arranged in rows and columns.
-}
table : List (GlobalAttributes { colCount : Aria.Supported, rowCount : Aria.Supported, expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
table =
    Aria.role "table"


{-| A list of tab elements, which are references to tabpanel elements.
-}
tabList : List (GlobalAttributes { level : Aria.Supported, multiSelectable : Aria.Supported, orientation : Aria.Supported, activeDescendant : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
tabList =
    Aria.role "tablist"


{-| A container for the resources associated with a tab, where each tab is contained in a tablist.
-}
tabPanel : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
tabPanel =
    Aria.role "tabpanel"


{-| A word or phrase with a corresponding definition.
-}
term : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
term =
    Aria.role "term"


{-| A type of input that allows free-form text as its value.
-}
textBox : List (GlobalAttributes { activeDescendant : Aria.Supported, autoComplete : Aria.Supported, multiLine : Aria.Supported, placeholder : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
textBox =
    Aria.role "textbox"


{-| A type of live region containing a numerical counter which indicates an amount of elapsed time from a start point, or the time remaining until an end point.
-}
timer : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
timer =
    Aria.role "timer"


{-| A collection of commonly used function buttons or controls represented in compact visual form.
-}
toolBar : List (GlobalAttributes { orientation : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
toolBar =
    Aria.role "toolbar"


{-| A contextual popup that displays a description for an element.
-}
toolTip : List (GlobalAttributes { expanded : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
toolTip =
    Aria.role "tooltip"


{-| A type of list that may contain sub-level nested groups that can be collapsed and expanded.
-}
tree : List (GlobalAttributes { multiSelectable : Aria.Supported, required : Aria.Supported, activeDescendant : Aria.Supported, expanded : Aria.Supported, orientation : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
tree =
    Aria.role "tree"


{-| A grid whose rows can be expanded and collapsed in the same manner as for a tree.
-}
treeGrid : List (GlobalAttributes { activeDescendant : Aria.Supported, colCount : Aria.Supported, expanded : Aria.Supported, level : Aria.Supported, multiSelectable : Aria.Supported, orientation : Aria.Supported, readOnly : Aria.Supported, required : Aria.Supported, rowCount : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
treeGrid =
    Aria.role "treegrid"


{-| An option item of a tree. This is an element within a tree that may be expanded or collapsed if it contains a sub-level group of tree item elements.
-}
treeItem : List (GlobalAttributes { checked : Aria.Supported, expanded : Aria.Supported, level : Aria.Supported, posInSet : Aria.Supported, selected : Aria.Supported, setSize : Aria.Supported }) -> List (VirtualDom.Attribute msg) -> List (VirtualDom.Attribute msg)
treeItem =
    Aria.role "treeitem"
