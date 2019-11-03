module W3.Html.Attributes exposing
    ( Value
    , accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate
    , abbr, accept, acceptcharset, action, allow, allowfullscreen, allowpaymentrequest, alt, autocomplete, autoplay, buttonType, checked, cite, cols, colspan, controls, coords, crossorigin, data, datetime, decoding, default, dirname, disabled, download, enctype, for, form, formaction, formenctype, formmethod, formnovalidate, formtarget, headers, height, high, href, hreflang, inputType, ismap, kind, label, list, loop, low, marker, max, maxlength, media, method, mimeType, min, minlength, multiple, muted, name, novalidate, open, optimum, ordinalValue, pattern, ping, placeholder, playsinline, poster, preload, readonly, referrerpolicy, rel, required, reversed, rows, rowspan, sandbox, scope, selected, shape, size, span, start, step, src, srcdoc, srclang, srcset, sizes, target, usemap, value, width, wrap
    , allowForms, allowModals, allowOrientationLock, allowPointerLock, allowPopups, allowPopupsToEscapeSandbox, allowPresentation, allowSameOrigin, allowScripts, allowTopNavigation, allowTopNavigationByUserActivation, anonymous, auto, async, blank, button, captions, chapters, characters, circ, circle, col, colgroup, decimal, default_, description, dialog, done, email, enter, formData, formUrlEncoded, frame, get, go, hard, lowerAlpha, lowerRoman, ltr, metadata, next, none, numeric, off, on, ordinal, parent, plainText, poly, polygon, post, previous, rect, rectangle, reset, rowgroup, rtl, search, self, send, sentences, soft, submit, subtitles, sync, tel, text, top, upperAlpha, upperRoman, url, useCredentials, words
    , attribute
    )

