module W3.Html.Attributes exposing
    ( accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate
    , auto, characters, decimal, done, email, enter, go, ltr, next, none, numeric, off, on, previous, rtl, search, send, sentences, tel, text, url, words
    )

{-| Module that defines all HTML attributes and values


# Global Attributes

@docs accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate


# Values

@docs auto, characters, decimal, done, email, enter, go, ltr, next, none, numeric, off, on, previous, rtl, search, send, sentences, tel, text, url, words

-}

import Set exposing (Set)
import W3.Html.Attributes.Help as W3


{-| -}
accesskey : Set String -> W3.Attribute { compatible | accesskey : W3.Supported }
accesskey =
    W3.uniqueTokens "accesskey"


{-| -}
autocapitalize :
    W3.Value
        { off : W3.SupportedValue
        , none : W3.SupportedValue
        , on : W3.SupportedValue
        , sentences : W3.SupportedValue
        , words : W3.SupportedValue
        , characters : W3.SupportedValue
        }
    -> W3.Attribute { compatible | autocapitalize : W3.Supported }
autocapitalize =
    W3.value "autocapitalize"


{-| -}
autofocus : Bool -> W3.Attribute { compatible | autofocus : W3.Supported }
autofocus =
    W3.bool "autofocus"


{-| -}
class : List String -> W3.Attribute { compatible | class : W3.Supported }
class =
    W3.tokens "class"


{-| -}
contenteditable : Maybe Bool -> W3.Attribute { compatible | contenteditable : W3.Supported }
contenteditable =
    W3.maybeBool "contenteditable" ""


{-| -}
data_ : String -> String -> W3.Attribute { compatible | data_ : W3.Supported }
data_ key val =
    W3.Attribute ("data-" ++ key) val


{-| -}
dir :
    W3.Value
        { ltr : W3.SupportedValue
        , rtl : W3.SupportedValue
        , auto : W3.SupportedValue
        }
    -> W3.Attribute { compatible | dir : W3.Supported }
dir =
    W3.value "dir"


{-| -}
draggable : Maybe Bool -> W3.Attribute { compatible | draggable : W3.Supported }
draggable =
    W3.maybeBool "draggable" ""


{-| -}
enterkeyhint :
    W3.Value
        { enter : W3.SupportedValue
        , done : W3.SupportedValue
        , go : W3.SupportedValue
        , next : W3.SupportedValue
        , previous : W3.SupportedValue
        , search : W3.SupportedValue
        , send : W3.SupportedValue
        }
    -> W3.Attribute { compatible | enterkeyhint : W3.Supported }
enterkeyhint =
    W3.value "enterkeyhint"


{-| -}
hidden : Bool -> W3.Attribute { compatible | hidden : W3.Supported }
hidden =
    W3.bool "hidden"


{-| -}
id : String -> W3.Attribute { compatible | id : W3.Supported }
id =
    W3.string "id"


{-| -}
inputmode :
    W3.Value
        { none : W3.SupportedValue
        , text : W3.SupportedValue
        , tel : W3.SupportedValue
        , url : W3.SupportedValue
        , email : W3.SupportedValue
        , numeric : W3.SupportedValue
        , decimal : W3.SupportedValue
        , search : W3.SupportedValue
        }
    -> W3.Attribute { compatible | inputmode : W3.Supported }
inputmode =
    W3.value "inputmode"


{-| -}
itemid : String -> W3.Attribute { compatible | itemid : W3.Supported }
itemid =
    W3.string "itemid"


{-| -}
itemprop : Set String -> W3.Attribute { compatible | itemprop : W3.Supported }
itemprop =
    W3.uniqueTokens "itemprop"


{-| -}
itemref : Set String -> W3.Attribute { compatible | itemref : W3.Supported }
itemref =
    W3.uniqueTokens "itemref"


{-| -}
itemscope : Bool -> W3.Attribute { compatible | itemscope : W3.Supported }
itemscope =
    W3.bool "itemscope"


{-| -}
itemtype : Set String -> W3.Attribute { compatible | itemtype : W3.Supported }
itemtype =
    W3.uniqueTokens "itemtype"


