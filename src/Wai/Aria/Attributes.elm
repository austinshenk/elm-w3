module Wai.Aria.Attributes exposing
    ( activeDescendant, atomic, autoComplete, busy, checked, colCount, colIndex, colSpan, controls, current, describedBy, details, disabled, dropEffect, errorMessage, expanded, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, level, live, modal, multiLine, multiSelectable, orientation, owns, placeholder, posInSet, pressed, readOnly, relevant, relevantAll, required, roleDescription, rowCount, rowIndex, rowSpan, selected, setSize, sort, valueMax, valueMin, valueNow, valueText
    , additions, ascending, assertive, both, copy, date, descending, dialog, execute, false, grammar, grid, horizontal, inline, link, list, listbox, location, menu, move, none, off, other, page, polite, popup, removals, spelling, step, text, time, tree, true, undefined, vertical
    , attribute
    )

{-| Module that defines all ARIA attributes.


# Attributes

@docs activeDescendant, atomic, autoComplete, busy, checked, colCount, colIndex, colSpan, controls, current, describedBy, details, disabled, dropEffect, errorMessage, expanded, flowTo, grabbed, hasPopup, hidden, invalid, keyShortcuts, label, labelledBy, level, live, modal, multiLine, multiSelectable, orientation, owns, placeholder, posInSet, pressed, readOnly, relevant, relevantAll, required, roleDescription, rowCount, rowIndex, rowSpan, selected, setSize, sort, valueMax, valueMin, valueNow, valueText


# Values

@docs additions, ascending, assertive, both, copy, date, descending, dialog, execute, false, grammar, grid, horizontal, inline, link, list, listbox, location, menu, move, none, off, other, page, polite, popup, removals, spelling, step, text, time, tree, true, undefined, vertical


# Escape Hatch

@docs attribute

-}

import Html
import Wai.Aria.Help as Aria


{-| -}
activeDescendant : Aria.IdReference -> Aria.Attribute { compatible | activeDescendant : Aria.Supported }
activeDescendant =
    Aria.idReference "activedescendant"


{-| -}
atomic : Bool -> Aria.Attribute { compatible | atomic : Aria.Supported }
atomic =
    Aria.bool "atomic"


{-| -}
autoComplete : Aria.Value { inline : Aria.SupportedValue, list : Aria.SupportedValue, both : Aria.SupportedValue, none : Aria.SupportedValue } -> Aria.Attribute { compatible | autoComplete : Aria.Supported }
autoComplete =
    Aria.value "autocomplete"


{-| -}
busy : Bool -> Aria.Attribute { compatible | busy : Aria.Supported }
busy =
    Aria.bool "busy"


{-| -}
checked : Aria.TriState -> Aria.Attribute { compatible | checked : Aria.Supported }
checked =
    Aria.triState "checked"


{-| -}
colCount : Int -> Aria.Attribute { compatible | colCount : Aria.Supported }
colCount =
    Aria.integer "colcount" -1


{-| -}
colIndex : Int -> Aria.Attribute { compatible | colIndex : Aria.Supported }
colIndex =
    Aria.integer "colindex" 1


{-| -}
colSpan : Int -> Aria.Attribute { compatible | colSpan : Aria.Supported }
colSpan =
    Aria.integer "colspan" 1


{-| -}
controls : List Aria.IdReference -> Aria.Attribute { compatible | controls : Aria.Supported }
controls =
    Aria.idReferenceList "controls"


{-| -}
current : Aria.Value { page : Aria.SupportedValue, step : Aria.SupportedValue, location : Aria.SupportedValue, date : Aria.SupportedValue, time : Aria.SupportedValue, true : Aria.SupportedValue, false : Aria.SupportedValue } -> Aria.Attribute { compatible | current : Aria.Supported }
current =
    Aria.value "current"


{-| -}
describedBy : List Aria.IdReference -> Aria.Attribute { compatible | describedBy : Aria.Supported }
describedBy =
    Aria.idReferenceList "describedby"


{-| -}
details : Aria.IdReference -> Aria.Attribute { compatible | details : Aria.Supported }
details =
    Aria.idReference "details"


{-| -}
disabled : Bool -> Aria.Attribute { compatible | disabled : Aria.Supported }
disabled =
    Aria.bool "disabled"


{-| -}
dropEffect : Aria.Value { copy : Aria.SupportedValue, execute : Aria.SupportedValue, link : Aria.SupportedValue, move : Aria.SupportedValue, none : Aria.SupportedValue, popup : Aria.SupportedValue } -> Aria.Attribute { compatible | dropEffect : Aria.Supported }
dropEffect =
    Aria.value "dropeffect"


{-| -}
errorMessage : Aria.IdReference -> Aria.Attribute { compatible | errorMessage : Aria.Supported }
errorMessage =
    Aria.idReference "errormessage"


{-| -}
expanded : Maybe Bool -> Aria.Attribute { compatible | expanded : Aria.Supported }
expanded =
    Aria.maybeBool "expanded"


{-| -}
flowTo : List Aria.IdReference -> Aria.Attribute { compatible | flowTo : Aria.Supported }
flowTo =
    Aria.idReferenceList "flowto"


{-| -}
grabbed : Maybe Bool -> Aria.Attribute { compatible | grabbed : Aria.Supported }
grabbed =
    Aria.maybeBool "grabbed"


{-| -}
hasPopup : Aria.Value { menu : Aria.SupportedValue, listbox : Aria.SupportedValue, tree : Aria.SupportedValue, grid : Aria.SupportedValue, dialog : Aria.SupportedValue, true : Aria.SupportedValue, false : Aria.SupportedValue } -> Aria.Attribute { compatible | hasPopup : Aria.Supported }
hasPopup =
    Aria.value "haspopup"