{-| Module that defines all HTML attributes and values


# Types

@docs Value


# Global Attributes

These Attributes can be assigned to any HTML element as defined by [html.spec.whatwg.org/GlobalAttributes](https://html.spec.whatwg.org/multipage/dom.html#global-attributes)

@docs accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate


# Attributes

These Attributes may be assigned to only specific elements. That is defined on a per-element basis.

@docs abbr, accept, acceptcharset, action, allow, allowfullscreen, allowpaymentrequest, alt, autocomplete, autoplay, buttonType, checked, cite, cols, colspan, controls, coords, crossorigin, data, datetime, decoding, default, dirname, disabled, download, enctype, for, form, formaction, formenctype, formmethod, formnovalidate, formtarget, headers, height, high, href, hreflang, inputType, ismap, kind, label, list, loop, low, marker, max, maxlength, media, method, mimeType, min, minlength, multiple, muted, name, novalidate, open, optimum, ordinalValue, pattern, ping, placeholder, playsinline, poster, preload, readonly, referrerpolicy, rel, required, reversed, rows, rowspan, sandbox, scope, selected, shape, size, span, start, step, src, srcdoc, srclang, srcset, sizes, target, usemap, value, width, wrap


# Values

All of the enumerated values that particular Attributes may have.

@docs allowForms, allowModals, allowOrientationLock, allowPointerLock, allowPopups, allowPopupsToEscapeSandbox, allowPresentation, allowSameOrigin, allowScripts, allowTopNavigation, allowTopNavigationByUserActivation, anonymous, auto, async, blank, button, captions, chapters, characters, circ, circle, col, colgroup, decimal, default_, description, dialog, done, email, enter, formData, formUrlEncoded, frame, get, go, hard, lowerAlpha, lowerRoman, ltr, metadata, next, none, numeric, off, on, ordinal, parent, plainText, poly, polygon, post, previous, rect, rectangle, reset, rowgroup, rtl, search, self, send, sentences, soft, submit, subtitles, sync, tel, text, top, upperAlpha, upperRoman, url, useCredentials, words


# Escape Hatch

@docs attribute


# Not Supported

Some Attributes are not supported as they either break elm's guarantee or they are assignable to elements that are not supported as part of this package's use and guarantee.

  - [as](https://html.spec.whatwg.org/multipage/semantics.html#attr-link-as)
  - [async](https://html.spec.whatwg.org/multipage/scripting.html#attr-script-async)
  - [charset](https://html.spec.whatwg.org/multipage/semantics.html#attr-meta-charset)
  - [color](https://html.spec.whatwg.org/multipage/semantics.html#attr-link-color)
  - [content](https://html.spec.whatwg.org/multipage/semantics.html#attr-meta-content)
  - [defer](https://html.spec.whatwg.org/multipage/scripting.html#attr-script-defer)
  - [http-equiv](https://html.spec.whatwg.org/multipage/semantics.html#attr-meta-http-equiv)
  - [imagesizes](https://html.spec.whatwg.org/multipage/semantics.html#attr-link-imagesizes)
  - [imagesrcset](https://html.spec.whatwg.org/multipage/semantics.html#attr-link-imagesrcset)
  - [integrity](https://html.spec.whatwg.org/multipage/semantics.html#attr-link-integrity)
  - [manifest](https://html.spec.whatwg.org/multipage/semantics.html#attr-html-manifest)
  - [nomodule](https://html.spec.whatwg.org/multipage/scripting.html#attr-script-nomodule)

-}

import Set exposing (Set)
import W3.Html.Help as Html


{-| -}
type alias Value a =
    Html.Value a


{-| Follows the attribute definition at [html.spec.whatwg.org/accesskey](https://html.spec.whatwg.org/multipage/interaction.html#the-accesskey-attribute)
-}
accesskey : Set String -> Html.Attribute { compatible | accesskey : Html.Supported }
accesskey =
    Html.uniqueTokens "accesskey"


{-| Follows the attribute definition at [html.spec.whatwg.org/autocapitalize](https://html.spec.whatwg.org/multipage/interaction.html#attr-autocapitalize)
-}
autocapitalize :
    Html.Value
        { off : Html.SupportedValue
        , none : Html.SupportedValue
        , on : Html.SupportedValue
        , sentences : Html.SupportedValue
        , words : Html.SupportedValue
        , characters : Html.SupportedValue
        }
    -> Html.Attribute { compatible | autocapitalize : Html.Supported }
autocapitalize =
    Html.value "autocapitalize"


{-| Follows the attribute definition at [html.spec.whatwg.org/autofocus](https://html.spec.whatwg.org/multipage/interaction.html#attr-fe-autofocus)
-}
autofocus : Bool -> Html.Attribute { compatible | autofocus : Html.Supported }
autofocus =
    Html.bool "autofocus"


{-| Follows the attribute definition at [html.spec.whatwg.org/class](https://html.spec.whatwg.org/multipage/dom.html#classes)
-}
class : List String -> Html.Attribute { compatible | class : Html.Supported }
class =
    Html.tokens "class"


{-| Follows the attribute definition at [html.spec.whatwg.org/contenteditable](https://html.spec.whatwg.org/multipage/interaction.html#attr-contenteditable)
-}
contenteditable : Maybe Bool -> Html.Attribute { compatible | contenteditable : Html.Supported }
contenteditable =
    Html.maybeBool "contenteditable" ""


{-| Follows the attribute definition at [html.spec.whatwg.org/custom data](https://html.spec.whatwg.org/multipage/dom.html#custom-data-attribute)
-}
data_ : String -> String -> Html.Attribute { compatible | data_ : Html.Supported }
data_ key val =
    Html.Attribute ("data-" ++ key) val


{-| Follows the attribute definition at [html.spec.whatwg.org/dir](https://html.spec.whatwg.org/multipage/dom.html#the-dir-attribute)
-}
dir :
    Html.Value
        { ltr : Html.SupportedValue
        , rtl : Html.SupportedValue
        , auto : Html.SupportedValue
        }
    -> Html.Attribute { compatible | dir : Html.Supported }
dir =
    Html.value "dir"


{-| Follows the attribute definition at [html.spec.whatwg.org/draggable](https://html.spec.whatwg.org/multipage/dnd.html#the-draggable-attribute)
-}
draggable : Maybe Bool -> Html.Attribute { compatible | draggable : Html.Supported }
draggable =
    Html.maybeBool "draggable" ""


{-| Follows the attribute definition at [html.spec.whatwg.org/enterkeyhint](https://html.spec.whatwg.org/multipage/interaction.html#attr-enterkeyhint)
-}
enterkeyhint :
    Html.Value
        { enter : Html.SupportedValue
        , done : Html.SupportedValue
        , go : Html.SupportedValue
        , next : Html.SupportedValue
        , previous : Html.SupportedValue
        , search : Html.SupportedValue
        , send : Html.SupportedValue
        }
    -> Html.Attribute { compatible | enterkeyhint : Html.Supported }
enterkeyhint =
    Html.value "enterkeyhint"


{-| Follows the attribute definition at [html.spec.whatwg.org/hidden](https://html.spec.whatwg.org/multipage/interaction.html#the-hidden-attribute)
-}
hidden : Bool -> Html.Attribute { compatible | hidden : Html.Supported }
hidden =
    Html.bool "hidden"


{-| Follows the attribute definition at [html.spec.whatwg.org/id](https://html.spec.whatwg.org/multipage/dom.html#the-id-attribute)
-}
id : String -> Html.Attribute { compatible | id : Html.Supported }
id =
    Html.string "id"


{-| Follows the attribute definition at [html.spec.whatwg.org/inputmode](https://html.spec.whatwg.org/multipage/interaction.html#attr-inputmode)
-}
inputmode :
    Html.Value
        { none : Html.SupportedValue
        , text : Html.SupportedValue
        , tel : Html.SupportedValue
        , url : Html.SupportedValue
        , email : Html.SupportedValue
        , numeric : Html.SupportedValue
        , decimal : Html.SupportedValue
        , search : Html.SupportedValue
        }
    -> Html.Attribute { compatible | inputmode : Html.Supported }
inputmode =
    Html.value "inputmode"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemid](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemid)
-}
itemid : String -> Html.Attribute { compatible | itemid : Html.Supported }
itemid =
    Html.string "itemid"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemprop](https://html.spec.whatwg.org/multipage/microdata.html#names:-the-itemprop-attribute)
-}
itemprop : Set String -> Html.Attribute { compatible | itemprop : Html.Supported }
itemprop =
    Html.uniqueTokens "itemprop"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemref](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemref)
-}
itemref : Set String -> Html.Attribute { compatible | itemref : Html.Supported }
itemref =
    Html.uniqueTokens "itemref"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemscope](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemscope)
-}
itemscope : Bool -> Html.Attribute { compatible | itemscope : Html.Supported }
itemscope =
    Html.bool "itemscope"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemtype](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemtype)
-}
itemtype : Set String -> Html.Attribute { compatible | itemtype : Html.Supported }
itemtype =
    Html.uniqueTokens "itemtype"


{-| Follows the attribute definition at [html.spec.whatwg.org/lang](https://html.spec.whatwg.org/multipage/dom.html#attr-lang)
-}
lang : String -> Html.Attribute { compatible | lang : Html.Supported }
lang =
    Html.string "lang"


{-| Follows the attribute definition at [html.spec.whatwg.org/nonce](https://html.spec.whatwg.org/multipage/urls-and-fetching.html#attr-nonce)
-}
nonce : Int -> Html.Attribute { compatible | nonce : Html.Supported }
nonce =
    Html.number "nonce"


{-| Follows the attribute definition at [html.spec.whatwg.org/slot](https://html.spec.whatwg.org/multipage/dom.html#the-id-attribute)
-}
slot : String -> Html.Attribute { compatible | slot : Html.Supported }
slot =
    Html.string "slot"


{-| Follows the attribute definition at [html.spec.whatwg.org/spellcheck](https://html.spec.whatwg.org/multipage/interaction.html#attr-spellcheck)
-}
spellcheck : Maybe Bool -> Html.Attribute { compatible | spellcheck : Html.Supported }
spellcheck =
    Html.maybeBool "spellcheck" ""


{-| Follows the attribute definition at [html.spec.whatwg.org/style](https://html.spec.whatwg.org/multipage/dom.html#the-style-attribute)
-}
style : String -> Html.Attribute { compatible | style : Html.Supported }
style =
    Html.string "style"


{-| Follows the attribute definition at [html.spec.whatwg.org/tabindex](https://html.spec.whatwg.org/multipage/interaction.html#attr-tabindex)
-}
tabindex : Int -> Html.Attribute { compatible | tabindex : Html.Supported }
tabindex =
    Html.number "tabindex"


{-| Follows the attribute definition at [html.spec.whatwg.org/title](https://html.spec.whatwg.org/multipage/dom.html#attr-title)
-}
title : String -> Html.Attribute { compatible | title : Html.Supported }
title =
    Html.string "title"


{-| Follows the attribute definition at [html.spec.whatwg.org/translate](https://html.spec.whatwg.org/multipage/dom.html#attr-translate)
-}
translate :
    Html.Value
        { yes : Html.SupportedValue
        , no : Html.SupportedValue
        }
    -> Html.Attribute { compatible | translate : Html.Supported }
translate =
    Html.value "translate"


{-| Follows the attribute definition at [html.spec.whatwg.org/abbr](https://html.spec.whatwg.org/multipage/tables.html#attr-th-abbr)
-}
abbr : String -> Html.Attribute { compatible | abbr : Html.Supported }
abbr =
    Html.string "abbr"


{-| Follows the attribute definition at [html.spec.whatwg.org/accept](https://html.spec.whatwg.org/multipage/input.html#attr-input-accept)
-}
accept : List String -> Html.Attribute { compatible | acceptcharset : Html.Supported }
accept values =
    Html.Attribute "accept" (String.join "," values)


{-| Follows the attribute definition at [html.spec.whatwg.org/acceptcharset](https://html.spec.whatwg.org/multipage/forms.html#attr-form-accept-charset)
-}
acceptcharset : Set String -> Html.Attribute { compatible | acceptcharset : Html.Supported }
acceptcharset =
    Html.uniqueTokens "acceptcharset"


{-| Follows the attribute definition at [html.spec.whatwg.org/action](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-action)
-}
action : String -> Html.Attribute { compatible | action : Html.Supported }
action =
    Html.string "action"


{-| Follows the attribute definition at [html.spec.whatwg.org/allow](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allow)
-}
allow : String -> Html.Attribute { compatible | allow : Html.Supported }
allow =
    Html.string "allow"


{-| Follows the attribute definition at [html.spec.whatwg.org/allowfullscreen](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allowfullscreen)
-}
allowfullscreen : Bool -> Html.Attribute { compatible | allowfullscreen : Html.Supported }
allowfullscreen =
    Html.bool "allowfullscreen"


{-| Follows the attribute definition at [html.spec.whatwg.org/allowpaymentrequest](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allowpaymentrequest)
-}
allowpaymentrequest : Bool -> Html.Attribute { compatible | allowpaymentrequest : Html.Supported }
allowpaymentrequest =
    Html.bool "allowpaymentrequest"


{-| Follows the attribute definition at [html.spec.whatwg.org/area-alt](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-alt),
[html.spec.whatwg.org/image-alt](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-alt),
[html.spec.whatwg.org/input-alt](https://html.spec.whatwg.org/multipage/input.html#attr-input-alt)
-}
alt : String -> Html.Attribute { compatible | alt : Html.Supported }
alt =
    Html.string "alt"


{-| Follows the attribute definition at [html.spec.whatwg.org/autocomplete](https://html.spec.whatwg.org/multipage/forms.html#attr-form-autocomplete)
-}
autocomplete :
    Html.Value
        { on : Html.SupportedValue
        , off : Html.SupportedValue
        }
    -> Html.Attribute { compatible | autocomplete : Html.Supported }
autocomplete =
    Html.value "autocomplete"


{-| Follows the attribute definition at [html.spec.whatwg.org/autoplay](https://html.spec.whatwg.org/multipage/media.html#attr-media-autoplay),
-}
autoplay : Bool -> Html.Attribute { compatible | autoplay : Html.Supported }
autoplay =
    Html.bool "autoplay"


{-| Follows the attribute definition at [html.spec.whatwg.org/button-type](https://html.spec.whatwg.org/multipage/form-elements.html#attr-button-type)
-}
buttonType :
    Html.Value
        { submit : Html.SupportedValue
        , reset : Html.SupportedValue
        , button : Html.SupportedValue
        }
    -> Html.Attribute { compatible | buttonType : Html.Supported }
buttonType =
    Html.value "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/checked](https://html.spec.whatwg.org/multipage/input.html#attr-input-checked)
-}
checked : Bool -> Html.Attribute { compatible | checked : Html.Supported }
checked =
    Html.bool "checked"


{-| Follows the attribute definition at [html.spec.whatwg.org/blockquote-cite](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-blockquote-cite),
[html.spec.whatwg.org/mod-cite](https://html.spec.whatwg.org/multipage/edits.html#attr-mod-cite),
[html.spec.whatwg.org/q-cite](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-q-cite)
-}
cite : String -> Html.Attribute { compatible | cite : Html.Supported }
cite =
    Html.string "cite"


{-| Follows the attribute definition at [html.spec.whatwg.org/cols](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-cols)
-}
cols : Int -> Html.Attribute { compatible | cols : Html.Supported }
cols =
    Html.number "cols"


{-| Follows the attribute definition at [html.spec.whatwg.org/colspan](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-colspan)
-}
colspan : Int -> Html.Attribute { compatible | colspan : Html.Supported }
colspan =
    Html.number "colspan"


{-| Follows the attribute definition at [html.spec.whatwg.org/controls](https://html.spec.whatwg.org/multipage/media.html#attr-media-controls)
-}
controls : Bool -> Html.Attribute { compatible | controls : Html.Supported }
controls =
    Html.bool "controls"


{-| Follows the attribute definition at [html.spec.whatwg.org/coords](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-coords)
-}
coords : List Int -> Html.Attribute { compatible | coords : Html.Supported }
coords numbers =
    Html.Attribute "coords" (List.map String.fromInt numbers |> String.join ",")


{-| Follows the attribute definition at [html.spec.whatwg.org/media-crossorigin](https://html.spec.whatwg.org/multipage/media.html#attr-media-crossorigin),
[html.spec.whatwg.org/img-crossorigin](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-crossorigin)
-}
crossorigin :
    Html.Value
        { anonymous : Html.SupportedValue
        , useCredentials : Html.SupportedValue
        }
    -> Html.Attribute { compatible | crossorigin : Html.Supported }
crossorigin =
    Html.value "crossorigin"


{-| Follows the attribute definition at [html.spec.whatwg.org/data](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-data)
-}
data : String -> Html.Attribute { compatible | data : Html.Supported }
data =
    Html.string "data"


{-| Follows the attribute definition at [html.spec.whatwg.org/mod-datetime](https://html.spec.whatwg.org/multipage/edits.html#attr-mod-datetime),
[html.spec.whatwg.org/time-datetime](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-time-datetime)
-}
datetime : String -> Html.Attribute { compatible | datetime : Html.Supported }
datetime =
    Html.string "datetime"


{-| Follows the attribute definition at [html.spec.whatwg.org/decoding](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-decoding)
-}
decoding :
    Html.Value
        { sync : Html.SupportedValue
        , asyc : Html.SupportedValue
        , auto : Html.SupportedValue
        }
    -> Html.Attribute { compatible | decoding : Html.Supported }
decoding =
    Html.value "decoding"


{-| Follows the attribute definition at [html.spec.whatwg.org/default](https://html.spec.whatwg.org/multipage/media.html#attr-track-default)
-}
default : Bool -> Html.Attribute { compatible | default : Html.Supported }
default =
    Html.bool "default"


{-| Follows the attribute definition at [html.spec.whatwg.org/dirname](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-dirname)
-}
dirname : String -> Html.Attribute { compatible | dirname : Html.Supported }
dirname =
    Html.string "dirname"


{-| Follows the attribute definition at [html.spec.whatwg.org/disabled](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-disabled),
[html.spec.whatwg.org/fieldset-disabled](https://html.spec.whatwg.org/multipage/form-elements.html#attr-fieldset-disabled)
-}
disabled : Bool -> Html.Attribute { compatible | disabled : Html.Supported }
disabled =
    Html.bool "disabled"


{-| Follows the attribute definition at [html.spec.whatwg.org/download](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-download)
-}
download : String -> Html.Attribute { compatible | download : Html.Supported }
download =
    Html.string "download"


{-| Follows the attribute definition at [html.spec.whatwg.org/enctype](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-enctype)
-}
enctype :
    Html.Value
        { formUrlEncoded : Html.SupportedValue
        , formData : Html.SupportedValue
        , plainText : Html.SupportedValue
        }
    -> Html.Attribute { compatible | enctype : Html.Supported }
enctype =
    Html.value "enctype"


{-| Follows the attribute definition at [html.spec.whatwg.org/label-for](https://html.spec.whatwg.org/multipage/forms.html#attr-label-for),
[html.spec.whatwg.org/output-for](https://html.spec.whatwg.org/multipage/form-elements.html#attr-output-for)
-}
for : String -> Html.Attribute { compatible | for : Html.Supported }
for =
    Html.string "for"


{-| Follows the attribute definition at [html.spec.whatwg.org/form](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fae-form)
-}
form : String -> Html.Attribute { compatible | form : Html.Supported }
form =
    Html.string "form"


{-| Follows the attribute definition at [html.spec.whatwg.org/formaction](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formaction)
-}
formaction : String -> Html.Attribute { compatible | formaction : Html.Supported }
formaction =
    Html.string "formaction"


{-| Follows the attribute definition at [html.spec.whatwg.org/formenctype](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formenctype)
-}
formenctype :
    Html.Value
        { formUrlEncoded : Html.SupportedValue
        , formData : Html.SupportedValue
        , plainText : Html.SupportedValue
        }
    -> Html.Attribute { compatible | formenctype : Html.Supported }
formenctype =
    Html.value "formenctype"


{-| Follows the attribute definition at [html.spec.whatwg.org/formmethod](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formmethod)
-}
formmethod :
    Html.Value
        { get : Html.SupportedValue
        , post : Html.SupportedValue
        , dialog : Html.SupportedValue
        }
    -> Html.Attribute { compatible | formmethod : Html.Supported }
formmethod =
    Html.value "formmethod"


{-| Follows the attribute definition at [html.spec.whatwg.org/formnovalidate](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formnovalidate)
-}
formnovalidate : Bool -> Html.Attribute { compatible | formnovalidate : Html.Supported }
formnovalidate =
    Html.bool "formnovalidate"


{-| Follows the attribute definition at [html.spec.whatwg.org/formtarget](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formtarget)
-}
formtarget :
    Html.Value
        { blank : Html.SupportedValue
        , self : Html.SupportedValue
        , parent : Html.SupportedValue
        , top : Html.SupportedValue
        , frame : Html.SupportedValue
        }
    -> Html.Attribute { compatible | formtarget : Html.Supported }
formtarget =
    Html.value "formtarget"


{-| Follows the attribute definition at [html.spec.whatwg.org/headers](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-headers)
-}
headers : Set String -> Html.Attribute { compatible | headers : Html.Supported }
headers =
    Html.uniqueTokens "headers"


{-| Follows the attribute definition at [html.spec.whatwg.org/height](https://html.spec.whatwg.org/multipage/embedded-content-other.html#attr-dim-height),
[html.spec.whatwg.org/canvas-height](https://html.spec.whatwg.org/multipage/canvas.html#attr-canvas-height)
-}
height : Int -> Html.Attribute { compatible | height : Html.Supported }
height =
    Html.number "height"


{-| Follows the attribute definition at [html.spec.whatwg.org/high](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-high)
-}
high : Int -> Html.Attribute { compatible | high : Html.Supported }
high =
    Html.number "high"


{-| Follows the attribute definition at [html.spec.whatwg.org/href](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-href)
-}
href : String -> Html.Attribute { compatible | href : Html.Supported }
href =
    Html.string "href"


{-| Follows the attribute definition at [html.spec.whatwg.org/hreflang](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-hreflang)
-}
hreflang : String -> Html.Attribute { compatible | hreflang : Html.Supported }
hreflang =
    Html.string "hreflang"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-type](https://html.spec.whatwg.org/multipage/input.html#attr-input-type)
-}
inputType : String -> Html.Attribute { compatible | inputType : Html.Supported }
inputType =
    Html.string "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/ismap](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-ismap)
-}
ismap : Bool -> Html.Attribute { compatible | ismap : Html.Supported }
ismap =
    Html.bool "ismap"


{-| Follows the attribute definition at [html.spec.whatwg.org/kind](https://html.spec.whatwg.org/multipage/media.html#attr-track-kind)
-}
kind :
    Html.Value
        { subtitles : Html.SupportedValue
        , captions : Html.SupportedValue
        , description : Html.SupportedValue
        , chapters : Html.SupportedValue
        , metadata : Html.SupportedValue
        }
    -> Html.Attribute { compatible | kind : Html.Supported }
kind =
    Html.value "kind"


{-| Follows the attribute definition at [html.spec.whatwg.org/optgroup-label](https://html.spec.whatwg.org/multipage/form-elements.html#attr-optgroup-label),
[html.spec.whatwg.org/option-label](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-label),
[html.spec.whatwg.org/track-label](https://html.spec.whatwg.org/multipage/media.html#attr-track-label)
-}
label : String -> Html.Attribute { compatible | label : Html.Supported }
label =
    Html.string "label"


{-| Follows the attribute definition at [html.spec.whatwg.org/list](https://html.spec.whatwg.org/multipage/input.html#attr-input-list)
-}
list : String -> Html.Attribute { compatible | list : Html.Supported }
list =
    Html.string "list"


{-| Follows the attribute definition at [html.spec.whatwg.org/loop](https://html.spec.whatwg.org/multipage/media.html#attr-media-loop)
-}
loop : Bool -> Html.Attribute { compatible | loop : Html.Supported }
loop =
    Html.bool "loop"


{-| Follows the attribute definition at [html.spec.whatwg.org/low](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-low)
-}
low : Int -> Html.Attribute { compatible | low : Html.Supported }
low =
    Html.number "low"


{-| Follows the attribute definition at [html.spec.whatwg.org/ol-type](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-type)
-}
marker :
    Html.Value
        { ordinal : Html.SupportedValue
        , lowerAlpha : Html.SupportedValue
        , upperAlpha : Html.SupportedValue
        , lowerRoman : Html.SupportedValue
        , upperRoman : Html.SupportedValue
        }
    -> Html.Attribute { compatible | marker : Html.Supported }
marker =
    Html.value "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-max](https://html.spec.whatwg.org/multipage/input.html#attr-input-max),
[html.spec.whatwg.org/meter-max](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-max),
[html.spec.whatwg.org/progress-max](https://html.spec.whatwg.org/multipage/form-elements.html#attr-progress-max)
-}
max : Int -> Html.Attribute { compatible | max : Html.Supported }
max =
    Html.number "max"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-maxlength](https://html.spec.whatwg.org/multipage/input.html#attr-input-maxlength),
[html.spec.whatwg.org/textarea-maxlength](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-maxlength)
-}
maxlength : Int -> Html.Attribute { compatible | maxlength : Html.Supported }
maxlength =
    Html.number "maxlength"


{-| Follows the attribute definition at [html.spec.whatwg.org/media](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-media)
-}
media : String -> Html.Attribute { compatible | media : Html.Supported }
media =
    Html.string "media"


{-| Follows the attribute definition at [html.spec.whatwg.org/method](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-method)
-}
method :
    Html.Value
        { get : Html.SupportedValue
        , post : Html.SupportedValue
        , dialog : Html.SupportedValue
        }
    -> Html.Attribute { compatible | method : Html.Supported }
method =
    Html.value "method"


{-| Follows the attribute definition at [html.spec.whatwg.org/a-mimeType](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-type),
[html.spec.whatwg.org/embed-mimeType](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-embed-type),
[html.spec.whatwg.org/object-mimeType](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-type),
[html.spec.whatwg.org/source-mimeType](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-type)
-}
mimeType : String -> Html.Attribute { compatible | mimeType : Html.Supported }
mimeType =
    Html.string "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-min](https://html.spec.whatwg.org/multipage/input.html#attr-input-min),
[html.spec.whatwg.org/meter-min](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-min)
-}
min : Int -> Html.Attribute { compatible | min : Html.Supported }
min =
    Html.number "min"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-minlength](https://html.spec.whatwg.org/multipage/input.html#attr-input-minlength),
[html.spec.whatwg.org/textarea-minlength](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-minlength)
-}
minlength : Int -> Html.Attribute { compatible | minlength : Html.Supported }
minlength =
    Html.number "minlength"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-multiple](https://html.spec.whatwg.org/multipage/input.html#attr-input-multiple),
[html.spec.whatwg.org/select-multiple](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-multiple)
-}
multiple : Bool -> Html.Attribute { compatible | multiple : Html.Supported }
multiple =
    Html.bool "multiple"


{-| Follows the attribute definition at [html.spec.whatwg.org/muted](https://html.spec.whatwg.org/multipage/media.html#attr-media-muted)
-}
muted : Bool -> Html.Attribute { compatible | muted : Html.Supported }
muted =
    Html.bool "muted"


{-| Follows the attribute definition at [html.spec.whatwg.org/name](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-name),
[html.spec.whatwg.org/form-name](https://html.spec.whatwg.org/multipage/forms.html#attr-form-name),
[html.spec.whatwg.org/iframe-name](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-name),
[html.spec.whatwg.org/object-name](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-name),
[html.spec.whatwg.org/map-name](https://html.spec.whatwg.org/multipage/image-maps.html#attr-map-name),
[html.spec.whatwg.org/param-name](https://html.spec.whatwg.org/multipage/image-maps.html#attr-map-name)
-}
name : String -> Html.Attribute { compatible | name : Html.Supported }
name =
    Html.string "name"


{-| Follows the attribute definition at [html.spec.whatwg.org/novalidate](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-novalidate)
-}
novalidate : Bool -> Html.Attribute { compatible | novalidate : Html.Supported }
novalidate =
    Html.bool "novalidate"


{-| Follows the attribute definition at [html.spec.whatwg.org/details-open](https://html.spec.whatwg.org/multipage/interactive-elements.html#attr-details-open),
[html.spec.whatwg.org/dialog-open](https://html.spec.whatwg.org/multipage/interactive-elements.html#attr-dialog-open)
-}
open : Bool -> Html.Attribute { compatible | open : Html.Supported }
open =
    Html.bool "open"


{-| Follows the attribute definition at [html.spec.whatwg.org/optimum](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-optimum)
-}
optimum : Int -> Html.Attribute { compatible | optimum : Html.Supported }
optimum =
    Html.number "optimum"


{-| Follows the attribute definition at [html.spec.whatwg.org/li-value](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-li-value),
[html.spec.whatwg.org/meter-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-value),
[html.spec.whatwg.org/progress-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-progress-value)
-}
ordinalValue : Int -> Html.Attribute { compatible | ordinalValue : Html.Supported }
ordinalValue =
    Html.number "value"


{-| Follows the attribute definition at [html.spec.whatwg.org/pattern](https://html.spec.whatwg.org/multipage/input.html#attr-input-pattern)
-}
pattern : String -> Html.Attribute { compatible | pattern : Html.Supported }
pattern =
    Html.string "pattern"


{-| Follows the attribute definition at [html.spec.whatwg.org/ping](https://html.spec.whatwg.org/multipage/links.html#ping)
-}
ping : List String -> Html.Attribute { compatible | ping : Html.Supported }
ping =
    Html.tokens "ping"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-placeholder](https://html.spec.whatwg.org/multipage/input.html#attr-input-placeholder),
[html.spec.whatwg.org/textarea-placeholder](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-placeholder)
-}
placeholder : String -> Html.Attribute { compatible | placeholder : Html.Supported }
placeholder =
    Html.string "placeholder"


{-| Follows the attribute definition at [html.spec.whatwg.org/playsinline](https://html.spec.whatwg.org/multipage/media.html#attr-video-playsinline)
-}
playsinline : Bool -> Html.Attribute { compatible | playsinline : Html.Supported }
playsinline =
    Html.bool "playsinline"


{-| Follows the attribute definition at [html.spec.whatwg.org/poster](https://html.spec.whatwg.org/multipage/media.html#attr-video-poster)
-}
poster : String -> Html.Attribute { compatible | poster : Html.Supported }
poster =
    Html.string "poster"


{-| Follows the attribute definition at [html.spec.whatwg.org/preload](https://html.spec.whatwg.org/multipage/media.html#attr-media-preload)
-}
preload :
    Html.Value
        { none : Html.SupportedValue
        , metadata : Html.SupportedValue
        , auto : Html.SupportedValue
        }
    -> Html.Attribute { compatible | preload : Html.Supported }
preload =
    Html.value "preload"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-readonly](https://html.spec.whatwg.org/multipage/input.html#attr-input-readonly),
[html.spec.whatwg.org/textarea-readonly](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-readonly)
-}
readonly : Bool -> Html.Attribute { compatible | readonly : Html.Supported }
readonly =
    Html.bool "readonly"


{-| Follows the attribute definition at [html.spec.whatwg.org/referrerpolicy](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-referrerpolicy)
-}
referrerpolicy : String -> Html.Attribute { compatible | referrerpolicy : Html.Supported }
referrerpolicy =
    Html.string "referrerpolicy"


{-| Follows the attribute definition at [html.spec.whatwg.org/rel](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-rel)
-}
rel : Set String -> Html.Attribute { compatible | rel : Html.Supported }
rel =
    Html.uniqueTokens "rel"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-required](https://html.spec.whatwg.org/multipage/input.html#attr-input-required),
[html.spec.whatwg.org/select-required](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-required),
[html.spec.whatwg.org/textarea-required](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-required)
-}
required : Bool -> Html.Attribute { compatible | required : Html.Supported }
required =
    Html.bool "required"


{-| Follows the attribute definition at [html.spec.whatwg.org/reversed](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-reversed)
-}
reversed : Bool -> Html.Attribute { compatible | reversed : Html.Supported }
reversed =
    Html.bool "reversed"


{-| Follows the attribute definition at [html.spec.whatwg.org/rows](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-rows)
-}
rows : Int -> Html.Attribute { compatible | rows : Html.Supported }
rows =
    Html.number "rows"


{-| Follows the attribute definition at [html.spec.whatwg.org/rowspan](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-rowspan)
-}
rowspan : Int -> Html.Attribute { compatible | rowspan : Html.Supported }
rowspan =
    Html.number "rowspan"


{-| Follows the attribute definition at [html.spec.whatwg.org/sandbox](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-sandbox)
-}
sandbox :
    List
        (Html.Value
            { allowForms : Html.SupportedValue
            , allowModals : Html.SupportedValue
            , allowOrientationLock : Html.SupportedValue
            , allowPointerLock : Html.SupportedValue
            , allowPopups : Html.SupportedValue
            , allowPopupsToEscapeSandbox : Html.SupportedValue
            , allowPresentation : Html.SupportedValue
            , allowSameOrigin : Html.SupportedValue
            , allowScripts : Html.SupportedValue
            , allowTopNavigation : Html.SupportedValue
            , allowTopNavigationByUserActivation : Html.SupportedValue
            }
        )
    -> Html.Attribute { compatible | sandbox : Html.Supported }
sandbox =
    Html.values "sandbox"


{-| Follows the attribute definition at [html.spec.whatwg.org/scope](https://html.spec.whatwg.org/multipage/tables.html#attr-th-scope)
-}
scope :
    Html.Value
        { row : Html.SupportedValue
        , col : Html.SupportedValue
        , rowgroup : Html.SupportedValue
        , colgroup : Html.SupportedValue
        , auto : Html.SupportedValue
        }
    -> Html.Attribute { compatible | scope : Html.Supported }
scope =
    Html.value "scope"


{-| Follows the attribute definition at [html.spec.whatwg.org/selected](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-selected)
-}
selected : Bool -> Html.Attribute { compatible | selected : Html.Supported }
selected =
    Html.bool "selected"


{-| Follows the attribute definition at [html.spec.whatwg.org/shape](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-shape)
-}
shape :
    Html.Value
        { circle : Html.SupportedValue
        , circ : Html.SupportedValue
        , default_ : Html.SupportedValue
        , poly : Html.SupportedValue
        , polygon : Html.SupportedValue
        , rect : Html.SupportedValue
        , rectangle : Html.SupportedValue
        }
    -> Html.Attribute { shape | start : Html.Supported }
shape =
    Html.value "shape"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-size](https://html.spec.whatwg.org/multipage/input.html#attr-input-size),
[html.spec.whatwg.org/select-size](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-size)
-}
size : Int -> Html.Attribute { compatible | size : Html.Supported }
size =
    Html.number "size"


{-| Follows the attribute definition at [html.spec.whatwg.org/img-sizes](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-sizes),
[html.spec.whatwg.org/source-sizes](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-sizes)
-}
sizes : List String -> Html.Attribute { compatible | sizes : Html.Supported }
sizes =
    Html.tokens "sizes"


{-| Follows the attribute definition at [html.spec.whatwg.org/col-span](https://html.spec.whatwg.org/multipage/tables.html#attr-col-span),
[html.spec.whatwg.org/colgroup-span](https://html.spec.whatwg.org/multipage/tables.html#attr-colgroup-span)
-}
span : Int -> Html.Attribute { compatible | span : Html.Supported }
span =
    Html.number "span"


{-| Follows the attribute definition at [html.spec.whatwg.org/src](https://html.spec.whatwg.org/multipage/media.html#attr-media-src)
-}
src : String -> Html.Attribute { compatible | src : Html.Supported }
src =
    Html.string "src"


{-| Follows the attribute definition at [html.spec.whatwg.org/srcdoc](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-srcdoc)
-}
srcdoc : String -> Html.Attribute { compatible | srcdoc : Html.Supported }
srcdoc =
    Html.string "srcdoc"


{-| Follows the attribute definition at [html.spec.whatwg.org/srclang](https://html.spec.whatwg.org/multipage/media.html#attr-track-srclang)
-}
srclang : String -> Html.Attribute { compatible | srclang : Html.Supported }
srclang =
    Html.string "srclang"


{-| Follows the attribute definition at [html.spec.whatwg.org/img-srcset](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-srcset),
[html.spec.whatwg.org/source-srcset](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-srcset)
-}
srcset : List String -> Html.Attribute { compatible | srcset : Html.Supported }
srcset =
    Html.tokens "srcset"


{-| Follows the attribute definition at [html.spec.whatwg.org/start](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-start)
-}
start : Int -> Html.Attribute { compatible | start : Html.Supported }
start =
    Html.number "start"


{-| Follows the attribute definition at [html.spec.whatwg.org/step](https://html.spec.whatwg.org/multipage/input.html#attr-input-step)
-}
step : Int -> Html.Attribute { compatible | step : Html.Supported }
step =
    Html.number "step"


{-| Follows the attribute definition at [html.spec.whatwg.org/target](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-target)
[html.spec.whatwg.org/form-target](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-target)
-}
target :
    Html.Value
        { blank : Html.SupportedValue
        , self : Html.SupportedValue
        , parent : Html.SupportedValue
        , top : Html.SupportedValue
        , frame : Html.SupportedValue
        }
    -> Html.Attribute { compatible | target : Html.Supported }
target =
    Html.value "target"


{-| Follows the attribute definition at [html.spec.whatwg.org/usemap](https://html.spec.whatwg.org/multipage/image-maps.html#attr-hyperlink-usemap)
-}
usemap : String -> Html.Attribute { compatible | usemap : Html.Supported }
usemap =
    Html.string "usemap"


{-| Follows the attribute definition at [html.spec.whatwg.org/button-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-button-value),
[html.spec.whatwg.org/option-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-value),
[html.spec.whatwg.org/data-value](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-data-value),
[html.spec.whatwg.org/input-value](https://html.spec.whatwg.org/multipage/input.html#attr-input-value),
[html.spec.whatwg.org/param-value](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-param-value)
-}
value : String -> Html.Attribute { compatible | value : Html.Supported }
value =
    Html.string "value"


{-| Follows the attribute definition at [html.spec.whatwg.org/width](https://html.spec.whatwg.org/multipage/embedded-content-other.html#attr-dim-width),
[html.spec.whatwg.org/canvas-width](https://html.spec.whatwg.org/multipage/canvas.html#attr-canvas-width)
-}
width : Int -> Html.Attribute { compatible | width : Html.Supported }
width =
    Html.number "width"


{-| Follows the attribute definition at [html.spec.whatwg.org/wrap](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-wrap)
-}
wrap :
    Html.Value
        { soft : Html.SupportedValue
        , hard : Html.SupportedValue
        }
    -> Html.Attribute { compatible | wrap : Html.Supported }
wrap =
    Html.value "wrap"


{-| -}
allowForms : Html.Value { compatible | allowForms : Html.SupportedValue }
allowForms =
    Html.Value "allow-forms"


{-| -}
allowModals : Html.Value { compatible | allowModals : Html.SupportedValue }
allowModals =
    Html.Value "allow-modals"


{-| -}
allowOrientationLock : Html.Value { compatible | allowOrientationLock : Html.SupportedValue }
allowOrientationLock =
    Html.Value "allow-orientation-lock"


{-| -}
allowPointerLock : Html.Value { compatible | allowPointerLock : Html.SupportedValue }
allowPointerLock =
    Html.Value "allow-pointer-lock"


{-| -}
allowPopups : Html.Value { compatible | allowPopups : Html.SupportedValue }
allowPopups =
    Html.Value "allow-popups"


{-| -}
allowPopupsToEscapeSandbox : Html.Value { compatible | allowPopupsToEscapeSandbox : Html.SupportedValue }
allowPopupsToEscapeSandbox =
    Html.Value "allow-popups-to-escape-sandbox"


{-| -}
allowPresentation : Html.Value { compatible | allowPresentation : Html.SupportedValue }
allowPresentation =
    Html.Value "allow-presentation"


{-| -}
allowSameOrigin : Html.Value { compatible | allowSameOrigin : Html.SupportedValue }
allowSameOrigin =
    Html.Value "allow-same-origin"


{-| -}
allowScripts : Html.Value { compatible | allowScripts : Html.SupportedValue }
allowScripts =
    Html.Value "allow-scripts"


{-| -}
allowTopNavigation : Html.Value { compatible | allowTopNavigation : Html.SupportedValue }
allowTopNavigation =
    Html.Value "allow-top-navigation"


{-| -}
allowTopNavigationByUserActivation : Html.Value { compatible | allowTopNavigationByUserActivation : Html.SupportedValue }
allowTopNavigationByUserActivation =
    Html.Value "allow-top-navigation-by-user-activation"


{-| -}
anonymous : Html.Value { compatible | anonymous : Html.SupportedValue }
anonymous =
    Html.Value "anonymous"


{-| -}
auto : Html.Value { compatible | auto : Html.SupportedValue }
auto =
    Html.Value "auto"


{-| -}
async : Html.Value { compatible | async : Html.SupportedValue }
async =
    Html.Value "async"


{-| -}
blank : Html.Value { compatible | blank : Html.SupportedValue }
blank =
    Html.Value "_blank"


{-| -}
button : Html.Value { compatible | button : Html.SupportedValue }
button =
    Html.Value "button"


{-| -}
captions : Html.Value { compatible | captions : Html.SupportedValue }
captions =
    Html.Value "captions"


{-| -}
chapters : Html.Value { compatible | chapters : Html.SupportedValue }
chapters =
    Html.Value "chapters"


{-| -}
characters : Html.Value { compatible | characters : Html.SupportedValue }
characters =
    Html.Value "characters"


{-| -}
circ : Html.Value { compatible | circ : Html.SupportedValue }
circ =
    Html.Value "circ"


{-| -}
circle : Html.Value { compatible | circle : Html.SupportedValue }
circle =
    Html.Value "circle"


{-| -}
col : Html.Value { compatible | col : Html.SupportedValue }
col =
    Html.Value "col"


{-| -}
colgroup : Html.Value { compatible | colgroup : Html.SupportedValue }
colgroup =
    Html.Value "colgroup"


{-| -}
decimal : Html.Value { compatible | decimal : Html.SupportedValue }
decimal =
    Html.Value "decimal"


{-| -}
default_ : Html.Value { compatible | default_ : Html.SupportedValue }
default_ =
    Html.Value "default"


{-| -}
description : Html.Value { compatible | description : Html.SupportedValue }
description =
    Html.Value "description"


{-| -}
dialog : Html.Value { compatible | dialog : Html.SupportedValue }
dialog =
    Html.Value "dialog"


{-| -}
done : Html.Value { compatible | done : Html.SupportedValue }
done =
    Html.Value "done"


{-| -}
email : Html.Value { compatible | email : Html.SupportedValue }
email =
    Html.Value "email"


{-| -}
enter : Html.Value { compatible | enter : Html.SupportedValue }
enter =
    Html.Value "enter"


{-| -}
formData : Html.Value { compatible | formData : Html.SupportedValue }
formData =
    Html.Value "multipart/form-data"


{-| -}
formUrlEncoded : Html.Value { compatible | formUrlEncoded : Html.SupportedValue }
formUrlEncoded =
    Html.Value "application/x-www-form-urlencoded"


{-| -}
frame : String -> Html.Value { compatible | frame : Html.SupportedValue }
frame val =
    Html.Value val


{-| -}
get : Html.Value { compatible | get : Html.SupportedValue }
get =
    Html.Value "get"


{-| -}
go : Html.Value { compatible | go : Html.SupportedValue }
go =
    Html.Value "go"


{-| -}
hard : Html.Value { compatible | hard : Html.SupportedValue }
hard =
    Html.Value "hard"


{-| -}
lowerAlpha : Html.Value { compatible | lowerAlpha : Html.SupportedValue }
lowerAlpha =
    Html.Value "a"


{-| -}
lowerRoman : Html.Value { compatible | lowerRoman : Html.SupportedValue }
lowerRoman =
    Html.Value "i"


{-| -}
ltr : Html.Value { compatible | ltr : Html.SupportedValue }
ltr =
    Html.Value "ltr"


{-| -}
metadata : Html.Value { compatible | metadata : Html.SupportedValue }
metadata =
    Html.Value "metadata"


{-| -}
next : Html.Value { compatible | next : Html.SupportedValue }
next =
    Html.Value "next"


{-| -}
none : Html.Value { compatible | none : Html.SupportedValue }
none =
    Html.Value "none"


{-| -}
numeric : Html.Value { compatible | numeric : Html.SupportedValue }
numeric =
    Html.Value "numeric"


{-| -}
off : Html.Value { compatible | off : Html.SupportedValue }
off =
    Html.Value "off"


{-| -}
on : Html.Value { compatible | on : Html.SupportedValue }
on =
    Html.Value "on"


{-| -}
ordinal : Html.Value { compatible | ordinal : Html.SupportedValue }
ordinal =
    Html.Value "1"


{-| -}
parent : Html.Value { compatible | parent : Html.SupportedValue }
parent =
    Html.Value "_parent"


{-| -}
plainText : Html.Value { compatible | plainText : Html.SupportedValue }
plainText =
    Html.Value "text/plain"


{-| -}
poly : Html.Value { compatible | poly : Html.SupportedValue }
poly =
    Html.Value "poly"


{-| -}
polygon : Html.Value { compatible | polygon : Html.SupportedValue }
polygon =
    Html.Value "polygon"


{-| -}
post : Html.Value { compatible | post : Html.SupportedValue }
post =
    Html.Value "post"


{-| -}
previous : Html.Value { compatible | previous : Html.SupportedValue }
previous =
    Html.Value "previous"


{-| -}
rect : Html.Value { compatible | rect : Html.SupportedValue }
rect =
    Html.Value "rect"


{-| -}
rectangle : Html.Value { compatible | rectangle : Html.SupportedValue }
rectangle =
    Html.Value "rectangle"


{-| -}
reset : Html.Value { compatible | reset : Html.SupportedValue }
reset =
    Html.Value "reset"


{-| -}
row : Html.Value { compatible | row : Html.SupportedValue }
row =
    Html.Value "row"


{-| -}
rowgroup : Html.Value { compatible | rowgroup : Html.SupportedValue }
rowgroup =
    Html.Value "rowgroup"


{-| -}
rtl : Html.Value { compatible | rtl : Html.SupportedValue }
rtl =
    Html.Value "rtl"


{-| -}
search : Html.Value { compatible | search : Html.SupportedValue }
search =
    Html.Value "search"


{-| -}
self : Html.Value { compatible | self : Html.SupportedValue }
self =
    Html.Value "_self"


{-| -}
send : Html.Value { compatible | send : Html.SupportedValue }
send =
    Html.Value "send"


{-| -}
sentences : Html.Value { compatible | sentences : Html.SupportedValue }
sentences =
    Html.Value "sentences"


{-| -}
soft : Html.Value { compatible | soft : Html.SupportedValue }
soft =
    Html.Value "soft"


{-| -}
submit : Html.Value { compatible | submit : Html.SupportedValue }
submit =
    Html.Value "submit"


{-| -}
subtitles : Html.Value { compatible | subtitles : Html.SupportedValue }
subtitles =
    Html.Value "subtitles"


{-| -}
sync : Html.Value { compatible | sync : Html.SupportedValue }
sync =
    Html.Value "sync"


{-| -}
tel : Html.Value { compatible | tel : Html.SupportedValue }
tel =
    Html.Value "tel"


{-| -}
text : Html.Value { compatible | text : Html.SupportedValue }
text =
    Html.Value "text"


{-| -}
top : Html.Value { compatible | top : Html.SupportedValue }
top =
    Html.Value "_top"


{-| -}
upperAlpha : Html.Value { compatible | upperAlpha : Html.SupportedValue }
upperAlpha =
    Html.Value "A"


{-| -}
upperRoman : Html.Value { compatible | upperRoman : Html.SupportedValue }
upperRoman =
    Html.Value "I"


{-| -}
url : Html.Value { compatible | url : Html.SupportedValue }
url =
    Html.Value "url"


{-| -}
useCredentials : Html.Value { compatible | useCredentials : Html.SupportedValue }
useCredentials =
    Html.Value "use-credentials"


{-| -}
words : Html.Value { compatible | words : Html.SupportedValue }
words =
    Html.Value "words"


{-| Use this to break out of this package's requirements. Useful if there is something that this package does not allow and you want to support it.
-}
attribute : String -> String -> Html.Attribute a
attribute =
    Html.Attribute