{-| -}
lang : String -> W3.Attribute { compatible | lang : W3.Supported }
lang =
    W3.string "lang"


{-| -}
nonce : Int -> W3.Attribute { compatible | nonce : W3.Supported }
nonce =
    W3.number "nonce"


{-| -}
slot : String -> W3.Attribute { compatible | slot : W3.Supported }
slot =
    W3.string "slot"


{-| -}
spellcheck : Maybe Bool -> W3.Attribute { compatible | spellcheck : W3.Supported }
spellcheck =
    W3.maybeBool "spellcheck" ""


{-| -}
style : String -> W3.Attribute { compatible | style : W3.Supported }
style =
    W3.string "style"


{-| -}
tabindex : Int -> W3.Attribute { compatible | tabindex : W3.Supported }
tabindex =
    W3.number "tabindex"


{-| -}
title : String -> W3.Attribute { compatible | title : W3.Supported }
title =
    W3.string "title"


{-| -}
translate :
    W3.Value
        { yes : W3.SupportedValue
        , no : W3.SupportedValue
        }
    -> W3.Attribute { compatible | translate : W3.Supported }
translate =
    W3.value "translate"


abbr : String -> W3.Attribute { compatible | abbr : W3.Supported }
abbr =
    W3.string "abbr"


accept : List String -> W3.Attribute { compatible | acceptcharset : W3.Supported }
accept values =
    W3.Attribute "accept" (String.join "," values)


acceptcharset : Set String -> W3.Attribute { compatible | acceptcharset : W3.Supported }
acceptcharset =
    W3.uniqueTokens "acceptcharset"


action : String -> W3.Attribute { compatible | action : W3.Supported }
action =
    W3.string "action"


alt : String -> W3.Attribute { compatible | alt : W3.Supported }
alt =
    W3.string "alt"


allow : String -> W3.Attribute { compatible | allow : W3.Supported }
allow =
    W3.string "allow"


allowfullscreen : Bool -> W3.Attribute { compatible | allowfullscreen : W3.Supported }
allowfullscreen =
    W3.bool "allowfullscreen"


allowpaymentrequest : Bool -> W3.Attribute { compatible | allowpaymentrequest : W3.Supported }
allowpaymentrequest =
    W3.bool "allowpaymentrequest"


autocomplete :
    W3.Value
        { on : W3.SupportedValue
        , off : W3.SupportedValue
        }
    -> W3.Attribute { compatible | autocomplete : W3.Supported }
autocomplete =
    W3.value "autocomplete"


autoplay : Bool -> W3.Attribute { compatible | autoplay : W3.Supported }
autoplay =
    W3.bool "autoplay"


buttonType :
    W3.Value
        { submit : W3.SupportedValue
        , reset : W3.SupportedValue
        , button : W3.SupportedValue
        }
    -> W3.Attribute { compatible | buttonType : W3.Supported }
buttonType =
    W3.value "type"


checked : Bool -> W3.Attribute { compatible | checked : W3.Supported }
checked =
    W3.bool "checked"


cite : String -> W3.Attribute { compatible | cite : W3.Supported }
cite =
    W3.string "cite"


cols : Int -> W3.Attribute { compatible | cols : W3.Supported }
cols =
    W3.number "cols"


colspan : Int -> W3.Attribute { compatible | colspan : W3.Supported }
colspan =
    W3.number "colspan"


controls : Bool -> W3.Attribute { compatible | controls : W3.Supported }
controls =
    W3.bool "controls"


coords : List Int -> W3.Attribute { compatible | coords : W3.Supported }
coords numbers =
    W3.Attribute "coords" (List.map String.fromInt numbers |> String.join ",")


crossorigin :
    W3.Value
        { anonymous : W3.SupportedValue
        , useCredentials : W3.SupportedValue
        }
    -> W3.Attribute { compatible | crossorigin : W3.Supported }
crossorigin =
    W3.value "crossorigin"


data : String -> W3.Attribute { compatible | data : W3.Supported }
data =
    W3.string "data"


datetime : String -> W3.Attribute { compatible | datetime : W3.Supported }
datetime =
    W3.string "datetime"


