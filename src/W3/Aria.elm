module W3.Aria exposing
    ( Attribute, GlobalAttributes
    , alert, alertdialog, application, article, banner, button, cell, checkbox, columnheader, combobox, complementary, contentinfo, definition, dialog, directory, document, feed, figure, form, grid, gridcell, group, heading, img, link, list, listbox, listitem, log, main_, marquee, math, menu, menubar, menuitem, menuitemcheckbox, menuitemradio, navigation, none, note, option, presentation, progressbar, radio, radiogroup, region, row, rowgroup, rowheader, scrollbar, search, searchbox, separator, slider, spinbutton, status, switch, tab, tablist, tabpanel, table, term, textbox, timer, toolbar, tooltip, tree, treegrid, treeitem
    , role
    )

{-| File that contains all WAI-ARIA roles as defined by W3's specification and in alphabetical order. If you want to read more about a role's purpose, take a look at the [role definitions list](https://www.w3.org/TR/wai-aria-1.1/#role_definitions).


# Definitions

@docs Attribute, GlobalAttributes


# Roles

@docs alert, alertdialog, application, article, banner, button, cell, checkbox, columnheader, combobox, complementary, contentinfo, definition, dialog, directory, document, feed, figure, form, grid, gridcell, group, heading, img, link, list, listbox, listitem, log, main_, marquee, math, menu, menubar, menuitem, menuitemcheckbox, menuitemradio, navigation, none, note, option, presentation, progressbar, radio, radiogroup, region, row, rowgroup, rowheader, scrollbar, search, searchbox, separator, slider, spinbutton, status, switch, tab, tablist, tabpanel, table, term, textbox, timer, toolbar, tooltip, tree, treegrid, treeitem


# Escape Hatch

@docs role

-}

import W3.Aria.Help as Aria
import W3.Html.Help as Html


{-| Base Type for Aria Attributes
-}
type alias Attribute a =
    Aria.Attribute a


{-| Attributes that can be assigned to any Role
-}
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
            , dropeffect : Aria.Supported
            , errormessage : Aria.Supported
            , flowto : Aria.Supported
            , grabbed : Aria.Supported
            , haspopup : Aria.Supported
            , hidden : Aria.Supported
            , invalid : Aria.Supported
            , keyshortcuts : Aria.Supported
            , label : Aria.Supported
            , labelledby : Aria.Supported
            , live : Aria.Supported
            , owns : Aria.Supported
            , relevant : Aria.Supported
            , roledescription : Aria.Supported
        }


{-| A type of live region with important, and usually time-sensitive, information.
-}
alert : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
alert =
    Aria.role "alert"


