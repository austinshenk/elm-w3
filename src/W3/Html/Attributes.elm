module W3.Html.Attributes exposing
    ( accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate
    , abbr, accept, acceptcharset, action, allow, allowfullscreen, allowpaymentrequest, alt, autocomplete, autoplay, buttonType, checked, cite, cols, colspan, controls, coords, crossorigin, data, datetime, decoding, default, dirname, disabled, download, enctype, for, form, formaction, formenctype, formmethod, formnovalidate, formtarget, headers, height, high, href, hreflang, inputType, ismap, kind, label, list, loop, low, marker, max, maxlength, media, method, mimeType, min, minlength, multiple, muted, name, novalidate, open, optimum, ordinalValue, pattern, ping, placeholder, playsinline, poster, preload, readonly, rel, required, reversed, rows, rowspan, sandbox, scope, selected, shape, size, span, start, step, src, srcdoc, srclang, srcset, sizes, target, usemap, value, width, wrap
    , allowForms, allowModals, allowOrientationLock, allowPointerLock, allowPopups, allowPopupsToEscapeSandbox, allowPresentation, allowSameOrigin, allowScripts, allowTopNavigation, allowTopNavigationByUserActivation, anonymous, auto, async, blank, button, captions, chapters, characters, circ, circle, col, colgroup, decimal, default_, description, dialog, done, email, enter, formData, formUrlEncoded, frame, get, go, hard, lowerAlpha, lowerRoman, ltr, metadata, next, none, numeric, off, on, ordinal, parent, plainText, poly, polygon, post, previous, rect, rectangle, reset, rowgroup, rtl, search, self, send, sentences, soft, submit, subtitles, sync, tel, text, top, upperAlpha, upperRoman, url, useCredentials, words
    , referrerpolicy
    )