decoding :
    W3.Value
        { sync : W3.SupportedValue
        , asyc : W3.SupportedValue
        , auto : W3.SupportedValue
        }
    -> W3.Attribute { compatible | decoding : W3.Supported }
decoding =
    W3.value "decoding"


default : Bool -> W3.Attribute { compatible | default : W3.Supported }
default =
    W3.bool "default"


dirname : String -> W3.Attribute { compatible | dirname : W3.Supported }
dirname =
    W3.string "dirname"


disabled : Bool -> W3.Attribute { compatible | disabled : W3.Supported }
disabled =
    W3.bool "disabled"


download : String -> W3.Attribute { compatible | download : W3.Supported }
download =
    W3.string "download"


enctype :
    W3.Value
        { formUrlEncoded : W3.SupportedValue
        , formData : W3.SupportedValue
        , plainText : W3.SupportedValue
        }
    -> W3.Attribute { compatible | enctype : W3.Supported }
enctype =
    W3.value "enctype"


for : String -> W3.Attribute { compatible | for : W3.Supported }
for =
    W3.string "for"


form : String -> W3.Attribute { compatible | form : W3.Supported }
form =
    W3.string "form"


formaction : String -> W3.Attribute { compatible | formaction : W3.Supported }
formaction =
    W3.string "formaction"


formenctype :
    W3.Value
        { formUrlEncoded : W3.SupportedValue
        , formData : W3.SupportedValue
        , plainText : W3.SupportedValue
        }
    -> W3.Attribute { compatible | formenctype : W3.Supported }
formenctype =
    W3.value "formenctype"


formmethod :
    W3.Value
        { get : W3.SupportedValue
        , post : W3.SupportedValue
        , dialog : W3.SupportedValue
        }
    -> W3.Attribute { compatible | formmethod : W3.Supported }
formmethod =
    W3.value "formmethod"


formnovalidate : Bool -> W3.Attribute { compatible | formnovalidate : W3.Supported }
formnovalidate =
    W3.bool "formnovalidate"


formtarget :
    W3.Value
        { blank : W3.SupportedValue
        , self : W3.SupportedValue
        , parent : W3.SupportedValue
        , top : W3.SupportedValue
        , frame : W3.SupportedValue
        }
    -> W3.Attribute { compatible | formtarget : W3.Supported }
formtarget =
    W3.value "formtarget"


headers : Set String -> W3.Attribute { compatible | headers : W3.Supported }
headers =
    W3.uniqueTokens "headers"


height : Int -> W3.Attribute { compatible | height : W3.Supported }
height =
    W3.number "height"


high : Int -> W3.Attribute { compatible | high : W3.Supported }
high =
    W3.number "high"


href : String -> W3.Attribute { compatible | href : W3.Supported }
href =
    W3.string "href"


hreflang : String -> W3.Attribute { compatible | hreflang : W3.Supported }
hreflang =
    W3.string "hreflang"


ismap : Bool -> W3.Attribute { compatible | ismap : W3.Supported }
ismap =
    W3.bool "ismap"


kind :
    W3.Value
        { subtitles : W3.SupportedValue
        , captions : W3.SupportedValue
        , description : W3.SupportedValue
        , chapters : W3.SupportedValue
        , metadata : W3.SupportedValue
        }
    -> W3.Attribute { compatible | kind : W3.Supported }
kind =
    W3.value "kind"


label : String -> W3.Attribute { compatible | label : W3.Supported }
label =
    W3.string "label"


list : String -> W3.Attribute { compatible | list : W3.Supported }
list =
    W3.string "list"


loop : Bool -> W3.Attribute { compatible | loop : W3.Supported }
loop =
    W3.bool "loop"


low : Int -> W3.Attribute { compatible | low : W3.Supported }
low =
    W3.number "low"


marker :
    W3.Value
        { ordinal : W3.SupportedValue
        , lowerAlpha : W3.SupportedValue
        , upperAlpha : W3.SupportedValue
        , lowerRoman : W3.SupportedValue
        , upperRoman : W3.SupportedValue
        }
    -> W3.Attribute { compatible | marker : W3.Supported }
