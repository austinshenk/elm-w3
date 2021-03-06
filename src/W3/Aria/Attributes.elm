module W3.Aria.Attributes exposing
    ( Value, IdReference, TriState
    , activedescendant, atomic, autocomplete, busy, checked, colcount, colindex, colspan, controls, current, describedby, details, disabled, dropeffect, errormessage, expanded, flowto, grabbed, haspopup, hidden, invalid, keyshortcuts, label, labelledby, level, live, modal, multiline, multiselectable, orientation, owns, placeholder, posinset, pressed, readonly, relevant, relevantAll, required, roledescription, rowcount, rowindex, rowspan, selected, setsize, sort, valuemax, valuemin, valuenow, valuetext
    , additions, ascending, assertive, both, copy, date, descending, dialog, execute, false, grammar, grid, horizontal, inline, link, list, listbox, location, menu, mixed, move, none, off, other, page, polite, popup, removals, spelling, step, text, time, tree, true, undefined, vertical
    , attribute
    )

{-| File that contains all WAI-ARIA attributes and their values. More information about Aria attributes can be found in the [state and properties section](https://www.w3.org/TR/wai-aria-1.1/#state_prop_def) and different attribute value types can be found in the [property characteristics section](https://www.w3.org/TR/wai-aria-1.1/#propcharacteristic_value)


# Types

@docs Value, IdReference, TriState


# Attributes

@docs activedescendant, atomic, autocomplete, busy, checked, colcount, colindex, colspan, controls, current, describedby, details, disabled, dropeffect, errormessage, expanded, flowto, grabbed, haspopup, hidden, invalid, keyshortcuts, label, labelledby, level, live, modal, multiline, multiselectable, orientation, owns, placeholder, posinset, pressed, readonly, relevant, relevantAll, required, roledescription, rowcount, rowindex, rowspan, selected, setsize, sort, valuemax, valuemin, valuenow, valuetext


# Values

@docs additions, ascending, assertive, both, copy, date, descending, dialog, execute, false, grammar, grid, horizontal, inline, link, list, listbox, location, menu, mixed, move, none, off, other, page, polite, popup, removals, spelling, step, text, time, tree, true, undefined, vertical


# Escape Hatch

@docs attribute

-}

import W3.Aria.Help as Aria


{-| -}
type alias Value a =
    Aria.Value a


{-| -}
type alias IdReference =
    Aria.IdReference


{-| -}
type alias TriState =
    Aria.TriState


{-| Identifies the currently active element when DOM focus is on a composite widget, textbox, group, or application.
-}
activedescendant : Aria.IdReference -> Aria.Attribute { compatible | activedescendant : Aria.Supported }
activedescendant =
    Aria.idReference "activedescendant"


{-| Indicates whether assistive technologies will present all, or only parts of, the changed region based on the change notifications defined by the [relevant](#relevant) attribute.
-}
atomic : Bool -> Aria.Attribute { compatible | atomic : Aria.Supported }
atomic =
    Aria.bool "atomic"


{-| Indicates whether inputting text could trigger display of one or more predictions of the user's intended value for an input and specifies how predictions would be presented if they are made.
-}
autocomplete :
    Aria.Value
        { inline : Aria.SupportedValue
        , list : Aria.SupportedValue
        , both : Aria.SupportedValue
        , none : Aria.SupportedValue
        }
    -> Aria.Attribute { compatible | autocomplete : Aria.Supported }
autocomplete =
    Aria.value "autocomplete"


{-| Indicates an element is being modified and that assistive technologies MAY want to wait until the modifications are complete before exposing them to the user.
-}
busy : Bool -> Aria.Attribute { compatible | busy : Aria.Supported }
busy =
    Aria.bool "busy"


{-| Indicates the current "checked" state of checkboxes, radio buttons, and other widgets. See related [pressed](#pressed) and [selected](#selected).
-}
checked : Aria.TriState -> Aria.Attribute { compatible | checked : Aria.Supported }
checked =
    Aria.triState "checked"


{-| Defines the total number of columns in a table, grid, or treegrid. See related [colIndex](#colIndex).
-}
colcount : Int -> Aria.Attribute { compatible | colcount : Aria.Supported }
colcount =
    Aria.integer "colcount" -1


{-| Defines an element's column index or position with respect to the total number of columns within a table, grid, or treegrid. See related [colCount](#colCount) and [colSpan](#colSpan).
-}
colindex : Int -> Aria.Attribute { compatible | colindex : Aria.Supported }
colindex =
    Aria.integer "colindex" 1


{-| Defines the number of columns spanned by a cell or gridcell within a table, grid, or treegrid. See related [colIndex](#colIndex) and [rowspan](#rowSpan).
-}
colspan : Int -> Aria.Attribute { compatible | colspan : Aria.Supported }
colspan =
    Aria.integer "colspan" 1


{-| Identifies the element (or elements) whose contents or presence are controlled by the current element. See related [owns](#owns).
-}
controls : List Aria.IdReference -> Aria.Attribute { compatible | controls : Aria.Supported }
controls =
    Aria.idReferenceList "controls"


{-| Indicates the element that represents the current item within a container or set of related elements.
-}
current :
    Aria.Value
        { page : Aria.SupportedValue
        , step : Aria.SupportedValue
        , location : Aria.SupportedValue
        , date : Aria.SupportedValue
        , time : Aria.SupportedValue
        , true : Aria.SupportedValue
        , false : Aria.SupportedValue
        }
    -> Aria.Attribute { compatible | current : Aria.Supported }
current =
    Aria.value "current"


{-| Identifies the element (or elements) that describes the object. See related [labelledBy](#labelledBy).
-}
describedby : List Aria.IdReference -> Aria.Attribute { compatible | describedby : Aria.Supported }
describedby =
    Aria.idReferenceList "describedby"


{-| Identifies the element that provides a detailed, extended description for the object. See related [describedBy](#describedBy).
-}
details : Aria.IdReference -> Aria.Attribute { compatible | details : Aria.Supported }
details =
    Aria.idReference "details"


{-| Indicates that the element is perceivable but disabled, so it is not editable or otherwise operable. See related [hidden](#hidden) and [readOnly](#readOnly).
-}
disabled : Bool -> Aria.Attribute { compatible | disabled : Aria.Supported }
disabled =
    Aria.bool "disabled"


{-| [Deprecated in ARIA 1.1] Indicates what functions can be performed when a dragged object is released on the drop target.
-}
dropeffect :
    Aria.Value
        { copy : Aria.SupportedValue
        , execute : Aria.SupportedValue
        , link : Aria.SupportedValue
        , move : Aria.SupportedValue
        , none : Aria.SupportedValue
        , popup : Aria.SupportedValue
        }
    -> Aria.Attribute { compatible | dropeffect : Aria.Supported }
dropeffect =
    Aria.value "dropeffect"


{-| Identifies the element that provides an error message for the object. See related [invalid](#invalid) and [describedBy](#describedBy).
-}
errormessage : Aria.IdReference -> Aria.Attribute { compatible | errormessage : Aria.Supported }
errormessage =
    Aria.idReference "errormessage"


{-| Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed.
-}
expanded : Maybe Bool -> Aria.Attribute { compatible | expanded : Aria.Supported }
expanded =
    Aria.maybeBool "expanded"


{-| Identifies the next element (or elements) in an alternate reading order of content which, at the user's discretion, allows assistive technology to override the general default of reading in document source order.
-}
flowto : List Aria.IdReference -> Aria.Attribute { compatible | flowto : Aria.Supported }
flowto =
    Aria.idReferenceList "flowto"


{-| [Deprecated in ARIA 1.1] Indicates an element's "grabbed" state in a drag-and-drop operation.
-}
grabbed : Maybe Bool -> Aria.Attribute { compatible | grabbed : Aria.Supported }
grabbed =
    Aria.maybeBool "grabbed"


{-| Indicates the availability and type of interactive popup element, such as menu or dialog, that can be triggered by an element.
-}
haspopup :
    Aria.Value
        { menu : Aria.SupportedValue
        , listbox : Aria.SupportedValue
        , tree : Aria.SupportedValue
        , grid : Aria.SupportedValue
        , dialog : Aria.SupportedValue
        , true : Aria.SupportedValue
        , false : Aria.SupportedValue
        }
    -> Aria.Attribute { compatible | haspopup : Aria.Supported }
haspopup =
    Aria.value "haspopup"


{-| Indicates whether the element is exposed to an accessibility API. See related [disabled](#disabled).
-}
hidden : Maybe Bool -> Aria.Attribute { compatible | hidden : Aria.Supported }
hidden =
    Aria.maybeBool "hidden"


{-| Indicates the entered value does not conform to the format expected by the application. See related [errorMessage](#errorMessage).
-}
invalid :
    Aria.Value
        { grammar : Aria.SupportedValue
        , spelling : Aria.SupportedValue
        , true : Aria.SupportedValue
        , false : Aria.SupportedValue
        }
    -> Aria.Attribute { compatible | invalid : Aria.Supported }
invalid =
    Aria.value "invalid"


{-| Indicates keyboard shortcuts that an author has implemented to activate or give focus to an element.
-}
keyshortcuts : String -> Aria.Attribute { compatible | keyshortcuts : Aria.Supported }
keyshortcuts =
    Aria.string "keyshortcuts"


{-| Defines a string value that labels the current element. See related [labelledBy](#labelledBy).
-}
label : String -> Aria.Attribute { compatible | label : Aria.Supported }
label =
    Aria.string "label"


{-| Identifies the element (or elements) that labels the current element. See related [describedBy](#describedBy).
-}
labelledby : List Aria.IdReference -> Aria.Attribute { compatible | labelledby : Aria.Supported }
labelledby =
    Aria.idReferenceList "labelledby"


{-| Defines the hierarchical level of an element within a structure.
-}
level : Int -> Aria.Attribute { compatible | level : Aria.Supported }
level =
    Aria.integer "level" 1


{-| Indicates that an element will be updated, and describes the types of updates the user agents, assistive technologies, and user can expect from the live region.
-}
live :
    Aria.Value
        { assertive : Aria.SupportedValue
        , polite : Aria.SupportedValue
        , off : Aria.SupportedValue
        }
    -> Aria.Attribute { compatible | live : Aria.Supported }
live =
    Aria.value "live"


{-| Indicates whether an element is modal when displayed.
-}
modal : Bool -> Aria.Attribute { compatible | modal : Aria.Supported }
modal =
    Aria.bool "modal"


{-| Indicates whether a text box accepts multiple lines of input or only a single line.
-}
multiline : Bool -> Aria.Attribute { compatible | multiline : Aria.Supported }
multiline =
    Aria.bool "multiline"


{-| Indicates that the user may select more than one item from the current selectable descendants.
-}
multiselectable : Bool -> Aria.Attribute { compatible | multiselectable : Aria.Supported }
multiselectable =
    Aria.bool "multiselectable"


{-| Indicates whether the element's orientation is horizontal, vertical, or unknown/ambiguous.
-}
orientation :
    Aria.Value
        { horizontal : Aria.SupportedValue
        , vertical : Aria.SupportedValue
        , undefined : Aria.SupportedValue
        }
    -> Aria.Attribute { compatible | orientation : Aria.Supported }
orientation =
    Aria.value "orientation"


{-| Identifies an element (or elements) in order to define a visual, functional, or contextual parent/child relationship between DOM elements where the DOM hierarchy cannot be used to represent the relationship. See related [controls](#controls).
-}
owns : List Aria.IdReference -> Aria.Attribute { compatible | owns : Aria.Supported }
owns =
    Aria.idReferenceList "owns"


{-| Defines a short hint (a word or short phrase) intended to aid the user with data entry when the control has no value. A hint could be a sample value or a brief description of the expected format.
-}
placeholder : String -> Aria.Attribute { compatible | placeholder : Aria.Supported }
placeholder =
    Aria.string "placeholder"


{-| Defines an element's number or position in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM. See related [setSize](#setSize).
-}
posinset : Int -> Aria.Attribute { compatible | posinset : Aria.Supported }
posinset =
    Aria.integer "posinset" 1


{-| Indicates the current "pressed" state of toggle buttons. See related [checked](#checked) and [selected](#selected).
-}
pressed : Aria.TriState -> Aria.Attribute { compatible | pressed : Aria.Supported }
pressed =
    Aria.triState "pressed"


{-| Indicates that the element is not editable, but is otherwise operable. See related [disabled](#disabled).
-}
readonly : Bool -> Aria.Attribute { compatible | readonly : Aria.Supported }
readonly =
    Aria.bool "readonly"


{-| Indicates what notifications the user agent will trigger when the accessibility tree within a live region is modified. See related [atomic](#atomic).
-}
relevant :
    List
        (Aria.Value
            { additions : Aria.SupportedValue
            , removals : Aria.SupportedValue
            , text : Aria.SupportedValue
            }
        )
    -> Aria.Attribute { compatible | relevant : Aria.Supported }
relevant value =
    Aria.string "relevant" <| String.join "," (List.map Aria.valueToString value)


{-| Indicates what notifications the user agent will trigger when the accessibility tree within a live region is modified. See related [atomic](#atomic).
-}
relevantAll : Aria.Attribute { compatible | relevant : Aria.Supported }
relevantAll =
    Aria.value "relevant" <| Aria.Value "all"


{-| Indicates that user input is required on the element before a form may be submitted.
-}
required : Bool -> Aria.Attribute { compatible | required : Aria.Supported }
required =
    Aria.bool "required"


{-| Defines a human-readable, author-localized description for the role of an element.
-}
roledescription : String -> Aria.Attribute { compatible | roledescription : Aria.Supported }
roledescription =
    Aria.string "roledescription"


{-| Defines the total number of rows in a table, grid, or treegrid. See related [rowIndex](#rowIndex).
-}
rowcount : Int -> Aria.Attribute { compatible | rowcount : Aria.Supported }
rowcount =
    Aria.integer "rowcount" -1


{-| Defines an element's row index or position with respect to the total number of rows within a table, grid, or treegrid. See related [rowCount](#rowCount) and [rowSpan](#rowSpan).
-}
rowindex : Int -> Aria.Attribute { compatible | rowindex : Aria.Supported }
rowindex =
    Aria.integer "rowindex" 1


{-| Defines the number of rows spanned by a cell or gridcell within a table, grid, or treegrid. See related [rowIndex](#rowIndex) and [colSpan](#colSpan).
-}
rowspan : Int -> Aria.Attribute { compatible | rowspan : Aria.Supported }
rowspan =
    Aria.integer "rowspan" 0


{-| Indicates the current "selected" state of various widgets. See related [checked](#checked) and [pressed](#pressed).
-}
selected : Maybe Bool -> Aria.Attribute { compatible | selected : Aria.Supported }
selected =
    Aria.maybeBool "selected"


{-| Defines the number of items in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM. See related [posInSet](#posInSet).
-}
setsize : Int -> Aria.Attribute { compatible | setsize : Aria.Supported }
setsize =
    Aria.integer "setsize" -1


{-| Indicates if items in a table or grid are sorted in ascending or descending order.
-}
sort :
    Aria.Value
        { ascending : Aria.SupportedValue
        , descending : Aria.SupportedValue
        , none : Aria.SupportedValue
        , other : Aria.SupportedValue
        }
    -> Aria.Attribute { compatible | sort : Aria.Supported }
sort =
    Aria.value "sort"


{-| Defines the maximum allowed value for a range widget.
-}
valuemax : Int -> Aria.Attribute { compatible | valuemax : Aria.Supported }
valuemax =
    Aria.number "valuemax"


{-| Defines the minimum allowed value for a range widget.
-}
valuemin : Int -> Aria.Attribute { compatible | valuemin : Aria.Supported }
valuemin =
    Aria.number "valuemin"


{-| Defines the current value for a range widget. See related [valueText](#valueText).
-}
valuenow : Int -> Aria.Attribute { compatible | valuenow : Aria.Supported }
valuenow =
    Aria.number "valuenow"


{-| Defines the human readable text alternative of [valueNow](#valueNow) for a range widget.
-}
valuetext : String -> Aria.Attribute { compatible | valuetext : Aria.Supported }
valuetext =
    Aria.string "valuetext"



{--VALUES --}


{-| -}
additions : Aria.Value { compatible | additions : Aria.SupportedValue }
additions =
    Aria.Value "additions"


{-| -}
ascending : Aria.Value { compatible | ascending : Aria.SupportedValue }
ascending =
    Aria.Value "ascending"


{-| -}
assertive : Aria.Value { compatible | assertive : Aria.SupportedValue }
assertive =
    Aria.Value "assertive"


{-| -}
both : Aria.Value { compatible | both : Aria.SupportedValue }
both =
    Aria.Value "both"


{-| -}
copy : Aria.Value { compatible | copy : Aria.SupportedValue }
copy =
    Aria.Value "copy"


{-| -}
date : Aria.Value { compatible | date : Aria.SupportedValue }
date =
    Aria.Value "date"


{-| -}
descending : Aria.Value { compatible | descending : Aria.SupportedValue }
descending =
    Aria.Value "descending"


{-| -}
dialog : Aria.Value { compatible | dialog : Aria.SupportedValue }
dialog =
    Aria.Value "dialog"


{-| -}
execute : Aria.Value { compatible | execute : Aria.SupportedValue }
execute =
    Aria.Value "execute"


{-| -}
false : Aria.Value { compatible | false : Aria.SupportedValue }
false =
    Aria.Value "false"


{-| -}
grammar : Aria.Value { compatible | grammar : Aria.SupportedValue }
grammar =
    Aria.Value "grammar"


{-| -}
grid : Aria.Value { compatible | grid : Aria.SupportedValue }
grid =
    Aria.Value "grid"


{-| -}
horizontal : Aria.Value { compatible | horizontal : Aria.SupportedValue }
horizontal =
    Aria.Value "horizontal"


{-| -}
inline : Aria.Value { compatible | inline : Aria.SupportedValue }
inline =
    Aria.Value "inline"


{-| -}
link : Aria.Value { compatible | link : Aria.SupportedValue }
link =
    Aria.Value "link"


{-| -}
list : Aria.Value { compatible | list : Aria.SupportedValue }
list =
    Aria.Value "list"


{-| -}
listbox : Aria.Value { compatible | listbox : Aria.SupportedValue }
listbox =
    Aria.Value "listbox"


{-| -}
location : Aria.Value { compatible | location : Aria.SupportedValue }
location =
    Aria.Value "location"


{-| -}
menu : Aria.Value { compatible | menu : Aria.SupportedValue }
menu =
    Aria.Value "menu"


{-| -}
mixed : Aria.Value { compatible | mixed : Aria.SupportedValue }
mixed =
    Aria.Value "mixed"


{-| -}
move : Aria.Value { compatible | move : Aria.SupportedValue }
move =
    Aria.Value "move"


{-| -}
none : Aria.Value { compatible | none : Aria.SupportedValue }
none =
    Aria.Value "none"


{-| -}
off : Aria.Value { compatible | off : Aria.SupportedValue }
off =
    Aria.Value "off"


{-| -}
other : Aria.Value { compatible | other : Aria.SupportedValue }
other =
    Aria.Value "other"


{-| -}
page : Aria.Value { compatible | page : Aria.SupportedValue }
page =
    Aria.Value "page"


{-| -}
polite : Aria.Value { compatible | polite : Aria.SupportedValue }
polite =
    Aria.Value "polite"


{-| -}
popup : Aria.Value { compatible | popup : Aria.SupportedValue }
popup =
    Aria.Value "popup"


{-| -}
removals : Aria.Value { compatible | removals : Aria.SupportedValue }
removals =
    Aria.Value "removals"


{-| -}
spelling : Aria.Value { compatible | spelling : Aria.SupportedValue }
spelling =
    Aria.Value "spelling"


{-| -}
step : Aria.Value { compatible | step : Aria.SupportedValue }
step =
    Aria.Value "step"


{-| -}
text : Aria.Value { compatible | text : Aria.SupportedValue }
text =
    Aria.Value "text"


{-| -}
time : Aria.Value { compatible | time : Aria.SupportedValue }
time =
    Aria.Value "time"


{-| -}
tree : Aria.Value { compatible | tree : Aria.SupportedValue }
tree =
    Aria.Value "tree"


{-| -}
true : Aria.Value { compatible | true : Aria.SupportedValue }
true =
    Aria.Value "true"


{-| -}
undefined : Aria.Value { compatible | undefined : Aria.SupportedValue }
undefined =
    Aria.Value "undefined"


{-| -}
vertical : Aria.Value { compatible | vertical : Aria.SupportedValue }
vertical =
    Aria.Value "vertical"


{-| Use this to break out of this package's requirements. Useful if there is an attribute that this package does not support yet.
-}
attribute : String -> String -> Aria.Attribute a
attribute =
    Aria.Attribute