{-| Module that defines all HTML attributes and values


# Global Attributes

These Attributes can be assigned to any HTML element as defined by [html.spec.whatwg.org/GlobalAttributes](https://html.spec.whatwg.org/multipage/dom.html#global-attributes)

@docs accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate


# Attributes

These Attributes may be assigned to only specific elements. That is defined on a per-element basis.

@docs abbr, accept, acceptcharset, action, allow, allowfullscreen, allowpaymentrequest, alt, autocomplete, autoplay, buttonType, checked, cite, cols, colspan, controls, coords, crossorigin, data, datetime, decoding, default, dirname, disabled, download, enctype, for, form, formaction, formenctype, formmethod, formnovalidate, formtarget, headers, height, high, href, hreflang, inputType, ismap, kind, label, list, loop, low, marker, max, maxlength, media, method, mimeType, min, minlength, multiple, muted, name, novalidate, open, optimum, ordinalValue, pattern, ping, placeholder, playsinline, poster, preload, readonly, referrerPolicy, rel, required, reversed, rows, rowspan, sandbox, scope, selected, shape, size, span, start, step, src, srcdoc, srclang, srcset, sizes, target, usemap, value, width, wrap


# Values

All of the enumerated values that particular Attributes may have.

@docs allowForms, allowModals, allowOrientationLock, allowPointerLock, allowPopups, allowPopupsToEscapeSandbox, allowPresentation, allowSameOrigin, allowScripts, allowTopNavigation, allowTopNavigationByUserActivation, anonymous, auto, async, blank, button, captions, chapters, characters, circ, circle, col, colgroup, decimal, default_, description, dialog, done, email, enter, formData, formUrlEncoded, frame, get, go, hard, lowerAlpha, lowerRoman, ltr, metadata, next, none, numeric, off, on, ordinal, parent, plainText, poly, polygon, post, previous, rect, rectangle, reset, rowgroup, rtl, search, self, send, sentences, soft, submit, subtitles, sync, tel, text, top, upperAlpha, upperRoman, url, useCredentials, words


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
import W3.Html.Attributes.Help as W3


{-| Follows the attribute definition at [html.spec.whatwg.org/accesskey](https://html.spec.whatwg.org/multipage/interaction.html#the-accesskey-attribute)
-}
accesskey : Set String -> W3.Attribute { compatible | accesskey : W3.Supported }
accesskey =
    W3.uniqueTokens "accesskey"


{-| Follows the attribute definition at [html.spec.whatwg.org/autocapitalize](https://html.spec.whatwg.org/multipage/interaction.html#attr-autocapitalize)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/autofocus](https://html.spec.whatwg.org/multipage/interaction.html#attr-fe-autofocus)
-}
autofocus : Bool -> W3.Attribute { compatible | autofocus : W3.Supported }
autofocus =
    W3.bool "autofocus"


{-| Follows the attribute definition at [html.spec.whatwg.org/class](https://html.spec.whatwg.org/multipage/dom.html#classes)
-}
class : List String -> W3.Attribute { compatible | class : W3.Supported }
class =
    W3.tokens "class"


{-| Follows the attribute definition at [html.spec.whatwg.org/contenteditable](https://html.spec.whatwg.org/multipage/interaction.html#attr-contenteditable)
-}
contenteditable : Maybe Bool -> W3.Attribute { compatible | contenteditable : W3.Supported }
contenteditable =
    W3.maybeBool "contenteditable" ""


{-| Follows the attribute definition at [html.spec.whatwg.org/custom data](https://html.spec.whatwg.org/multipage/dom.html#custom-data-attribute)
-}
data_ : String -> String -> W3.Attribute { compatible | data_ : W3.Supported }
data_ key val =
    W3.Attribute ("data-" ++ key) val


{-| Follows the attribute definition at [html.spec.whatwg.org/dir](https://html.spec.whatwg.org/multipage/dom.html#the-dir-attribute)
-}
dir :
    W3.Value
        { ltr : W3.SupportedValue
        , rtl : W3.SupportedValue
        , auto : W3.SupportedValue
        }
    -> W3.Attribute { compatible | dir : W3.Supported }
dir =
    W3.value "dir"


{-| Follows the attribute definition at [html.spec.whatwg.org/draggable](https://html.spec.whatwg.org/multipage/dnd.html#the-draggable-attribute)
-}
draggable : Maybe Bool -> W3.Attribute { compatible | draggable : W3.Supported }
draggable =
    W3.maybeBool "draggable" ""


{-| Follows the attribute definition at [html.spec.whatwg.org/enterkeyhint](https://html.spec.whatwg.org/multipage/interaction.html#attr-enterkeyhint)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/hidden](https://html.spec.whatwg.org/multipage/interaction.html#the-hidden-attribute)
-}
hidden : Bool -> W3.Attribute { compatible | hidden : W3.Supported }
hidden =
    W3.bool "hidden"


{-| Follows the attribute definition at [html.spec.whatwg.org/id](https://html.spec.whatwg.org/multipage/dom.html#the-id-attribute)
-}
id : String -> W3.Attribute { compatible | id : W3.Supported }
id =
    W3.string "id"


{-| Follows the attribute definition at [html.spec.whatwg.org/inputmode](https://html.spec.whatwg.org/multipage/interaction.html#attr-inputmode)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/itemid](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemid)
-}
itemid : String -> W3.Attribute { compatible | itemid : W3.Supported }
itemid =
    W3.string "itemid"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemprop](https://html.spec.whatwg.org/multipage/microdata.html#names:-the-itemprop-attribute)
-}
itemprop : Set String -> W3.Attribute { compatible | itemprop : W3.Supported }
itemprop =
    W3.uniqueTokens "itemprop"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemref](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemref)
-}
itemref : Set String -> W3.Attribute { compatible | itemref : W3.Supported }
itemref =
    W3.uniqueTokens "itemref"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemscope](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemscope)
-}
itemscope : Bool -> W3.Attribute { compatible | itemscope : W3.Supported }
itemscope =
    W3.bool "itemscope"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemtype](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemtype)
-}
itemtype : Set String -> W3.Attribute { compatible | itemtype : W3.Supported }
itemtype =
    W3.uniqueTokens "itemtype"


{-| Follows the attribute definition at [html.spec.whatwg.org/lang](https://html.spec.whatwg.org/multipage/dom.html#attr-lang)
-}
lang : String -> W3.Attribute { compatible | lang : W3.Supported }
lang =
    W3.string "lang"


{-| Follows the attribute definition at [html.spec.whatwg.org/nonce](https://html.spec.whatwg.org/multipage/urls-and-fetching.html#attr-nonce)
-}
nonce : Int -> W3.Attribute { compatible | nonce : W3.Supported }
nonce =
    W3.number "nonce"


{-| Follows the attribute definition at [html.spec.whatwg.org/slot](https://html.spec.whatwg.org/multipage/dom.html#the-id-attribute)
-}
slot : String -> W3.Attribute { compatible | slot : W3.Supported }
slot =
    W3.string "slot"


{-| Follows the attribute definition at [html.spec.whatwg.org/spellcheck](https://html.spec.whatwg.org/multipage/interaction.html#attr-spellcheck)
-}
spellcheck : Maybe Bool -> W3.Attribute { compatible | spellcheck : W3.Supported }
spellcheck =
    W3.maybeBool "spellcheck" ""


{-| Follows the attribute definition at [html.spec.whatwg.org/style](https://html.spec.whatwg.org/multipage/dom.html#the-style-attribute)
-}
style : String -> W3.Attribute { compatible | style : W3.Supported }
style =
    W3.string "style"


{-| Follows the attribute definition at [html.spec.whatwg.org/tabindex](https://html.spec.whatwg.org/multipage/interaction.html#attr-tabindex)
-}
tabindex : Int -> W3.Attribute { compatible | tabindex : W3.Supported }
tabindex =
    W3.number "tabindex"


{-| Follows the attribute definition at [html.spec.whatwg.org/title](https://html.spec.whatwg.org/multipage/dom.html#attr-title)
-}
title : String -> W3.Attribute { compatible | title : W3.Supported }
title =
    W3.string "title"


{-| Follows the attribute definition at [html.spec.whatwg.org/translate](https://html.spec.whatwg.org/multipage/dom.html#attr-translate)
-}
translate :
    W3.Value
        { yes : W3.SupportedValue
        , no : W3.SupportedValue
        }
    -> W3.Attribute { compatible | translate : W3.Supported }
translate =
    W3.value "translate"


{-| Follows the attribute definition at [html.spec.whatwg.org/abbr](https://html.spec.whatwg.org/multipage/tables.html#attr-th-abbr)
-}
abbr : String -> W3.Attribute { compatible | abbr : W3.Supported }
abbr =
    W3.string "abbr"


{-| Follows the attribute definition at [html.spec.whatwg.org/accept](https://html.spec.whatwg.org/multipage/input.html#attr-input-accept)
-}
accept : List String -> W3.Attribute { compatible | acceptcharset : W3.Supported }
accept values =
    W3.Attribute "accept" (String.join "," values)


{-| Follows the attribute definition at [html.spec.whatwg.org/acceptcharset](https://html.spec.whatwg.org/multipage/forms.html#attr-form-accept-charset)
-}
acceptcharset : Set String -> W3.Attribute { compatible | acceptcharset : W3.Supported }
acceptcharset =
    W3.uniqueTokens "acceptcharset"


{-| Follows the attribute definition at [html.spec.whatwg.org/action](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-action)
-}
action : String -> W3.Attribute { compatible | action : W3.Supported }
action =
    W3.string "action"


{-| Follows the attribute definition at [html.spec.whatwg.org/allow](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allow)
-}
allow : String -> W3.Attribute { compatible | allow : W3.Supported }
allow =
    W3.string "allow"


{-| Follows the attribute definition at [html.spec.whatwg.org/allowfullscreen](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allowfullscreen)
-}
allowfullscreen : Bool -> W3.Attribute { compatible | allowfullscreen : W3.Supported }
allowfullscreen =
    W3.bool "allowfullscreen"


{-| Follows the attribute definition at [html.spec.whatwg.org/allowpaymentrequest](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allowpaymentrequest)
-}
allowpaymentrequest : Bool -> W3.Attribute { compatible | allowpaymentrequest : W3.Supported }
allowpaymentrequest =
    W3.bool "allowpaymentrequest"


{-| Follows the attribute definition at [html.spec.whatwg.org/area-alt](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-alt),
[html.spec.whatwg.org/image-alt](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-alt),
[html.spec.whatwg.org/input-alt](https://html.spec.whatwg.org/multipage/input.html#attr-input-alt)
-}
alt : String -> W3.Attribute { compatible | alt : W3.Supported }
alt =
    W3.string "alt"


{-| Follows the attribute definition at [html.spec.whatwg.org/autocomplete](https://html.spec.whatwg.org/multipage/forms.html#attr-form-autocomplete)
-}
autocomplete :
    W3.Value
        { on : W3.SupportedValue
        , off : W3.SupportedValue
        }
    -> W3.Attribute { compatible | autocomplete : W3.Supported }
autocomplete =
    W3.value "autocomplete"


{-| Follows the attribute definition at [html.spec.whatwg.org/autoplay](https://html.spec.whatwg.org/multipage/media.html#attr-media-autoplay),
-}
autoplay : Bool -> W3.Attribute { compatible | autoplay : W3.Supported }
autoplay =
    W3.bool "autoplay"


{-| Follows the attribute definition at [html.spec.whatwg.org/button-type](https://html.spec.whatwg.org/multipage/form-elements.html#attr-button-type)
-}
buttonType :
    W3.Value
        { submit : W3.SupportedValue
        , reset : W3.SupportedValue
        , button : W3.SupportedValue
        }
    -> W3.Attribute { compatible | buttonType : W3.Supported }
buttonType =
    W3.value "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/checked](https://html.spec.whatwg.org/multipage/input.html#attr-input-checked)
-}
checked : Bool -> W3.Attribute { compatible | checked : W3.Supported }
checked =
    W3.bool "checked"


{-| Follows the attribute definition at [html.spec.whatwg.org/blockquote-cite](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-blockquote-cite),
[html.spec.whatwg.org/mod-cite](https://html.spec.whatwg.org/multipage/edits.html#attr-mod-cite),
[html.spec.whatwg.org/q-cite](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-q-cite)
-}
cite : String -> W3.Attribute { compatible | cite : W3.Supported }
cite =
    W3.string "cite"


{-| Follows the attribute definition at [html.spec.whatwg.org/cols](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-cols)
-}
cols : Int -> W3.Attribute { compatible | cols : W3.Supported }
cols =
    W3.number "cols"


{-| Follows the attribute definition at [html.spec.whatwg.org/colspan](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-colspan)
-}
colspan : Int -> W3.Attribute { compatible | colspan : W3.Supported }
colspan =
    W3.number "colspan"


{-| Follows the attribute definition at [html.spec.whatwg.org/controls](https://html.spec.whatwg.org/multipage/media.html#attr-media-controls)
-}
controls : Bool -> W3.Attribute { compatible | controls : W3.Supported }
controls =
    W3.bool "controls"


{-| Follows the attribute definition at [html.spec.whatwg.org/coords](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-coords)
-}
coords : List Int -> W3.Attribute { compatible | coords : W3.Supported }
coords numbers =
    W3.Attribute "coords" (List.map String.fromInt numbers |> String.join ",")


{-| Follows the attribute definition at [html.spec.whatwg.org/media-crossorigin](https://html.spec.whatwg.org/multipage/media.html#attr-media-crossorigin),
[html.spec.whatwg.org/img-crossorigin](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-crossorigin)
-}
crossorigin :
    W3.Value
        { anonymous : W3.SupportedValue
        , useCredentials : W3.SupportedValue
        }
    -> W3.Attribute { compatible | crossorigin : W3.Supported }
crossorigin =
    W3.value "crossorigin"


{-| Follows the attribute definition at [html.spec.whatwg.org/data](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-data)
-}
data : String -> W3.Attribute { compatible | data : W3.Supported }
data =
    W3.string "data"


{-| Follows the attribute definition at [html.spec.whatwg.org/mod-datetime](https://html.spec.whatwg.org/multipage/edits.html#attr-mod-datetime),
[html.spec.whatwg.org/time-datetime](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-time-datetime)
-}
datetime : String -> W3.Attribute { compatible | datetime : W3.Supported }
datetime =
    W3.string "datetime"


{-| Follows the attribute definition at [html.spec.whatwg.org/decoding](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-decoding)
-}
decoding :
    W3.Value
        { sync : W3.SupportedValue
        , asyc : W3.SupportedValue
        , auto : W3.SupportedValue
        }
    -> W3.Attribute { compatible | decoding : W3.Supported }
decoding =
    W3.value "decoding"


{-| Follows the attribute definition at [html.spec.whatwg.org/default](https://html.spec.whatwg.org/multipage/media.html#attr-track-default)
-}
default : Bool -> W3.Attribute { compatible | default : W3.Supported }
default =
    W3.bool "default"


{-| Follows the attribute definition at [html.spec.whatwg.org/dirname](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-dirname)
-}
dirname : String -> W3.Attribute { compatible | dirname : W3.Supported }
dirname =
    W3.string "dirname"


{-| Follows the attribute definition at [html.spec.whatwg.org/disabled](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-disabled),
[html.spec.whatwg.org/fieldset-disabled](https://html.spec.whatwg.org/multipage/form-elements.html#attr-fieldset-disabled)
-}
disabled : Bool -> W3.Attribute { compatible | disabled : W3.Supported }
disabled =
    W3.bool "disabled"


{-| Follows the attribute definition at [html.spec.whatwg.org/download](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-download)
-}
download : String -> W3.Attribute { compatible | download : W3.Supported }
download =
    W3.string "download"


{-| Follows the attribute definition at [html.spec.whatwg.org/enctype](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-enctype)
-}
enctype :
    W3.Value
        { formUrlEncoded : W3.SupportedValue
        , formData : W3.SupportedValue
        , plainText : W3.SupportedValue
        }
    -> W3.Attribute { compatible | enctype : W3.Supported }
enctype =
    W3.value "enctype"


{-| Follows the attribute definition at [html.spec.whatwg.org/label-for](https://html.spec.whatwg.org/multipage/forms.html#attr-label-for),
[html.spec.whatwg.org/output-for](https://html.spec.whatwg.org/multipage/form-elements.html#attr-output-for)
-}
for : String -> W3.Attribute { compatible | for : W3.Supported }
for =
    W3.string "for"


{-| Follows the attribute definition at [html.spec.whatwg.org/form](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fae-form)
-}
form : String -> W3.Attribute { compatible | form : W3.Supported }
form =
    W3.string "form"


{-| Follows the attribute definition at [html.spec.whatwg.org/formaction](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formaction)
-}
formaction : String -> W3.Attribute { compatible | formaction : W3.Supported }
formaction =
    W3.string "formaction"


{-| Follows the attribute definition at [html.spec.whatwg.org/formenctype](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formenctype)
-}
formenctype :
    W3.Value
        { formUrlEncoded : W3.SupportedValue
        , formData : W3.SupportedValue
        , plainText : W3.SupportedValue
        }
    -> W3.Attribute { compatible | formenctype : W3.Supported }
formenctype =
    W3.value "formenctype"


{-| Follows the attribute definition at [html.spec.whatwg.org/formmethod](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formmethod)
-}
formmethod :
    W3.Value
        { get : W3.SupportedValue
        , post : W3.SupportedValue
        , dialog : W3.SupportedValue
        }
    -> W3.Attribute { compatible | formmethod : W3.Supported }
formmethod =
    W3.value "formmethod"


{-| Follows the attribute definition at [html.spec.whatwg.org/formnovalidate](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formnovalidate)
-}
formnovalidate : Bool -> W3.Attribute { compatible | formnovalidate : W3.Supported }
formnovalidate =
    W3.bool "formnovalidate"


{-| Follows the attribute definition at [html.spec.whatwg.org/formtarget](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formtarget)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/headers](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-headers)
-}
headers : Set String -> W3.Attribute { compatible | headers : W3.Supported }
headers =
    W3.uniqueTokens "headers"


{-| Follows the attribute definition at [html.spec.whatwg.org/height](https://html.spec.whatwg.org/multipage/embedded-content-other.html#attr-dim-height),
[html.spec.whatwg.org/canvas-height](https://html.spec.whatwg.org/multipage/canvas.html#attr-canvas-height)
-}
height : Int -> W3.Attribute { compatible | height : W3.Supported }
height =
    W3.number "height"


{-| Follows the attribute definition at [html.spec.whatwg.org/high](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-high)
-}
high : Int -> W3.Attribute { compatible | high : W3.Supported }
high =
    W3.number "high"


{-| Follows the attribute definition at [html.spec.whatwg.org/href](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-href)
-}
href : String -> W3.Attribute { compatible | href : W3.Supported }
href =
    W3.string "href"


{-| Follows the attribute definition at [html.spec.whatwg.org/hreflang](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-hreflang)
-}
hreflang : String -> W3.Attribute { compatible | hreflang : W3.Supported }
hreflang =
    W3.string "hreflang"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-type](https://html.spec.whatwg.org/multipage/input.html#attr-input-type)
-}
inputType : String -> W3.Attribute { compatible | inputType : W3.Supported }
inputType =
    W3.string "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/ismap](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-ismap)
-}
ismap : Bool -> W3.Attribute { compatible | ismap : W3.Supported }
ismap =
    W3.bool "ismap"


{-| Follows the attribute definition at [html.spec.whatwg.org/kind](https://html.spec.whatwg.org/multipage/media.html#attr-track-kind)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/optgroup-label](https://html.spec.whatwg.org/multipage/form-elements.html#attr-optgroup-label),
[html.spec.whatwg.org/option-label](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-label),
[html.spec.whatwg.org/track-label](https://html.spec.whatwg.org/multipage/media.html#attr-track-label)
-}
label : String -> W3.Attribute { compatible | label : W3.Supported }
label =
    W3.string "label"


{-| Follows the attribute definition at [html.spec.whatwg.org/list](https://html.spec.whatwg.org/multipage/input.html#attr-input-list)
-}
list : String -> W3.Attribute { compatible | list : W3.Supported }
list =
    W3.string "list"


{-| Follows the attribute definition at [html.spec.whatwg.org/loop](https://html.spec.whatwg.org/multipage/media.html#attr-media-loop)
-}
loop : Bool -> W3.Attribute { compatible | loop : W3.Supported }
loop =
    W3.bool "loop"


{-| Follows the attribute definition at [html.spec.whatwg.org/low](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-low)
-}
low : Int -> W3.Attribute { compatible | low : W3.Supported }
low =
    W3.number "low"


{-| Follows the attribute definition at [html.spec.whatwg.org/ol-type](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-type)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/input-max](https://html.spec.whatwg.org/multipage/input.html#attr-input-max),
[html.spec.whatwg.org/meter-max](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-max),
[html.spec.whatwg.org/progress-max](https://html.spec.whatwg.org/multipage/form-elements.html#attr-progress-max)
-}
max : Int -> W3.Attribute { compatible | max : W3.Supported }
max =
    W3.number "max"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-maxlength](https://html.spec.whatwg.org/multipage/input.html#attr-input-maxlength),
[html.spec.whatwg.org/textarea-maxlength](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-maxlength)
-}
maxlength : Int -> W3.Attribute { compatible | maxlength : W3.Supported }
maxlength =
    W3.number "maxlength"


{-| Follows the attribute definition at [html.spec.whatwg.org/media](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-media)
-}
media : String -> W3.Attribute { compatible | media : W3.Supported }
media =
    W3.string "media"


{-| Follows the attribute definition at [html.spec.whatwg.org/method](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-method)
-}
method :
    W3.Value
        { get : W3.SupportedValue
        , post : W3.SupportedValue
        , dialog : W3.SupportedValue
        }
    -> W3.Attribute { compatible | method : W3.Supported }
method =
    W3.value "method"


{-| Follows the attribute definition at [html.spec.whatwg.org/a-mimeType](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-type),
[html.spec.whatwg.org/embed-mimeType](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-embed-type),
[html.spec.whatwg.org/object-mimeType](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-type),
[html.spec.whatwg.org/source-mimeType](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-type)
-}
mimeType : String -> W3.Attribute { compatible | mimeType : W3.Supported }
mimeType =
    W3.string "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-min](https://html.spec.whatwg.org/multipage/input.html#attr-input-min),
[html.spec.whatwg.org/meter-min](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-min)
-}
min : Int -> W3.Attribute { compatible | min : W3.Supported }
min =
    W3.number "min"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-minlength](https://html.spec.whatwg.org/multipage/input.html#attr-input-minlength),
[html.spec.whatwg.org/textarea-minlength](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-minlength)
-}
minlength : Int -> W3.Attribute { compatible | minlength : W3.Supported }
minlength =
    W3.number "minlength"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-multiple](https://html.spec.whatwg.org/multipage/input.html#attr-input-multiple),
[html.spec.whatwg.org/select-multiple](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-multiple)
-}
multiple : Bool -> W3.Attribute { compatible | multiple : W3.Supported }
multiple =
    W3.bool "multiple"


{-| Follows the attribute definition at [html.spec.whatwg.org/muted](https://html.spec.whatwg.org/multipage/media.html#attr-media-muted)
-}
muted : Bool -> W3.Attribute { compatible | muted : W3.Supported }
muted =
    W3.bool "muted"


{-| Follows the attribute definition at [html.spec.whatwg.org/name](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-name),
[html.spec.whatwg.org/form-name](https://html.spec.whatwg.org/multipage/forms.html#attr-form-name),
[html.spec.whatwg.org/iframe-name](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-name),
[html.spec.whatwg.org/object-name](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-name),
[html.spec.whatwg.org/map-name](https://html.spec.whatwg.org/multipage/image-maps.html#attr-map-name),
[html.spec.whatwg.org/param-name](https://html.spec.whatwg.org/multipage/image-maps.html#attr-map-name)
-}
name : String -> W3.Attribute { compatible | name : W3.Supported }
name =
    W3.string "name"


{-| Follows the attribute definition at [html.spec.whatwg.org/novalidate](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-novalidate)
-}
novalidate : Bool -> W3.Attribute { compatible | novalidate : W3.Supported }
novalidate =
    W3.bool "novalidate"


{-| Follows the attribute definition at [html.spec.whatwg.org/details-open](https://html.spec.whatwg.org/multipage/interactive-elements.html#attr-details-open),
[html.spec.whatwg.org/dialog-open](https://html.spec.whatwg.org/multipage/interactive-elements.html#attr-dialog-open)
-}
open : Bool -> W3.Attribute { compatible | open : W3.Supported }
open =
    W3.bool "open"


{-| Follows the attribute definition at [html.spec.whatwg.org/optimum](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-optimum)
-}
optimum : Int -> W3.Attribute { compatible | optimum : W3.Supported }
optimum =
    W3.number "optimum"


{-| Follows the attribute definition at [html.spec.whatwg.org/li-value](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-li-value),
[html.spec.whatwg.org/meter-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-value),
[html.spec.whatwg.org/progress-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-progress-value)
-}
ordinalValue : Int -> W3.Attribute { compatible | ordinalValue : W3.Supported }
ordinalValue =
    W3.number "value"


{-| Follows the attribute definition at [html.spec.whatwg.org/pattern](https://html.spec.whatwg.org/multipage/input.html#attr-input-pattern)
-}
pattern : String -> W3.Attribute { compatible | pattern : W3.Supported }
pattern =
    W3.string "pattern"


{-| Follows the attribute definition at [html.spec.whatwg.org/ping](https://html.spec.whatwg.org/multipage/links.html#ping)
-}
ping : List String -> W3.Attribute { compatible | ping : W3.Supported }
ping =
    W3.tokens "ping"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-placeholder](https://html.spec.whatwg.org/multipage/input.html#attr-input-placeholder),
[html.spec.whatwg.org/textarea-placeholder](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-placeholder)
-}
placeholder : String -> W3.Attribute { compatible | placeholder : W3.Supported }
placeholder =
    W3.string "placeholder"


{-| Follows the attribute definition at [html.spec.whatwg.org/playsinline](https://html.spec.whatwg.org/multipage/media.html#attr-video-playsinline)
-}
playsinline : Bool -> W3.Attribute { compatible | playsinline : W3.Supported }
playsinline =
    W3.bool "playsinline"


{-| Follows the attribute definition at [html.spec.whatwg.org/poster](https://html.spec.whatwg.org/multipage/media.html#attr-video-poster)
-}
poster : String -> W3.Attribute { compatible | poster : W3.Supported }
poster =
    W3.string "poster"


{-| Follows the attribute definition at [html.spec.whatwg.org/preload](https://html.spec.whatwg.org/multipage/media.html#attr-media-preload)
-}
preload :
    W3.Value
        { none : W3.SupportedValue
        , metadata : W3.SupportedValue
        , auto : W3.SupportedValue
        }
    -> W3.Attribute { compatible | preload : W3.Supported }
preload =
    W3.value "preload"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-readonly](https://html.spec.whatwg.org/multipage/input.html#attr-input-readonly),
[html.spec.whatwg.org/textarea-readonly](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-readonly)
-}
readonly : Bool -> W3.Attribute { compatible | readonly : W3.Supported }
readonly =
    W3.bool "readonly"


{-| Follows the attribute definition at [html.spec.whatwg.org/referrerpolicy](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-referrerpolicy)
-}
referrerpolicy : String -> W3.Attribute { compatible | referrerpolicy : W3.Supported }
referrerpolicy =
    W3.string "referrerpolicy"


{-| Follows the attribute definition at [html.spec.whatwg.org/rel](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-rel)
-}
rel : Set String -> W3.Attribute { compatible | rel : W3.Supported }
rel =
    W3.uniqueTokens "rel"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-required](https://html.spec.whatwg.org/multipage/input.html#attr-input-required),
[html.spec.whatwg.org/select-required](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-required),
[html.spec.whatwg.org/textarea-required](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-required)
-}
required : Bool -> W3.Attribute { compatible | required : W3.Supported }
required =
    W3.bool "required"


{-| Follows the attribute definition at [html.spec.whatwg.org/reversed](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-reversed)
-}
reversed : Bool -> W3.Attribute { compatible | reversed : W3.Supported }
reversed =
    W3.bool "reversed"


{-| Follows the attribute definition at [html.spec.whatwg.org/rows](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-rows)
-}
rows : Int -> W3.Attribute { compatible | rows : W3.Supported }
rows =
    W3.number "rows"


{-| Follows the attribute definition at [html.spec.whatwg.org/rowspan](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-rowspan)
-}
rowspan : Int -> W3.Attribute { compatible | rowspan : W3.Supported }
rowspan =
    W3.number "rowspan"


{-| Follows the attribute definition at [html.spec.whatwg.org/sandbox](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-sandbox)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/scope](https://html.spec.whatwg.org/multipage/tables.html#attr-th-scope)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/selected](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-selected)
-}
selected : Bool -> W3.Attribute { compatible | selected : W3.Supported }
selected =
    W3.bool "selected"


{-| Follows the attribute definition at [html.spec.whatwg.org/shape](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-shape)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/input-size](https://html.spec.whatwg.org/multipage/input.html#attr-input-size),
[html.spec.whatwg.org/select-size](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-size)
-}
size : Int -> W3.Attribute { compatible | size : W3.Supported }
size =
    W3.number "size"


{-| Follows the attribute definition at [html.spec.whatwg.org/img-sizes](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-sizes),
[html.spec.whatwg.org/source-sizes](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-sizes)
-}
sizes : List String -> W3.Attribute { compatible | sizes : W3.Supported }
sizes =
    W3.tokens "sizes"


{-| Follows the attribute definition at [html.spec.whatwg.org/col-span](https://html.spec.whatwg.org/multipage/tables.html#attr-col-span),
[html.spec.whatwg.org/colgroup-span](https://html.spec.whatwg.org/multipage/tables.html#attr-colgroup-span)
-}
span : Int -> W3.Attribute { compatible | span : W3.Supported }
span =
    W3.number "span"


{-| Follows the attribute definition at [html.spec.whatwg.org/src](https://html.spec.whatwg.org/multipage/media.html#attr-media-src)
-}
src : String -> W3.Attribute { compatible | src : W3.Supported }
src =
    W3.string "src"


{-| Follows the attribute definition at [html.spec.whatwg.org/srcdoc](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-srcdoc)
-}
srcdoc : String -> W3.Attribute { compatible | srcdoc : W3.Supported }
srcdoc =
    W3.string "srcdoc"


{-| Follows the attribute definition at [html.spec.whatwg.org/srclang](https://html.spec.whatwg.org/multipage/media.html#attr-track-srclang)
-}
srclang : String -> W3.Attribute { compatible | srclang : W3.Supported }
srclang =
    W3.string "srclang"


{-| Follows the attribute definition at [html.spec.whatwg.org/img-srcset](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-srcset),
[html.spec.whatwg.org/source-srcset](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-srcset)
-}
srcset : List String -> W3.Attribute { compatible | srcset : W3.Supported }
srcset =
    W3.tokens "srcset"


{-| Follows the attribute definition at [html.spec.whatwg.org/start](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-start)
-}
start : Int -> W3.Attribute { compatible | start : W3.Supported }
start =
    W3.number "start"


{-| Follows the attribute definition at [html.spec.whatwg.org/step](https://html.spec.whatwg.org/multipage/input.html#attr-input-step)
-}
step : Int -> W3.Attribute { compatible | step : W3.Supported }
step =
    W3.number "step"


{-| Follows the attribute definition at [html.spec.whatwg.org/target](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-target)
[html.spec.whatwg.org/form-target](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-target)
-}
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


{-| Follows the attribute definition at [html.spec.whatwg.org/usemap](https://html.spec.whatwg.org/multipage/image-maps.html#attr-hyperlink-usemap)
-}
usemap : String -> W3.Attribute { compatible | usemap : W3.Supported }
usemap =
    W3.string "usemap"


{-| Follows the attribute definition at [html.spec.whatwg.org/button-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-button-value),
[html.spec.whatwg.org/option-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-value),
[html.spec.whatwg.org/data-value](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-data-value),
[html.spec.whatwg.org/input-value](https://html.spec.whatwg.org/multipage/input.html#attr-input-value),
[html.spec.whatwg.org/param-value](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-param-value)
-}
value : String -> W3.Attribute { compatible | value : W3.Supported }
value =
    W3.string "value"


{-| Follows the attribute definition at [html.spec.whatwg.org/width](https://html.spec.whatwg.org/multipage/embedded-content-other.html#attr-dim-width),
[html.spec.whatwg.org/canvas-width](https://html.spec.whatwg.org/multipage/canvas.html#attr-canvas-width)
-}
width : Int -> W3.Attribute { compatible | width : W3.Supported }
width =
    W3.number "width"


{-| Follows the attribute definition at [html.spec.whatwg.org/wrap](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-wrap)
-}
wrap :
    W3.Value
        { soft : W3.SupportedValue
        , hard : W3.SupportedValue
        }
    -> W3.Attribute { compatible | wrap : W3.Supported }
wrap =
    W3.value "wrap"


{-| -}
allowForms : W3.Value { compatible | allowForms : W3.SupportedValue }
allowForms =
    W3.Value "allow-forms"


{-| -}
allowModals : W3.Value { compatible | allowModals : W3.SupportedValue }
allowModals =
    W3.Value "allow-modals"


{-| -}
allowOrientationLock : W3.Value { compatible | allowOrientationLock : W3.SupportedValue }
allowOrientationLock =
    W3.Value "allow-orientation-lock"


{-| -}
allowPointerLock : W3.Value { compatible | allowPointerLock : W3.SupportedValue }
allowPointerLock =
    W3.Value "allow-pointer-lock"


{-| -}
allowPopups : W3.Value { compatible | allowPopups : W3.SupportedValue }
allowPopups =
    W3.Value "allow-popups"


{-| -}
allowPopupsToEscapeSandbox : W3.Value { compatible | allowPopupsToEscapeSandbox : W3.SupportedValue }
allowPopupsToEscapeSandbox =
    W3.Value "allow-popups-to-escape-sandbox"


{-| -}
allowPresentation : W3.Value { compatible | allowPresentation : W3.SupportedValue }
allowPresentation =
    W3.Value "allow-presentation"


{-| -}
allowSameOrigin : W3.Value { compatible | allowSameOrigin : W3.SupportedValue }
allowSameOrigin =
    W3.Value "allow-same-origin"


{-| -}
allowScripts : W3.Value { compatible | allowScripts : W3.SupportedValue }
allowScripts =
    W3.Value "allow-scripts"


{-| -}
allowTopNavigation : W3.Value { compatible | allowTopNavigation : W3.SupportedValue }
allowTopNavigation =
    W3.Value "allow-top-navigation"


{-| -}
allowTopNavigationByUserActivation : W3.Value { compatible | allowTopNavigationByUserActivation : W3.SupportedValue }
allowTopNavigationByUserActivation =
    W3.Value "allow-top-navigation-by-user-activation"


{-| -}
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


{-| -}
blank : W3.Value { compatible | blank : W3.SupportedValue }
blank =
    W3.Value "_blank"


{-| -}
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


{-| -}
formData : W3.Value { compatible | formData : W3.SupportedValue }
formData =
    W3.Value "multipart/form-data"


{-| -}
formUrlEncoded : W3.Value { compatible | formUrlEncoded : W3.SupportedValue }
formUrlEncoded =
    W3.Value "application/x-www-form-urlencoded"


{-| -}
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


{-| -}
lowerAlpha : W3.Value { compatible | lowerAlpha : W3.SupportedValue }
lowerAlpha =
    W3.Value "a"


{-| -}
lowerRoman : W3.Value { compatible | lowerRoman : W3.SupportedValue }
lowerRoman =
    W3.Value "i"


{-| -}
ltr : W3.Value { compatible | ltr : W3.SupportedValue }
ltr =
    W3.Value "ltr"


{-| -}
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


{-| -}
ordinal : W3.Value { compatible | ordinal : W3.SupportedValue }
ordinal =
    W3.Value "1"


{-| -}
parent : W3.Value { compatible | parent : W3.SupportedValue }
parent =
    W3.Value "_parent"


{-| -}
plainText : W3.Value { compatible | plainText : W3.SupportedValue }
plainText =
    W3.Value "text/plain"


{-| -}
poly : W3.Value { compatible | poly : W3.SupportedValue }
poly =
    W3.Value "poly"


{-| -}
polygon : W3.Value { compatible | polygon : W3.SupportedValue }
polygon =
    W3.Value "polygon"


{-| -}
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


{-| -}
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


{-| -}
top : W3.Value { compatible | top : W3.SupportedValue }
top =
    W3.Value "_top"


{-| -}
upperAlpha : W3.Value { compatible | upperAlpha : W3.SupportedValue }
upperAlpha =
    W3.Value "A"


{-| -}
upperRoman : W3.Value { compatible | upperRoman : W3.SupportedValue }
upperRoman =
    W3.Value "I"


{-| -}
url : W3.Value { compatible | url : W3.SupportedValue }
url =
    W3.Value "url"


{-| -}
useCredentials : W3.Value { compatible | useCredentials : W3.SupportedValue }
useCredentials =
    W3.Value "use-credentials"


{-| -}
words : W3.Value { compatible | words : W3.SupportedValue }
words =
    W3.Value "words"