marker =
    W3.value "type"


max : Int -> W3.Attribute { compatible | max : W3.Supported }
max =
    W3.number "max"


maxlength : Int -> W3.Attribute { compatible | maxlength : W3.Supported }
maxlength =
    W3.number "maxlength"


media : String -> W3.Attribute { compatible | media : W3.Supported }
media =
    W3.string "media"


method :
    W3.Value
        { get : W3.SupportedValue
        , post : W3.SupportedValue
        , dialog : W3.SupportedValue
        }
    -> W3.Attribute { compatible | method : W3.Supported }
method =
    W3.value "method"


mimeType : String -> W3.Attribute { compatible | mimeType : W3.Supported }
mimeType =
    W3.string "type"


min : Int -> W3.Attribute { compatible | min : W3.Supported }
min =
    W3.number "min"


minlength : Int -> W3.Attribute { compatible | minlength : W3.Supported }
minlength =
    W3.number "minlength"


multiple : Bool -> W3.Attribute { compatible | multiple : W3.Supported }
multiple =
    W3.bool "multiple"


muted : Bool -> W3.Attribute { compatible | muted : W3.Supported }
muted =
    W3.bool "muted"


name : String -> W3.Attribute { compatible | name : W3.Supported }
name =
    W3.string "name"


novalidate : Bool -> W3.Attribute { compatible | novalidate : W3.Supported }
novalidate =
    W3.bool "novalidate"


open : Bool -> W3.Attribute { compatible | open : W3.Supported }
open =
    W3.bool "open"


optimum : Int -> W3.Attribute { compatible | optimum : W3.Supported }
optimum =
    W3.number "optimum"


ordinalValue : Int -> W3.Attribute { compatible | ordinalValue : W3.Supported }
ordinalValue =
    W3.number "value"


pattern : String -> W3.Attribute { compatible | pattern : W3.Supported }
pattern =
    W3.string "pattern"


ping : List String -> W3.Attribute { compatible | ping : W3.Supported }
ping =
    W3.tokens "ping"


placeholder : String -> W3.Attribute { compatible | placeholder : W3.Supported }
placeholder =
    W3.string "placeholder"


playsinline : Bool -> W3.Attribute { compatible | playsinline : W3.Supported }
playsinline =
    W3.bool "playsinline"


poster : String -> W3.Attribute { compatible | poster : W3.Supported }
poster =
    W3.string "poster"


preload :
    W3.Value
        { none : W3.SupportedValue
        , metadata : W3.SupportedValue
        , auto : W3.SupportedValue
        }
    -> W3.Attribute { compatible | preload : W3.Supported }
preload =
    W3.value "preload"


readonly : Bool -> W3.Attribute { compatible | readonly : W3.Supported }
readonly =
    W3.bool "readonly"


referrerPolicy : String -> W3.Attribute { compatible | referrerPolicy : W3.Supported }
referrerPolicy =
    W3.string "referrerpolicy"


rel : Set String -> W3.Attribute { compatible | rel : W3.Supported }
rel =
    W3.uniqueTokens "rel"


required : Bool -> W3.Attribute { compatible | required : W3.Supported }
required =
    W3.bool "required"


reversed : Bool -> W3.Attribute { compatible | reversed : W3.Supported }
reversed =
    W3.bool "reversed"


rows : Int -> W3.Attribute { compatible | rows : W3.Supported }
rows =
    W3.number "rows"


rowspan : Int -> W3.Attribute { compatible | rowspan : W3.Supported }
rowspan =
    W3.number "rowspan"


sandbox :
    List
        (W3.Value
            { allowForms : W3.SupportedValue
            , allowModals : W3.SupportedValue
            , allowOrientationLock : W3.SupportedValue
            , allowPointerLock : W3.SupportedValue
            , allowPopups : W3.SupportedValue
            , allowPopupsToEscapeSandbox : W3.SupportedValue
            , allowPresentation : W3.SupportedValue
            , allowSameOrigin : W3.SupportedValue
            , allowScripts : W3.SupportedValue
            , allowTopNavigation : W3.SupportedValue
            , allowTopNavigationByUserActivation : W3.SupportedValue
            }
        )
    -> W3.Attribute { compatible | sandbox : W3.Supported }