{-| A type of dialog that contains an alert message, where initial focus goes to an element within the dialog.
-}
alertdialog :
    List
        (GlobalAttributes
            { expanded : Aria.Supported
            , modal : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
alertdialog =
    Aria.role "alertdialog"


{-| A structure containing one or more focusable elements requiring user input, such as keyboard or gesture events, that do not follow a standard interaction pattern supported by a widget role.
-}
application :
    List (GlobalAttributes { activedescendant : Aria.Supported })
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
application =
    Aria.role "application"


{-| A section of a page that consists of a composition that forms an independent part of a document, page, or site.
-}
article :
    List
        (GlobalAttributes
            { expanded : Aria.Supported
            , posinset : Aria.Supported
            , setsize : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
article =
    Aria.role "article"


{-| A region that contains mostly site-oriented content, rather than page-specific content.
-}
banner : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
banner =
    Aria.role "banner"


{-| An input that allows for user-triggered actions when clicked or pressed.
-}
button :
    List
        (GlobalAttributes
            { expanded : Aria.Supported
            , pressed : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
button =
    Aria.role "button"


{-| A cell in a tabular container.
-}
cell :
    List
        (GlobalAttributes
            { expanded : Aria.Supported
            , colindex : Aria.Supported
            , colspan : Aria.Supported
            , rowindex : Aria.Supported
            , rowspan : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
cell =
    Aria.role "cell"


{-| A checkable input that has three possible values: true, false, or mixed.
-}
checkbox :
    List
        (GlobalAttributes
            { checked : Aria.Supported
            , readonly : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
checkbox =
    Aria.role "checkbox"


{-| A cell containing header information for a column.
-}
columnheader :
    List
        (GlobalAttributes
            { colindex : Aria.Supported
            , colspan : Aria.Supported
            , expanded : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            , rowindex : Aria.Supported
            , rowspan : Aria.Supported
            , selected : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
columnheader =
    Aria.role "columnheader"


{-| A composite widget containing a single-line textbox and another element, such as a listbox or grid, that can dynamically pop up to help the user set the value of the textbox.
-}
combobox :
    List
        (GlobalAttributes
            { controls : Aria.Supported
            , expanded : Aria.Supported
            , autocomplete : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            , activedescendant : Aria.Supported
            , orientation : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
combobox =
    Aria.role "combobox"


{-| A supporting section of the document, designed to be complementary to the main content at a similar level in the DOM hierarchy, but remains meaningful when separated from the main content.
-}
complementary : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
complementary =
    Aria.role "complementary"


{-| A large perceivable region that contains information about the parent document.
-}
contentinfo : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
contentinfo =
    Aria.role "contentinfo"


{-| A definition of a term or concept.
-}
definition : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
definition =
    Aria.role "definition"


{-| A dialog is a descendant window of the primary window of a web application. For HTML pages, the primary application window is the entire web document, i.e., the body element.
-}
dialog :
    List
        (GlobalAttributes
            { expanded : Aria.Supported
            , modal : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
dialog =
    Aria.role "dialog"


{-| A list of references to members of a group, such as a static table of contents.
-}
directory : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
directory =
    Aria.role "directory"


{-| An element containing content that assistive technology users may want to browse in a reading mode.
-}
document : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
document =
    Aria.role "document"


{-| A scrollable list of articles where scrolling may cause articles to be added to or removed from either end of the list.
-}
feed : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
feed =
    Aria.role "feed"


{-| A perceivable section of content that typically contains a graphical document, images, code snippets, or example text. The parts of a figure MAY be user-navigable.
-}
figure : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
figure =
    Aria.role "figure"


{-| A landmark region that contains a collection of items and objects that, as a whole, combine to create a form.
-}
form : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
form =
    Aria.role "form"


{-| A composite widget containing a collection of one or more rows with one or more cells where some or all cells in the grid are focusable by using methods of two-dimensional navigation, such as directional arrow keys.
-}
grid :
    List
        (GlobalAttributes
            { level : Aria.Supported
            , multiselectable : Aria.Supported
            , readonly : Aria.Supported
            , activedescendant : Aria.Supported
            , colcount : Aria.Supported
            , expanded : Aria.Supported
            , rowcount : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
grid =
    Aria.role "grid"


{-| A cell in a grid or treegrid.
-}
gridcell :
    List
        (GlobalAttributes
            { colindex : Aria.Supported
            , colspan : Aria.Supported
            , expanded : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            , rowindex : Aria.Supported
            , rowspan : Aria.Supported
            , selected : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
gridcell =
    Aria.role "gridcell"


{-| A set of user interface objects which are not intended to be included in a page summary or table of contents by assistive technologies.
-}
group :
    List
        (GlobalAttributes
            { activedescendant : Aria.Supported
            , expanded : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
group =
    Aria.role "group"


{-| A heading for a section of the page.
-}
heading :
    List
        (GlobalAttributes
            { level : Aria.Supported
            , expanded : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
heading =
    Aria.role "heading"


{-| A container for a collection of elements that form an image.
-}
img : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
img =
    Aria.role "img"


{-| An interactive reference to an internal or external resource that, when activated, causes the user agent to navigate to that resource.
-}
link : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
link =
    Aria.role "link"


{-| A section containing listitem elements.
-}
list : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
list =
    Aria.role "list"


{-| A widget that allows the user to select one or more items from a list of choices.
-}
listbox :
    List
        (GlobalAttributes
            { multiselectable : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            , activedescendant : Aria.Supported
            , expanded : Aria.Supported
            , orientation : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
listbox =
    Aria.role "listbox"


{-| A single item in a list or directory.
-}
listitem :
    List
        (GlobalAttributes
            { level : Aria.Supported
            , posinset : Aria.Supported
            , setsize : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
listitem =
    Aria.role "listitem"


{-| A type of live region where new information is added in meaningful order and old information may disappear.
-}
log : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
log =
    Aria.role "log"


{-| The main content of a document.
-}
main_ : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
main_ =
    Aria.role "main"


{-| A type of live region where non-essential information changes frequently.
-}
marquee : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
marquee =
    Aria.role "marquee"


{-| Content that represents a mathematical expression.
-}
math : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
math =
    Aria.role "math"


{-| A type of widget that offers a list of choices to the user.
-}
menu :
    List
        (GlobalAttributes
            { activedescendant : Aria.Supported
            , expanded : Aria.Supported
            , orientation : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
menu =
    Aria.role "menu"


{-| A presentation of menu that usually remains visible and is usually presented horizontally.
-}
menubar :
    List
        (GlobalAttributes
            { activedescendant : Aria.Supported
            , expanded : Aria.Supported
            , orientation : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
menubar =
    Aria.role "menubar"


{-| An option in a set of choices contained by a menu or menubar.
-}
menuitem :
    List
        (GlobalAttributes
            { posinset : Aria.Supported
            , setsize : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
menuitem =
    Aria.role "menuitem"


{-| A menuitem with a checkable state whose possible values are true, false, or mixed.
-}
menuitemcheckbox :
    List
        (GlobalAttributes
            { checked : Aria.Supported
            , posinset : Aria.Supported
            , readonly : Aria.Supported
            , setsize : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
menuitemcheckbox =
    Aria.role "menuitemcheckbox"


{-| A checkable menuitem in a set of elements with the same role, only one of which can be checked at a time.
-}
menuitemradio :
    List
        (GlobalAttributes
            { checked : Aria.Supported
            , posinset : Aria.Supported
            , readonly : Aria.Supported
            , setsize : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
menuitemradio =
    Aria.role "menuitemradio"


{-| A collection of navigational elements (usually links) for navigating the document or related documents.
-}
navigation : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
navigation =
    Aria.role "navigation"


{-| An element whose implicit native role semantics will not be mapped to the accessibility API.
-}
none : List (GlobalAttributes {}) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
none =
    Aria.role "none"


{-| A section whose content is parenthetic or ancillary to the main content of the resource.
-}
note : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
note =
    Aria.role "note"


{-| A selectable item in a select list.
-}
option :
    List
        (GlobalAttributes
            { selected : Aria.Supported
            , checked : Aria.Supported
            , posinset : Aria.Supported
            , setsize : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
option =
    Aria.role "option"


{-| An element whose implicit native role semantics will not be mapped to the accessibility API.
-}
presentation : List (GlobalAttributes {}) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
presentation =
    Aria.role "presentation"


{-| An element that displays the progress status for tasks that take a long time.
-}
progressbar :
    List
        (GlobalAttributes
            { expanded : Aria.Supported
            , valuemax : Aria.Supported
            , valuemin : Aria.Supported
            , valuenow : Aria.Supported
            , valuetext : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
progressbar =
    Aria.role "progressbar"


{-| A checkable input in a group of elements with the same role, only one of which can be checked at a time.
-}
radio :
    List
        (GlobalAttributes
            { checked : Aria.Supported
            , posinset : Aria.Supported
            , setsize : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
radio =
    Aria.role "radio"


{-| A group of radio buttons.
-}
radiogroup :
    List
        (GlobalAttributes
            { readonly : Aria.Supported
            , required : Aria.Supported
            , activedescendant : Aria.Supported
            , expanded : Aria.Supported
            , orientation : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
radiogroup =
    Aria.role "radiogroup"


{-| A perceivable section containing content that is relevant to a specific, author-specified purpose and sufficiently important that users will likely want to be able to navigate to the section easily and to have it listed in a summary of the page. Such a page summary could be generated dynamically by a user agent or assistive technology.
-}
region : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
region =
    Aria.role "region"


{-| A row of cells in a tabular container.
-}
row :
    List
        (GlobalAttributes
            { colindex : Aria.Supported
            , level : Aria.Supported
            , rowindex : Aria.Supported
            , selected : Aria.Supported
            , activedescendant : Aria.Supported
            , expanded : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
row =
    Aria.role "row"


{-| A structure containing one or more row elements in a tabular container.
-}
rowgroup : List (GlobalAttributes {}) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
rowgroup =
    Aria.role "rowgroup"


{-| A cell containing header information for a row in a grid.
-}
rowheader :
    List
        (GlobalAttributes
            { sort : Aria.Supported
            , colindex : Aria.Supported
            , colspan : Aria.Supported
            , expanded : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            , rowindex : Aria.Supported
            , rowspan : Aria.Supported
            , selected : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
rowheader =
    Aria.role "rowheader"


{-| A graphical object that controls the scrolling of content within a viewing area, regardless of whether the content is fully displayed within the viewing area.
-}
scrollbar :
    List
        (GlobalAttributes
            { controls : Aria.Supported
            , orientation : Aria.Supported
            , valuemax : Aria.Supported
            , valuemin : Aria.Supported
            , valuenow : Aria.Supported
            , valuetext : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
scrollbar =
    Aria.role "scrollbar"


{-| A landmark region that contains a collection of items and objects that, as a whole, combine to create a search facility.
-}
search : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
search =
    Aria.role "search"


{-| A type of textbox intended for specifying search criteria.
-}
searchbox :
    List
        (GlobalAttributes
            { activedescendant : Aria.Supported
            , autocomplete : Aria.Supported
            , multiline : Aria.Supported
            , placeholder : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
searchbox =
    Aria.role "searchbox"


{-| A divider that separates and distinguishes sections of content or groups of menuitems.
-}
separator :
    List
        (GlobalAttributes
            { valuemax : Aria.Supported
            , valuemin : Aria.Supported
            , valuenow : Aria.Supported
            , orientation : Aria.Supported
            , valuetext : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
separator =
    Aria.role "separator"


{-| A user input where the user selects a value from within a given range.
-}
slider :
    List
        (GlobalAttributes
            { valuemax : Aria.Supported
            , valuemin : Aria.Supported
            , valuenow : Aria.Supported
            , orientation : Aria.Supported
            , readonly : Aria.Supported
            , valuetext : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
slider =
    Aria.role "slider"


{-| A form of range that expects the user to select from among discrete choices.
-}
spinbutton :
    List
        (GlobalAttributes
            { valuemax : Aria.Supported
            , valuemin : Aria.Supported
            , valuenow : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            , activedescendant : Aria.Supported
            , valuetext : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
spinbutton =
    Aria.role "spinbutton"


{-| A type of live region whose content is advisory information for the user but is not important enough to justify an alert, often but not necessarily presented as a status bar.
-}
status : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
status =
    Aria.role "status"


{-| A type of checkbox that represents on/off values, as opposed to checked/unchecked values.
-}
switch :
    List
        (GlobalAttributes
            { checked : Aria.Supported
            , readonly : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
switch =
    Aria.role "switch"


{-| A grouping label providing a mechanism for selecting the tab content that is to be rendered to the user.
-}
tab :
    List
        (GlobalAttributes
            { posinset : Aria.Supported
            , selected : Aria.Supported
            , setsize : Aria.Supported
            , expanded : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
tab =
    Aria.role "tab"


{-| A section containing data arranged in rows and columns.
-}
table :
    List
        (GlobalAttributes
            { colcount : Aria.Supported
            , rowcount : Aria.Supported
            , expanded : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
table =
    Aria.role "table"


{-| A list of tab elements, which are references to tabpanel elements.
-}
tablist :
    List
        (GlobalAttributes
            { level : Aria.Supported
            , multiselectable : Aria.Supported
            , orientation : Aria.Supported
            , activedescendant : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
tablist =
    Aria.role "tablist"


{-| A container for the resources associated with a tab, where each tab is contained in a tablist.
-}
tabpanel : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
tabpanel =
    Aria.role "tabpanel"


{-| A word or phrase with a corresponding definition.
-}
term : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
term =
    Aria.role "term"


{-| A type of input that allows free-form text as its value.
-}
textbox :
    List
        (GlobalAttributes
            { activedescendant : Aria.Supported
            , autocomplete : Aria.Supported
            , multiline : Aria.Supported
            , placeholder : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
textbox =
    Aria.role "textbox"


{-| A type of live region containing a numerical counter which indicates an amount of elapsed time from a start point, or the time remaining until an end point.
-}
timer : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
timer =
    Aria.role "timer"


{-| A collection of commonly used function buttons or controls represented in compact visual form.
-}
toolbar :
    List
        (GlobalAttributes
            { orientation : Aria.Supported
            , activedescendant : Aria.Supported
            , expanded : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
toolbar =
    Aria.role "toolbar"


{-| A contextual popup that displays a description for an element.
-}
tooltip : List (GlobalAttributes { expanded : Aria.Supported }) -> List (Html.Attribute a msg) -> List (Html.Attribute a msg)
tooltip =
    Aria.role "tooltip"


{-| A type of list that may contain sub-level nested groups that can be collapsed and expanded.
-}
tree :
    List
        (GlobalAttributes
            { multiselectable : Aria.Supported
            , required : Aria.Supported
            , activedescendant : Aria.Supported
            , expanded : Aria.Supported
            , orientation : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
tree =
    Aria.role "tree"


{-| A grid whose rows can be expanded and collapsed in the same manner as for a tree.
-}
treegrid :
    List
        (GlobalAttributes
            { activedescendant : Aria.Supported
            , colcount : Aria.Supported
            , expanded : Aria.Supported
            , level : Aria.Supported
            , multiselectable : Aria.Supported
            , orientation : Aria.Supported
            , readonly : Aria.Supported
            , required : Aria.Supported
            , rowcount : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
treegrid =
    Aria.role "treegrid"


{-| An option item of a tree. This is an element within a tree that may be expanded or collapsed if it contains a sub-level group of tree item elements.
-}
treeitem :
    List
        (GlobalAttributes
            { checked : Aria.Supported
            , expanded : Aria.Supported
            , level : Aria.Supported
            , posinset : Aria.Supported
            , selected : Aria.Supported
            , setsize : Aria.Supported
            }
        )
    -> List (Html.Attribute a msg)
    -> List (Html.Attribute a msg)
treeitem =
    Aria.role "treeitem"


{-| Use this to break out of this package's requirements. Useful if there is a role that this package does not support yet.
-}
role : String -> List (Aria.Attribute a) -> List (Html.Attribute b msg) -> List (Html.Attribute b msg)
role =
    Aria.role