{-| -}
hidden : Maybe Bool -> Aria.Attribute { compatible | hidden : Aria.Supported }
hidden =
    Aria.maybeBool "hidden"


{-| -}
invalid : Aria.Value { grammar : Aria.SupportedValue, spelling : Aria.SupportedValue, true : Aria.SupportedValue, false : Aria.SupportedValue } -> Aria.Attribute { compatible | invalid : Aria.Supported }
invalid =
    Aria.value "invalid"


{-| -}
keyShortcuts : String -> Aria.Attribute { compatible | keyShortcuts : Aria.Supported }
keyShortcuts =
    Aria.string "keyshortcuts"


{-| -}
label : String -> Aria.Attribute { compatible | label : Aria.Supported }
label =
    Aria.string "label"


{-| -}
labelledBy : List Aria.IdReference -> Aria.Attribute { compatible | labelledBy : Aria.Supported }
labelledBy =
    Aria.idReferenceList "labelledby"


{-| -}
level : Int -> Aria.Attribute { compatible | level : Aria.Supported }
level =
    Aria.integer "level" 1


{-| -}
live : Aria.Value { assertive : Aria.SupportedValue, polite : Aria.SupportedValue, off : Aria.SupportedValue } -> Aria.Attribute { compatible | live : Aria.Supported }
live =
    Aria.value "live"


{-| -}
modal : Bool -> Aria.Attribute { compatible | modal : Aria.Supported }
modal =
    Aria.bool "modal"


{-| -}
multiLine : Bool -> Aria.Attribute { compatible | multiLine : Aria.Supported }
multiLine =
    Aria.bool "multiline"


{-| -}
multiSelectable : Bool -> Aria.Attribute { compatible | multiSelectable : Aria.Supported }
multiSelectable =
    Aria.bool "multiselectable"


{-| -}
orientation : Aria.Value { horizontal : Aria.SupportedValue, vertical : Aria.SupportedValue, undefined : Aria.SupportedValue } -> Aria.Attribute { compatible | orientation : Aria.Supported }
orientation =
    Aria.value "orientation"


{-| -}
owns : List Aria.IdReference -> Aria.Attribute { compatible | owns : Aria.Supported }
owns =
    Aria.idReferenceList "owns"


{-| -}
placeholder : String -> Aria.Attribute { compatible | placeholder : Aria.Supported }
placeholder =
    Aria.string "placeholder"


{-| -}
posInSet : Int -> Aria.Attribute { compatible | posInSet : Aria.Supported }
posInSet =
    Aria.integer "posinset" 1


{-| -}
pressed : Aria.TriState -> Aria.Attribute { compatible | pressed : Aria.Supported }
pressed =
    Aria.triState "pressed"


{-| -}
readOnly : Bool -> Aria.Attribute { compatible | readOnly : Aria.Supported }
readOnly =
    Aria.bool "readonly"


{-| -}
relevant : List (Aria.Value { additions : Aria.SupportedValue, removals : Aria.SupportedValue, text : Aria.SupportedValue }) -> Aria.Attribute { compatible | relevant : Aria.Supported }
relevant value =
    Aria.string "relevant" <| String.join "," (List.map Aria.valueToString value)


{-| -}
relevantAll : Aria.Attribute { compatible | relevant : Aria.Supported }
relevantAll =
    Aria.value "relevant" <| Aria.Value "all"


{-| -}
required : Bool -> Aria.Attribute { compatible | required : Aria.Supported }
required =
    Aria.bool "required"


{-| -}
roleDescription : String -> Aria.Attribute { compatible | roleDescription : Aria.Supported }
roleDescription =
    Aria.string "roledescription"


{-| -}
rowCount : Int -> Aria.Attribute { compatible | rowCount : Aria.Supported }
rowCount =
    Aria.integer "rowcount" -1


{-| -}
rowIndex : Int -> Aria.Attribute { compatible | rowIndex : Aria.Supported }
rowIndex =
    Aria.integer "rowindex" 1


{-| -}
rowSpan : Int -> Aria.Attribute { compatible | rowSpan : Aria.Supported }
rowSpan =
    Aria.integer "rowspan" 0


{-| -}
selected : Maybe Bool -> Aria.Attribute { compatible | selected : Aria.Supported }
selected =
    Aria.maybeBool "selected"


{-| -}
setSize : Int -> Aria.Attribute { compatible | setSize : Aria.Supported }
setSize =
    Aria.integer "setsize" -1


{-| -}
sort : Aria.Value { ascending : Aria.SupportedValue, descending : Aria.SupportedValue, none : Aria.SupportedValue, other : Aria.SupportedValue } -> Aria.Attribute { compatible | sort : Aria.Supported }
sort =
    Aria.value "sort"


{-| -}
valueMax : Int -> Aria.Attribute { compatible | valueMax : Aria.Supported }
valueMax =
    Aria.number "valuemax"


{-| -}
valueMin : Int -> Aria.Attribute { compatible | valueMin : Aria.Supported }
valueMin =
    Aria.number "valuemin"


{-| -}
valueNow : Int -> Aria.Attribute { compatible | valueNow : Aria.Supported }
valueNow =
    Aria.number "valuenow"


{-| -}
valueText : String -> Aria.Attribute { compatible | valueText : Aria.Supported }
valueText =
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
move : Aria.Value { compatible | move : Aria.SupportedValue }
move =
    Aria.Value "move"


{-| -}
none : Aria.Value { compatible | none : Aria.SupportedValue }
none =
    Aria.Value "none"


{-| -}
off : Aria.Value { compatible | none : Aria.SupportedValue }
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
text : Aria.Value { compatible | step : Aria.SupportedValue }
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


{-| Escape Hatch
-}
attribute : Aria.Attribute a -> Html.Attribute msg
attribute =
    Aria.toAttribute