sandbox =
    W3.values "sandbox"


scope :
    W3.Value
        { row : W3.SupportedValue
        , col : W3.SupportedValue
        , rowgroup : W3.SupportedValue
        , colgroup : W3.SupportedValue
        , auto : W3.SupportedValue
        }
    -> W3.Attribute { compatible | scope : W3.Supported }
scope =
    W3.value "scope"


selected : Bool -> W3.Attribute { compatible | selected : W3.Supported }
selected =
    W3.bool "selected"


shape :
    W3.Value
        { circle : W3.SupportedValue
        , circ : W3.SupportedValue
        , default_ : W3.SupportedValue
        , poly : W3.SupportedValue
        , polygon : W3.SupportedValue
        , rect : W3.SupportedValue
        , rectangle : W3.SupportedValue
        }
    -> W3.Attribute { shape | start : W3.Supported }
shape =
    W3.value "shape"


size : Int -> W3.Attribute { compatible | size : W3.Supported }
size =
    W3.number "size"


span : Int -> W3.Attribute { compatible | span : W3.Supported }
span =
    W3.number "span"


start : Int -> W3.Attribute { compatible | start : W3.Supported }
start =
    W3.number "start"


step : Int -> W3.Attribute { compatible | step : W3.Supported }
step =
    W3.number "step"


src : String -> W3.Attribute { compatible | src : W3.Supported }
src =
    W3.string "src"


srcdoc : String -> W3.Attribute { compatible | srcdoc : W3.Supported }
srcdoc =
    W3.string "srcdoc"


srclang : String -> W3.Attribute { compatible | srclang : W3.Supported }
srclang =
    W3.string "srclang"


srcset : List String -> W3.Attribute { compatible | srcset : W3.Supported }
srcset =
    W3.tokens "srcset"


sizes : List String -> W3.Attribute { compatible | sizes : W3.Supported }
sizes =
    W3.tokens "sizes"


target :
    W3.Value
        { blank : W3.SupportedValue
        , self : W3.SupportedValue
        , parent : W3.SupportedValue
        , top : W3.SupportedValue
        , frame : W3.SupportedValue
        }
    -> W3.Attribute { compatible | target : W3.Supported }
target =
    W3.value "target"


inputType : String -> W3.Attribute { compatible | inputType : W3.Supported }
inputType =
    W3.string "type"


usemap : String -> W3.Attribute { compatible | usemap : W3.Supported }
usemap =
    W3.string "usemap"


value : String -> W3.Attribute { compatible | value : W3.Supported }
value =
    W3.string "value"


width : Int -> W3.Attribute { compatible | width : W3.Supported }
width =
    W3.number "width"


wrap :
    W3.Value
        { soft : W3.SupportedValue
        , hard : W3.SupportedValue
        }
    -> W3.Attribute { compatible | wrap : W3.Supported }
wrap =
    W3.value "wrap"


allowForms : W3.Value { compatible | allowForms : W3.SupportedValue }
allowForms =
    W3.Value "allow-forms"


allowModals : W3.Value { compatible | allowModals : W3.SupportedValue }
allowModals =
    W3.Value "allow-modals"


allowOrientationLock : W3.Value { compatible | allowOrientationLock : W3.SupportedValue }
allowOrientationLock =
    W3.Value "allow-orientation-lock"


allowPointerLock : W3.Value { compatible | allowPointerLock : W3.SupportedValue }
allowPointerLock =
    W3.Value "allow-pointer-lock"


allowPopups : W3.Value { compatible | allowPopups : W3.SupportedValue }
allowPopups =
    W3.Value "allow-popups"


allowPopupsToEscapeSandbox : W3.Value { compatible | allowPopupsToEscapeSandbox : W3.SupportedValue }
allowPopupsToEscapeSandbox =
    W3.Value "allow-popups-to-escape-sandbox"


allowPresentation : W3.Value { compatible | allowPresentation : W3.SupportedValue }
allowPresentation =
    W3.Value "allow-presentation"


allowSameOrigin : W3.Value { compatible | allowSameOrigin : W3.SupportedValue }
allowSameOrigin =
    W3.Value "allow-same-origin"


allowScripts : W3.Value { compatible | allowScripts : W3.SupportedValue }
allowScripts =
    W3.Value "allow-scripts"


allowTopNavigation : W3.Value { compatible | allowTopNavigation : W3.SupportedValue }
allowTopNavigation =
    W3.Value "allow-top-navigation"


allowTopNavigationByUserActivation : W3.Value { compatible | allowTopNavigationByUserActivation : W3.SupportedValue }
allowTopNavigationByUserActivation =
    W3.Value "allow-top-navigation-by-user-activation"


anonymous : W3.Value { compatible | anonymous : W3.SupportedValue }
anonymous =
    W3.Value "anonymous"


{-| -}
auto : W3.Value { compatible | auto : W3.SupportedValue }
auto =
    W3.Value "auto"


{-| -}
async : W3.Value { compatible | async : W3.SupportedValue }
async =
    W3.Value "async"


blank : W3.Value { compatible | blank : W3.SupportedValue }
blank =
    W3.Value "_blank"


button : W3.Value { compatible | button : W3.SupportedValue }
button =
    W3.Value "button"


{-| -}
captions : W3.Value { compatible | captions : W3.SupportedValue }
captions =
    W3.Value "captions"


{-| -}
chapters : W3.Value { compatible | chapters : W3.SupportedValue }
chapters =
    W3.Value "chapters"


{-| -}
characters : W3.Value { compatible | characters : W3.SupportedValue }
characters =
    W3.Value "characters"


{-| -}
circ : W3.Value { compatible | circ : W3.SupportedValue }
circ =
    W3.Value "circ"


{-| -}
circle : W3.Value { compatible | circle : W3.SupportedValue }
circle =
    W3.Value "circle"


{-| -}
col : W3.Value { compatible | col : W3.SupportedValue }
col =
    W3.Value "col"


{-| -}
colgroup : W3.Value { compatible | colgroup : W3.SupportedValue }
colgroup =
    W3.Value "colgroup"


{-| -}
decimal : W3.Value { compatible | decimal : W3.SupportedValue }
decimal =
    W3.Value "decimal"


{-| -}
default_ : W3.Value { compatible | default_ : W3.SupportedValue }
default_ =
    W3.Value "default"


{-| -}
description : W3.Value { compatible | description : W3.SupportedValue }
description =
    W3.Value "description"


{-| -}
dialog : W3.Value { compatible | dialog : W3.SupportedValue }
dialog =
    W3.Value "dialog"


{-| -}
done : W3.Value { compatible | done : W3.SupportedValue }
done =
    W3.Value "done"


{-| -}
email : W3.Value { compatible | email : W3.SupportedValue }
email =
    W3.Value "email"


{-| -}
enter : W3.Value { compatible | enter : W3.SupportedValue }
enter =
    W3.Value "enter"


formData : W3.Value { compatible | formData : W3.SupportedValue }
formData =
    W3.Value "multipart/form-data"


formUrlEncoded : W3.Value { compatible | formUrlEncoded : W3.SupportedValue }
formUrlEncoded =
    W3.Value "application/x-www-form-urlencoded"


frame : String -> W3.Value { compatible | frame : W3.SupportedValue }
frame val =
    W3.Value val


{-| -}
get : W3.Value { compatible | get : W3.SupportedValue }
get =
    W3.Value "get"


{-| -}
go : W3.Value { compatible | go : W3.SupportedValue }
go =
    W3.Value "go"


{-| -}
hard : W3.Value { compatible | hard : W3.SupportedValue }
hard =
    W3.Value "hard"


lowerAlpha : W3.Value { compatible | lowerAlpha : W3.SupportedValue }
lowerAlpha =
    W3.Value "a"


lowerRoman : W3.Value { compatible | lowerRoman : W3.SupportedValue }
lowerRoman =
    W3.Value "i"


{-| -}
ltr : W3.Value { compatible | ltr : W3.SupportedValue }
ltr =
    W3.Value "ltr"


metadata : W3.Value { compatible | metadata : W3.SupportedValue }
metadata =
    W3.Value "metadata"


{-| -}
next : W3.Value { compatible | next : W3.SupportedValue }
next =
    W3.Value "next"


{-| -}
none : W3.Value { compatible | none : W3.SupportedValue }
none =
    W3.Value "none"


{-| -}
numeric : W3.Value { compatible | numeric : W3.SupportedValue }
numeric =
    W3.Value "numeric"


{-| -}
off : W3.Value { compatible | off : W3.SupportedValue }
off =
    W3.Value "off"


{-| -}
on : W3.Value { compatible | on : W3.SupportedValue }
on =
    W3.Value "on"


ordinal : W3.Value { compatible | ordinal : W3.SupportedValue }
ordinal =
    W3.Value "1"


parent : W3.Value { compatible | parent : W3.SupportedValue }
parent =
    W3.Value "_parent"


plainText : W3.Value { compatible | plainText : W3.SupportedValue }
plainText =
    W3.Value "text/plain"


poly : W3.Value { compatible | poly : W3.SupportedValue }
poly =
    W3.Value "poly"


polygon : W3.Value { compatible | polygon : W3.SupportedValue }
polygon =
    W3.Value "polygon"


post : W3.Value { compatible | post : W3.SupportedValue }
post =
    W3.Value "post"


{-| -}
previous : W3.Value { compatible | previous : W3.SupportedValue }
previous =
    W3.Value "previous"


{-| -}
rect : W3.Value { compatible | rect : W3.SupportedValue }
rect =
    W3.Value "rect"


{-| -}
rectangle : W3.Value { compatible | rectangle : W3.SupportedValue }
rectangle =
    W3.Value "rectangle"


{-| -}
reset : W3.Value { compatible | reset : W3.SupportedValue }
reset =
    W3.Value "reset"


{-| -}
row : W3.Value { compatible | row : W3.SupportedValue }
row =
    W3.Value "row"


{-| -}
rowgroup : W3.Value { compatible | rowgroup : W3.SupportedValue }
rowgroup =
    W3.Value "rowgroup"


{-| -}
rtl : W3.Value { compatible | rtl : W3.SupportedValue }
rtl =
    W3.Value "rtl"


{-| -}
search : W3.Value { compatible | search : W3.SupportedValue }
search =
    W3.Value "search"


self : W3.Value { compatible | self : W3.SupportedValue }
self =
    W3.Value "_self"


{-| -}
send : W3.Value { compatible | send : W3.SupportedValue }
send =
    W3.Value "send"


{-| -}
sentences : W3.Value { compatible | sentences : W3.SupportedValue }
sentences =
    W3.Value "sentences"


{-| -}
soft : W3.Value { compatible | soft : W3.SupportedValue }
soft =
    W3.Value "soft"


{-| -}
submit : W3.Value { compatible | submit : W3.SupportedValue }
submit =
    W3.Value "submit"


{-| -}
subtitles : W3.Value { compatible | subtitles : W3.SupportedValue }
subtitles =
    W3.Value "subtitles"


{-| -}
sync : W3.Value { compatible | sync : W3.SupportedValue }
sync =
    W3.Value "sync"


{-| -}
tel : W3.Value { compatible | tel : W3.SupportedValue }
tel =
    W3.Value "tel"


{-| -}
text : W3.Value { compatible | text : W3.SupportedValue }
text =
    W3.Value "text"


top : W3.Value { compatible | top : W3.SupportedValue }
top =
    W3.Value "_top"


upperAlpha : W3.Value { compatible | upperAlpha : W3.SupportedValue }
upperAlpha =
    W3.Value "A"


upperRoman : W3.Value { compatible | upperRoman : W3.SupportedValue }
upperRoman =
    W3.Value "I"


{-| -}
url : W3.Value { compatible | url : W3.SupportedValue }
url =
    W3.Value "url"


useCredentials : W3.Value { compatible | useCredentials : W3.SupportedValue }
useCredentials =
    W3.Value "use-credentials"


{-| -}
words : W3.Value { compatible | words : W3.SupportedValue }
words =
    W3.Value "words"
