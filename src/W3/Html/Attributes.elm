module W3.Html.Attributes exposing
    ( Value
    , accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate
    , abbr, accept, acceptcharset, action, allow, allowfullscreen, allowpaymentrequest, alt, autocomplete, autoplay, checked, cite, cols, colspan, controls, coords, crossorigin, data, datetime, decoding, default, dirname, disabled, download, enctype, for, form, formaction, formenctype, formmethod, formnovalidate, formtarget, headers, height, high, href, hreflang, ismap, kind, label, list, loop, low, max, maxlength, media, method, min, minlength, multiple, muted, name, novalidate, open, optimum, pattern, ping, placeholder, playsinline, poster, preload, readonly, referrerpolicy, rel, required, reversed, rows, rowspan, sandbox, scope, selected, shape, size, span, start, step, src, srcdoc, srclang, srcset, sizes, target, type_button, type_input, type_list, type_mime, usemap, value, value_ordinal, width, wrap
    , allow_forms, allow_modals, allow_orientation_lock, allow_pointer_lock, allow_popups, allow_popups_to_escape_sandbox, allow_presentation, allow_same_origin, allow_scripts, allow_top_navigation, allow_top_navigation_by_user_activation, anonymous, auto, async, blank_, button, captions, chapters, characters, circ, circle, col, colgroup, decimal, default_, description, dialog, done, email, enter, form_data, form_url_encoded, frame, get, go, hard, loweralpha, lowerroman, ltr, metadata, next, no, none, numeric, off, on, ordinal, parent_, plaintext, poly, polygon, post, previous, rect, rectangle, reset, row, rowgroup, rtl, search, self_, send, sentences, soft, submit, subtitles, sync, tel, text, top_, upperalpha, upperroman, url, use_credentials, words, yes
    , attribute
    )

{-| Module that defines all HTML attributes and values


# Types

@docs Value


# Global Attributes

These Attributes can be assigned to any HTML element as defined by [html.spec.whatwg.org/GlobalAttributes](https://html.spec.whatwg.org/multipage/dom.html#global-attributes)

@docs accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate


# Attributes

These Attributes may be assigned to only specific elements. That is defined on a per-element basis.

@docs abbr, accept, acceptcharset, action, allow, allowfullscreen, allowpaymentrequest, alt, autocomplete, autoplay, checked, cite, cols, colspan, controls, coords, crossorigin, data, datetime, decoding, default, dirname, disabled, download, enctype, for, form, formaction, formenctype, formmethod, formnovalidate, formtarget, headers, height, high, href, hreflang, ismap, kind, label, list, loop, low, max, maxlength, media, method, min, minlength, multiple, muted, name, novalidate, open, optimum, pattern, ping, placeholder, playsinline, poster, preload, readonly, referrerpolicy, rel, required, reversed, rows, rowspan, sandbox, scope, selected, shape, size, span, start, step, src, srcdoc, srclang, srcset, sizes, target, type_button, type_input, type_list, type_mime, usemap, value, value_ordinal, width, wrap


# Values

All of the enumerated values that particular Attributes may have.

@docs allow_forms, allow_modals, allow_orientation_lock, allow_pointer_lock, allow_popups, allow_popups_to_escape_sandbox, allow_presentation, allow_same_origin, allow_scripts, allow_top_navigation, allow_top_navigation_by_user_activation, anonymous, auto, async, blank_, button, captions, chapters, characters, circ, circle, col, colgroup, decimal, default_, description, dialog, done, email, enter, form_data, form_url_encoded, frame, get, go, hard, loweralpha, lowerroman, ltr, metadata, next, no, none, numeric, off, on, ordinal, parent_, plaintext, poly, polygon, post, previous, rect, rectangle, reset, row, rowgroup, rtl, search, self_, send, sentences, soft, submit, subtitles, sync, tel, text, top_, upperalpha, upperroman, url, use_credentials, words, yes


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

import Json.Encode as Json
import W3.Html.Help as Html


{-| -}
type alias Value a =
    Html.Value a


{-| Follows the attribute definition at [html.spec.whatwg.org/accesskey](https://html.spec.whatwg.org/multipage/interaction.html#the-accesskey-attribute)
-}
accesskey : List String -> Html.Attribute { compatible | accesskey : Html.SupportedAttribute }
accesskey =
    Html.tokens "accesskey"


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
    -> Html.Attribute { compatible | autocapitalize : Html.SupportedAttribute }
autocapitalize =
    Html.value "autocapitalize"


{-| Follows the attribute definition at [html.spec.whatwg.org/autofocus](https://html.spec.whatwg.org/multipage/interaction.html#attr-fe-autofocus)
-}
autofocus : Bool -> Html.Attribute { compatible | autofocus : Html.SupportedAttribute }
autofocus =
    Html.bool "autofocus"


{-| Follows the attribute definition at [html.spec.whatwg.org/class](https://html.spec.whatwg.org/multipage/dom.html#classes)
-}
class : List String -> Html.Attribute { compatible | class : Html.SupportedAttribute }
class val =
    Html.property "className" (Json.string (String.join " " val))


{-| Follows the attribute definition at [html.spec.whatwg.org/contenteditable](https://html.spec.whatwg.org/multipage/interaction.html#attr-contenteditable)
-}
contenteditable : Maybe Bool -> Html.Attribute { compatible | contenteditable : Html.SupportedAttribute }
contenteditable =
    Html.maybeBool "contenteditable" ""


{-| Follows the attribute definition at [html.spec.whatwg.org/custom data](https://html.spec.whatwg.org/multipage/dom.html#custom-data-attribute)
-}
data_ : String -> String -> Html.Attribute { compatible | data_ : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | dir : Html.SupportedAttribute }
dir =
    Html.value "dir"


{-| Follows the attribute definition at [html.spec.whatwg.org/draggable](https://html.spec.whatwg.org/multipage/dnd.html#the-draggable-attribute)
-}
draggable : Maybe Bool -> Html.Attribute { compatible | draggable : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | enterkeyhint : Html.SupportedAttribute }
enterkeyhint =
    Html.value "enterkeyhint"


{-| Follows the attribute definition at [html.spec.whatwg.org/hidden](https://html.spec.whatwg.org/multipage/interaction.html#the-hidden-attribute)
-}
hidden : Bool -> Html.Attribute { compatible | hidden : Html.SupportedAttribute }
hidden =
    Html.bool "hidden"


{-| Follows the attribute definition at [html.spec.whatwg.org/id](https://html.spec.whatwg.org/multipage/dom.html#the-id-attribute)
-}
id : String -> Html.Attribute { compatible | id : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | inputmode : Html.SupportedAttribute }
inputmode =
    Html.value "inputmode"


{-| Follows the attribute definition at [html.spec.whatwg.org/is](https://html.spec.whatwg.org/multipage/custom-elements.html#attr-is)
-}
is : String -> Html.Attribute { compatible | is : Html.SupportedAttribute }
is =
    Html.string "is"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemid](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemid)
-}
itemid : String -> Html.Attribute { compatible | itemid : Html.SupportedAttribute }
itemid =
    Html.string "itemid"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemprop](https://html.spec.whatwg.org/multipage/microdata.html#names:-the-itemprop-attribute)
-}
itemprop : List String -> Html.Attribute { compatible | itemprop : Html.SupportedAttribute }
itemprop =
    Html.tokens "itemprop"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemref](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemref)
-}
itemref : List String -> Html.Attribute { compatible | itemref : Html.SupportedAttribute }
itemref =
    Html.tokens "itemref"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemscope](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemscope)
-}
itemscope : Bool -> Html.Attribute { compatible | itemscope : Html.SupportedAttribute }
itemscope =
    Html.bool "itemscope"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemtype](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemtype)
-}
itemtype : List String -> Html.Attribute { compatible | itemtype : Html.SupportedAttribute }
itemtype =
    Html.tokens "itemtype"


{-| Follows the attribute definition at [html.spec.whatwg.org/lang](https://html.spec.whatwg.org/multipage/dom.html#attr-lang)
-}
lang : String -> Html.Attribute { compatible | lang : Html.SupportedAttribute }
lang =
    Html.string "lang"


{-| Follows the attribute definition at [html.spec.whatwg.org/nonce](https://html.spec.whatwg.org/multipage/urls-and-fetching.html#attr-nonce)
-}
nonce : Int -> Html.Attribute { compatible | nonce : Html.SupportedAttribute }
nonce =
    Html.number "nonce"


{-| Follows the attribute definition at [html.spec.whatwg.org/slot](https://html.spec.whatwg.org/multipage/dom.html#the-id-attribute)
-}
slot : String -> Html.Attribute { compatible | slot : Html.SupportedAttribute }
slot =
    Html.string "slot"


{-| Follows the attribute definition at [html.spec.whatwg.org/spellcheck](https://html.spec.whatwg.org/multipage/interaction.html#attr-spellcheck)
-}
spellcheck : Maybe Bool -> Html.Attribute { compatible | spellcheck : Html.SupportedAttribute }
spellcheck =
    Html.maybeBool "spellcheck" ""


{-| Follows the attribute definition at [html.spec.whatwg.org/style](https://html.spec.whatwg.org/multipage/dom.html#the-style-attribute)
-}
style : String -> Html.Attribute { compatible | style : Html.SupportedAttribute }
style =
    Html.string "style"


{-| Follows the attribute definition at [html.spec.whatwg.org/tabindex](https://html.spec.whatwg.org/multipage/interaction.html#attr-tabindex)
-}
tabindex : Int -> Html.Attribute { compatible | tabindex : Html.SupportedAttribute }
tabindex =
    Html.number "tabindex"


{-| Follows the attribute definition at [html.spec.whatwg.org/title](https://html.spec.whatwg.org/multipage/dom.html#attr-title)
-}
title : String -> Html.Attribute { compatible | title : Html.SupportedAttribute }
title =
    Html.string "title"


{-| Follows the attribute definition at [html.spec.whatwg.org/translate](https://html.spec.whatwg.org/multipage/dom.html#attr-translate)
-}
translate : Bool -> Html.Attribute { compatible | translate : Html.SupportedAttribute }
translate =
    Html.boolValue "translate" yes no


{-| Follows the attribute definition at [html.spec.whatwg.org/abbr](https://html.spec.whatwg.org/multipage/tables.html#attr-th-abbr)
-}
abbr : String -> Html.Attribute { compatible | abbr : Html.SupportedAttribute }
abbr =
    Html.string "abbr"


{-| Follows the attribute definition at [html.spec.whatwg.org/accept](https://html.spec.whatwg.org/multipage/input.html#attr-input-accept)
-}
accept : List String -> Html.Attribute { compatible | accept : Html.SupportedAttribute }
accept values =
    Html.Attribute "accept" (String.join "," values)


{-| Follows the attribute definition at [html.spec.whatwg.org/acceptcharset](https://html.spec.whatwg.org/multipage/forms.html#attr-form-accept-charset)
-}
acceptcharset : List String -> Html.Attribute { compatible | acceptcharset : Html.SupportedAttribute }
acceptcharset =
    Html.tokens "acceptcharset"


{-| Follows the attribute definition at [html.spec.whatwg.org/action](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-action)
-}
action : String -> Html.Attribute { compatible | action : Html.SupportedAttribute }
action =
    Html.string "action"


{-| Follows the attribute definition at [html.spec.whatwg.org/allow](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allow)
-}
allow : String -> Html.Attribute { compatible | allow : Html.SupportedAttribute }
allow =
    Html.string "allow"


{-| Follows the attribute definition at [html.spec.whatwg.org/allowfullscreen](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allowfullscreen)
-}
allowfullscreen : Bool -> Html.Attribute { compatible | allowfullscreen : Html.SupportedAttribute }
allowfullscreen =
    Html.bool "allowfullscreen"


{-| Follows the attribute definition at [html.spec.whatwg.org/allowpaymentrequest](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allowpaymentrequest)
-}
allowpaymentrequest : Bool -> Html.Attribute { compatible | allowpaymentrequest : Html.SupportedAttribute }
allowpaymentrequest =
    Html.bool "allowpaymentrequest"


{-| Follows the attribute definition at [html.spec.whatwg.org/area-alt](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-alt),
[html.spec.whatwg.org/image-alt](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-alt),
[html.spec.whatwg.org/input-alt](https://html.spec.whatwg.org/multipage/input.html#attr-input-alt)
-}
alt : String -> Html.Attribute { compatible | alt : Html.SupportedAttribute }
alt =
    Html.string "alt"


{-| Follows the attribute definition at [html.spec.whatwg.org/autocomplete](https://html.spec.whatwg.org/multipage/forms.html#attr-form-autocomplete)
-}
autocomplete : Bool -> Html.Attribute { compatible | autocomplete : Html.SupportedAttribute }
autocomplete =
    Html.boolValue "autocomplete" on off


{-| Follows the attribute definition at [html.spec.whatwg.org/autoplay](https://html.spec.whatwg.org/multipage/media.html#attr-media-autoplay),
-}
autoplay : Bool -> Html.Attribute { compatible | autoplay : Html.SupportedAttribute }
autoplay =
    Html.bool "autoplay"


{-| Follows the attribute definition at [html.spec.whatwg.org/checked](https://html.spec.whatwg.org/multipage/input.html#attr-input-checked)
-}
checked : Bool -> Html.Attribute { compatible | checked : Html.SupportedAttribute }
checked =
    Html.bool "checked"


{-| Follows the attribute definition at [html.spec.whatwg.org/blockquote-cite](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-blockquote-cite),
[html.spec.whatwg.org/mod-cite](https://html.spec.whatwg.org/multipage/edits.html#attr-mod-cite),
[html.spec.whatwg.org/q-cite](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-q-cite)
-}
cite : String -> Html.Attribute { compatible | cite : Html.SupportedAttribute }
cite =
    Html.string "cite"


{-| Follows the attribute definition at [html.spec.whatwg.org/cols](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-cols)
-}
cols : Int -> Html.Attribute { compatible | cols : Html.SupportedAttribute }
cols =
    Html.number "cols"


{-| Follows the attribute definition at [html.spec.whatwg.org/colspan](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-colspan)
-}
colspan : Int -> Html.Attribute { compatible | colspan : Html.SupportedAttribute }
colspan =
    Html.number "colspan"


{-| Follows the attribute definition at [html.spec.whatwg.org/controls](https://html.spec.whatwg.org/multipage/media.html#attr-media-controls)
-}
controls : Bool -> Html.Attribute { compatible | controls : Html.SupportedAttribute }
controls =
    Html.bool "controls"


{-| Follows the attribute definition at [html.spec.whatwg.org/coords](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-coords)
-}
coords : List Int -> Html.Attribute { compatible | coords : Html.SupportedAttribute }
coords numbers =
    Html.Attribute "coords" (List.map String.fromInt numbers |> String.join ",")


{-| Follows the attribute definition at [html.spec.whatwg.org/media-crossorigin](https://html.spec.whatwg.org/multipage/media.html#attr-media-crossorigin),
[html.spec.whatwg.org/img-crossorigin](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-crossorigin)
-}
crossorigin :
    Html.Value
        { anonymous : Html.SupportedValue
        , use_credentials : Html.SupportedValue
        }
    -> Html.Attribute { compatible | crossorigin : Html.SupportedAttribute }
crossorigin =
    Html.value "crossorigin"


{-| Follows the attribute definition at [html.spec.whatwg.org/data](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-data)
-}
data : String -> Html.Attribute { compatible | data : Html.SupportedAttribute }
data =
    Html.string "data"


{-| Follows the attribute definition at [html.spec.whatwg.org/mod-datetime](https://html.spec.whatwg.org/multipage/edits.html#attr-mod-datetime),
[html.spec.whatwg.org/time-datetime](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-time-datetime)
-}
datetime : String -> Html.Attribute { compatible | datetime : Html.SupportedAttribute }
datetime =
    Html.string "datetime"


{-| Follows the attribute definition at [html.spec.whatwg.org/decoding](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-decoding)
-}
decoding :
    Html.Value
        { sync : Html.SupportedValue
        , async : Html.SupportedValue
        , auto : Html.SupportedValue
        }
    -> Html.Attribute { compatible | decoding : Html.SupportedAttribute }
decoding =
    Html.value "decoding"


{-| Follows the attribute definition at [html.spec.whatwg.org/default](https://html.spec.whatwg.org/multipage/media.html#attr-track-default)
-}
default : Bool -> Html.Attribute { compatible | default : Html.SupportedAttribute }
default =
    Html.bool "default"


{-| Follows the attribute definition at [html.spec.whatwg.org/dirname](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-dirname)
-}
dirname : String -> Html.Attribute { compatible | dirname : Html.SupportedAttribute }
dirname =
    Html.string "dirname"


{-| Follows the attribute definition at [html.spec.whatwg.org/disabled](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-disabled),
[html.spec.whatwg.org/fieldset-disabled](https://html.spec.whatwg.org/multipage/form-elements.html#attr-fieldset-disabled)
-}
disabled : Bool -> Html.Attribute { compatible | disabled : Html.SupportedAttribute }
disabled =
    Html.bool "disabled"


{-| Follows the attribute definition at [html.spec.whatwg.org/download](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-download)
-}
download : String -> Html.Attribute { compatible | download : Html.SupportedAttribute }
download =
    Html.string "download"


{-| Follows the attribute definition at [html.spec.whatwg.org/enctype](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-enctype)
-}
enctype :
    Html.Value
        { form_url_encoded : Html.SupportedValue
        , form_data : Html.SupportedValue
        , plaintext : Html.SupportedValue
        }
    -> Html.Attribute { compatible | enctype : Html.SupportedAttribute }
enctype =
    Html.value "enctype"


{-| Follows the attribute definition at [html.spec.whatwg.org/label-for](https://html.spec.whatwg.org/multipage/forms.html#attr-label-for),
[html.spec.whatwg.org/output-for](https://html.spec.whatwg.org/multipage/form-elements.html#attr-output-for)
-}
for : String -> Html.Attribute { compatible | for : Html.SupportedAttribute }
for =
    Html.string "for"


{-| Follows the attribute definition at [html.spec.whatwg.org/form](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fae-form)
-}
form : String -> Html.Attribute { compatible | form : Html.SupportedAttribute }
form =
    Html.string "form"


{-| Follows the attribute definition at [html.spec.whatwg.org/formaction](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formaction)
-}
formaction : String -> Html.Attribute { compatible | formaction : Html.SupportedAttribute }
formaction =
    Html.string "formaction"


{-| Follows the attribute definition at [html.spec.whatwg.org/formenctype](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formenctype)
-}
formenctype :
    Html.Value
        { form_url_encoded : Html.SupportedValue
        , form_data : Html.SupportedValue
        , plaintext : Html.SupportedValue
        }
    -> Html.Attribute { compatible | formenctype : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | formmethod : Html.SupportedAttribute }
formmethod =
    Html.value "formmethod"


{-| Follows the attribute definition at [html.spec.whatwg.org/formnovalidate](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formnovalidate)
-}
formnovalidate : Bool -> Html.Attribute { compatible | formnovalidate : Html.SupportedAttribute }
formnovalidate =
    Html.bool "formnovalidate"


{-| Follows the attribute definition at [html.spec.whatwg.org/formtarget](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formtarget)
-}
formtarget :
    Html.Value
        { blank_ : Html.SupportedValue
        , self_ : Html.SupportedValue
        , parent_ : Html.SupportedValue
        , top_ : Html.SupportedValue
        , frame : Html.SupportedValue
        }
    -> Html.Attribute { compatible | formtarget : Html.SupportedAttribute }
formtarget =
    Html.value "formtarget"


{-| Follows the attribute definition at [html.spec.whatwg.org/headers](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-headers)
-}
headers : List String -> Html.Attribute { compatible | headers : Html.SupportedAttribute }
headers =
    Html.tokens "headers"


{-| Follows the attribute definition at [html.spec.whatwg.org/height](https://html.spec.whatwg.org/multipage/embedded-content-other.html#attr-dim-height),
[html.spec.whatwg.org/canvas-height](https://html.spec.whatwg.org/multipage/canvas.html#attr-canvas-height)
-}
height : Int -> Html.Attribute { compatible | height : Html.SupportedAttribute }
height =
    Html.number "height"


{-| Follows the attribute definition at [html.spec.whatwg.org/high](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-high)
-}
high : Int -> Html.Attribute { compatible | high : Html.SupportedAttribute }
high =
    Html.number "high"


{-| Follows the attribute definition at [html.spec.whatwg.org/href](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-href)
-}
href : String -> Html.Attribute { compatible | href : Html.SupportedAttribute }
href =
    Html.string "href"


{-| Follows the attribute definition at [html.spec.whatwg.org/hreflang](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-hreflang)
-}
hreflang : String -> Html.Attribute { compatible | hreflang : Html.SupportedAttribute }
hreflang =
    Html.string "hreflang"


{-| Follows the attribute definition at [html.spec.whatwg.org/ismap](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-ismap)
-}
ismap : Bool -> Html.Attribute { compatible | ismap : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | kind : Html.SupportedAttribute }
kind =
    Html.value "kind"


{-| Follows the attribute definition at [html.spec.whatwg.org/optgroup-label](https://html.spec.whatwg.org/multipage/form-elements.html#attr-optgroup-label),
[html.spec.whatwg.org/option-label](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-label),
[html.spec.whatwg.org/track-label](https://html.spec.whatwg.org/multipage/media.html#attr-track-label)
-}
label : String -> Html.Attribute { compatible | label : Html.SupportedAttribute }
label =
    Html.string "label"


{-| Follows the attribute definition at [html.spec.whatwg.org/list](https://html.spec.whatwg.org/multipage/input.html#attr-input-list)
-}
list : String -> Html.Attribute { compatible | list : Html.SupportedAttribute }
list =
    Html.string "list"


{-| Follows the attribute definition at [html.spec.whatwg.org/loop](https://html.spec.whatwg.org/multipage/media.html#attr-media-loop)
-}
loop : Bool -> Html.Attribute { compatible | loop : Html.SupportedAttribute }
loop =
    Html.bool "loop"


{-| Follows the attribute definition at [html.spec.whatwg.org/low](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-low)
-}
low : Int -> Html.Attribute { compatible | low : Html.SupportedAttribute }
low =
    Html.number "low"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-max](https://html.spec.whatwg.org/multipage/input.html#attr-input-max),
[html.spec.whatwg.org/meter-max](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-max),
[html.spec.whatwg.org/progress-max](https://html.spec.whatwg.org/multipage/form-elements.html#attr-progress-max)
-}
max : Int -> Html.Attribute { compatible | max : Html.SupportedAttribute }
max =
    Html.number "max"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-maxlength](https://html.spec.whatwg.org/multipage/input.html#attr-input-maxlength),
[html.spec.whatwg.org/textarea-maxlength](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-maxlength)
-}
maxlength : Int -> Html.Attribute { compatible | maxlength : Html.SupportedAttribute }
maxlength =
    Html.number "maxlength"


{-| Follows the attribute definition at [html.spec.whatwg.org/media](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-media)
-}
media : String -> Html.Attribute { compatible | media : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | method : Html.SupportedAttribute }
method =
    Html.value "method"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-min](https://html.spec.whatwg.org/multipage/input.html#attr-input-min),
[html.spec.whatwg.org/meter-min](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-min)
-}
min : Int -> Html.Attribute { compatible | min : Html.SupportedAttribute }
min =
    Html.number "min"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-minlength](https://html.spec.whatwg.org/multipage/input.html#attr-input-minlength),
[html.spec.whatwg.org/textarea-minlength](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-minlength)
-}
minlength : Int -> Html.Attribute { compatible | minlength : Html.SupportedAttribute }
minlength =
    Html.number "minlength"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-multiple](https://html.spec.whatwg.org/multipage/input.html#attr-input-multiple),
[html.spec.whatwg.org/select-multiple](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-multiple)
-}
multiple : Bool -> Html.Attribute { compatible | multiple : Html.SupportedAttribute }
multiple =
    Html.bool "multiple"


{-| Follows the attribute definition at [html.spec.whatwg.org/muted](https://html.spec.whatwg.org/multipage/media.html#attr-media-muted)
-}
muted : Bool -> Html.Attribute { compatible | muted : Html.SupportedAttribute }
muted =
    Html.bool "muted"


{-| Follows the attribute definition at [html.spec.whatwg.org/name](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-name),
[html.spec.whatwg.org/form-name](https://html.spec.whatwg.org/multipage/forms.html#attr-form-name),
[html.spec.whatwg.org/iframe-name](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-name),
[html.spec.whatwg.org/object-name](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-name),
[html.spec.whatwg.org/map-name](https://html.spec.whatwg.org/multipage/image-maps.html#attr-map-name),
[html.spec.whatwg.org/param-name](https://html.spec.whatwg.org/multipage/image-maps.html#attr-map-name)
-}
name : String -> Html.Attribute { compatible | name : Html.SupportedAttribute }
name =
    Html.string "name"


{-| Follows the attribute definition at [html.spec.whatwg.org/novalidate](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-novalidate)
-}
novalidate : Bool -> Html.Attribute { compatible | novalidate : Html.SupportedAttribute }
novalidate =
    Html.bool "novalidate"


{-| Follows the attribute definition at [html.spec.whatwg.org/details-open](https://html.spec.whatwg.org/multipage/interactive-elements.html#attr-details-open),
[html.spec.whatwg.org/dialog-open](https://html.spec.whatwg.org/multipage/interactive-elements.html#attr-dialog-open)
-}
open : Bool -> Html.Attribute { compatible | open : Html.SupportedAttribute }
open =
    Html.bool "open"


{-| Follows the attribute definition at [html.spec.whatwg.org/optimum](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-optimum)
-}
optimum : Int -> Html.Attribute { compatible | optimum : Html.SupportedAttribute }
optimum =
    Html.number "optimum"


{-| Follows the attribute definition at [html.spec.whatwg.org/pattern](https://html.spec.whatwg.org/multipage/input.html#attr-input-pattern)
-}
pattern : String -> Html.Attribute { compatible | pattern : Html.SupportedAttribute }
pattern =
    Html.string "pattern"


{-| Follows the attribute definition at [html.spec.whatwg.org/ping](https://html.spec.whatwg.org/multipage/links.html#ping)
-}
ping : List String -> Html.Attribute { compatible | ping : Html.SupportedAttribute }
ping =
    Html.tokens "ping"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-placeholder](https://html.spec.whatwg.org/multipage/input.html#attr-input-placeholder),
[html.spec.whatwg.org/textarea-placeholder](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-placeholder)
-}
placeholder : String -> Html.Attribute { compatible | placeholder : Html.SupportedAttribute }
placeholder =
    Html.string "placeholder"


{-| Follows the attribute definition at [html.spec.whatwg.org/playsinline](https://html.spec.whatwg.org/multipage/media.html#attr-video-playsinline)
-}
playsinline : Bool -> Html.Attribute { compatible | playsinline : Html.SupportedAttribute }
playsinline =
    Html.bool "playsinline"


{-| Follows the attribute definition at [html.spec.whatwg.org/poster](https://html.spec.whatwg.org/multipage/media.html#attr-video-poster)
-}
poster : String -> Html.Attribute { compatible | poster : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | preload : Html.SupportedAttribute }
preload =
    Html.value "preload"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-readonly](https://html.spec.whatwg.org/multipage/input.html#attr-input-readonly),
[html.spec.whatwg.org/textarea-readonly](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-readonly)
-}
readonly : Bool -> Html.Attribute { compatible | readonly : Html.SupportedAttribute }
readonly =
    Html.bool "readonly"


{-| Follows the attribute definition at [html.spec.whatwg.org/referrerpolicy](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-referrerpolicy)
-}
referrerpolicy : String -> Html.Attribute { compatible | referrerpolicy : Html.SupportedAttribute }
referrerpolicy =
    Html.string "referrerpolicy"


{-| Follows the attribute definition at [html.spec.whatwg.org/rel](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-rel)
-}
rel : List String -> Html.Attribute { compatible | rel : Html.SupportedAttribute }
rel =
    Html.tokens "rel"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-required](https://html.spec.whatwg.org/multipage/input.html#attr-input-required),
[html.spec.whatwg.org/select-required](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-required),
[html.spec.whatwg.org/textarea-required](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-required)
-}
required : Bool -> Html.Attribute { compatible | required : Html.SupportedAttribute }
required =
    Html.bool "required"


{-| Follows the attribute definition at [html.spec.whatwg.org/reversed](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-reversed)
-}
reversed : Bool -> Html.Attribute { compatible | reversed : Html.SupportedAttribute }
reversed =
    Html.bool "reversed"


{-| Follows the attribute definition at [html.spec.whatwg.org/rows](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-rows)
-}
rows : Int -> Html.Attribute { compatible | rows : Html.SupportedAttribute }
rows =
    Html.number "rows"


{-| Follows the attribute definition at [html.spec.whatwg.org/rowspan](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-rowspan)
-}
rowspan : Int -> Html.Attribute { compatible | rowspan : Html.SupportedAttribute }
rowspan =
    Html.number "rowspan"


{-| Follows the attribute definition at [html.spec.whatwg.org/sandbox](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-sandbox)
-}
sandbox :
    List
        (Html.Value
            { allow_forms : Html.SupportedValue
            , allow_modals : Html.SupportedValue
            , allow_orientation_lock : Html.SupportedValue
            , allow_pointer_lock : Html.SupportedValue
            , allow_popups : Html.SupportedValue
            , allow_popups_to_escape_sandbox : Html.SupportedValue
            , allow_presentation : Html.SupportedValue
            , allow_same_origin : Html.SupportedValue
            , allow_scripts : Html.SupportedValue
            , allow_top_navigation : Html.SupportedValue
            , allow_top_navigation_by_user_activation : Html.SupportedValue
            }
        )
    -> Html.Attribute { compatible | sandbox : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | scope : Html.SupportedAttribute }
scope =
    Html.value "scope"


{-| Follows the attribute definition at [html.spec.whatwg.org/selected](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-selected)
-}
selected : Bool -> Html.Attribute { compatible | selected : Html.SupportedAttribute }
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
    -> Html.Attribute { compatible | shape : Html.SupportedAttribute }
shape =
    Html.value "shape"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-size](https://html.spec.whatwg.org/multipage/input.html#attr-input-size),
[html.spec.whatwg.org/select-size](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-size)
-}
size : Int -> Html.Attribute { compatible | size : Html.SupportedAttribute }
size =
    Html.number "size"


{-| Follows the attribute definition at [html.spec.whatwg.org/img-sizes](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-sizes),
[html.spec.whatwg.org/source-sizes](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-sizes)
-}
sizes : List String -> Html.Attribute { compatible | sizes : Html.SupportedAttribute }
sizes =
    Html.tokens "sizes"


{-| Follows the attribute definition at [html.spec.whatwg.org/col-span](https://html.spec.whatwg.org/multipage/tables.html#attr-col-span),
[html.spec.whatwg.org/colgroup-span](https://html.spec.whatwg.org/multipage/tables.html#attr-colgroup-span)
-}
span : Int -> Html.Attribute { compatible | span : Html.SupportedAttribute }
span =
    Html.number "span"


{-| Follows the attribute definition at [html.spec.whatwg.org/src](https://html.spec.whatwg.org/multipage/media.html#attr-media-src)
-}
src : String -> Html.Attribute { compatible | src : Html.SupportedAttribute }
src =
    Html.string "src"


{-| Follows the attribute definition at [html.spec.whatwg.org/srcdoc](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-srcdoc)
-}
srcdoc : String -> Html.Attribute { compatible | srcdoc : Html.SupportedAttribute }
srcdoc =
    Html.string "srcdoc"


{-| Follows the attribute definition at [html.spec.whatwg.org/srclang](https://html.spec.whatwg.org/multipage/media.html#attr-track-srclang)
-}
srclang : String -> Html.Attribute { compatible | srclang : Html.SupportedAttribute }
srclang =
    Html.string "srclang"


{-| Follows the attribute definition at [html.spec.whatwg.org/img-srcset](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-srcset),
[html.spec.whatwg.org/source-srcset](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-srcset)
-}
srcset : List String -> Html.Attribute { compatible | srcset : Html.SupportedAttribute }
srcset =
    Html.tokens "srcset"


{-| Follows the attribute definition at [html.spec.whatwg.org/start](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-start)
-}
start : Int -> Html.Attribute { compatible | start : Html.SupportedAttribute }
start =
    Html.number "start"


{-| Follows the attribute definition at [html.spec.whatwg.org/step](https://html.spec.whatwg.org/multipage/input.html#attr-input-step)
-}
step : Int -> Html.Attribute { compatible | step : Html.SupportedAttribute }
step =
    Html.number "step"


{-| Follows the attribute definition at [html.spec.whatwg.org/target](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-target)
[html.spec.whatwg.org/form-target](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-target)
-}
target :
    Html.Value
        { blank_ : Html.SupportedValue
        , self_ : Html.SupportedValue
        , parent_ : Html.SupportedValue
        , top_ : Html.SupportedValue
        , frame : Html.SupportedValue
        }
    -> Html.Attribute { compatible | target : Html.SupportedAttribute }
target =
    Html.value "target"


{-| Follows the attribute definition at [html.spec.whatwg.org/button-type](https://html.spec.whatwg.org/multipage/form-elements.html#attr-button-type)
-}
type_button :
    Html.Value
        { submit : Html.SupportedValue
        , reset : Html.SupportedValue
        , button : Html.SupportedValue
        }
    -> Html.Attribute { compatible | type_button : Html.SupportedAttribute }
type_button =
    Html.value "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-type](https://html.spec.whatwg.org/multipage/input.html#attr-input-type)
-}
type_input : String -> Html.Attribute { compatible | type_input : Html.SupportedAttribute }
type_input =
    Html.string "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/ol-type](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-type)
-}
type_list :
    Html.Value
        { ordinal : Html.SupportedValue
        , loweralpha : Html.SupportedValue
        , upperalpha : Html.SupportedValue
        , lowerroman : Html.SupportedValue
        , upperroman : Html.SupportedValue
        }
    -> Html.Attribute { compatible | type_list : Html.SupportedAttribute }
type_list =
    Html.value "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/a-mimeType](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-type),
[html.spec.whatwg.org/embed-mimeType](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-embed-type),
[html.spec.whatwg.org/object-mimeType](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-type),
[html.spec.whatwg.org/source-mimeType](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-type)
-}
type_mime : String -> Html.Attribute { compatible | type_mime : Html.SupportedAttribute }
type_mime =
    Html.string "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/usemap](https://html.spec.whatwg.org/multipage/image-maps.html#attr-hyperlink-usemap)
-}
usemap : String -> Html.Attribute { compatible | usemap : Html.SupportedAttribute }
usemap =
    Html.string "usemap"


{-| Follows the attribute definition at [html.spec.whatwg.org/button-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-button-value),
[html.spec.whatwg.org/option-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-value),
[html.spec.whatwg.org/data-value](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-data-value),
[html.spec.whatwg.org/input-value](https://html.spec.whatwg.org/multipage/input.html#attr-input-value),
[html.spec.whatwg.org/param-value](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-param-value)
-}
value : String -> Html.Attribute { compatible | value : Html.SupportedAttribute }
value =
    Html.string "value"


{-| Follows the attribute definition at [html.spec.whatwg.org/li-value](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-li-value),
[html.spec.whatwg.org/meter-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-value),
[html.spec.whatwg.org/progress-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-progress-value)
-}
value_ordinal : Int -> Html.Attribute { compatible | value_ordinal : Html.SupportedAttribute }
value_ordinal =
    Html.number "value"


{-| Follows the attribute definition at [html.spec.whatwg.org/width](https://html.spec.whatwg.org/multipage/embedded-content-other.html#attr-dim-width),
[html.spec.whatwg.org/canvas-width](https://html.spec.whatwg.org/multipage/canvas.html#attr-canvas-width)
-}
width : Int -> Html.Attribute { compatible | width : Html.SupportedAttribute }
width =
    Html.number "width"


{-| Follows the attribute definition at [html.spec.whatwg.org/wrap](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-wrap)
-}
wrap :
    Html.Value
        { soft : Html.SupportedValue
        , hard : Html.SupportedValue
        }
    -> Html.Attribute { compatible | wrap : Html.SupportedAttribute }
wrap =
    Html.value "wrap"


{-| -}
allow_forms : Html.Value { compatible | allow_forms : Html.SupportedValue }
allow_forms =
    Html.Value "allow-forms"


{-| -}
allow_modals : Html.Value { compatible | allow_modals : Html.SupportedValue }
allow_modals =
    Html.Value "allow-modals"


{-| -}
allow_orientation_lock : Html.Value { compatible | allow_orientation_lock : Html.SupportedValue }
allow_orientation_lock =
    Html.Value "allow-orientation-lock"


{-| -}
allow_pointer_lock : Html.Value { compatible | allow_pointer_lock : Html.SupportedValue }
allow_pointer_lock =
    Html.Value "allow-pointer-lock"


{-| -}
allow_popups : Html.Value { compatible | allow_popups : Html.SupportedValue }
allow_popups =
    Html.Value "allow-popups"


{-| -}
allow_popups_to_escape_sandbox : Html.Value { compatible | allow_popups_to_escape_sandbox : Html.SupportedValue }
allow_popups_to_escape_sandbox =
    Html.Value "allow-popups-to-escape-sandbox"


{-| -}
allow_presentation : Html.Value { compatible | allow_presentation : Html.SupportedValue }
allow_presentation =
    Html.Value "allow-presentation"


{-| -}
allow_same_origin : Html.Value { compatible | allow_same_origin : Html.SupportedValue }
allow_same_origin =
    Html.Value "allow-same-origin"


{-| -}
allow_scripts : Html.Value { compatible | allow_scripts : Html.SupportedValue }
allow_scripts =
    Html.Value "allow-scripts"


{-| -}
allow_top_navigation : Html.Value { compatible | allow_top_navigation : Html.SupportedValue }
allow_top_navigation =
    Html.Value "allow-top-navigation"


{-| -}
allow_top_navigation_by_user_activation : Html.Value { compatible | allow_top_navigation_by_user_activation : Html.SupportedValue }
allow_top_navigation_by_user_activation =
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
blank_ : Html.Value { compatible | blank_ : Html.SupportedValue }
blank_ =
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
form_data : Html.Value { compatible | form_data : Html.SupportedValue }
form_data =
    Html.Value "multipart/form-data"


{-| -}
form_url_encoded : Html.Value { compatible | form_url_encoded : Html.SupportedValue }
form_url_encoded =
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
loweralpha : Html.Value { compatible | loweralpha : Html.SupportedValue }
loweralpha =
    Html.Value "a"


{-| -}
lowerroman : Html.Value { compatible | lowerroman : Html.SupportedValue }
lowerroman =
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
no : Html.Value { compatible | no : Html.SupportedValue }
no =
    Html.Value "no"


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
parent_ : Html.Value { compatible | parent_ : Html.SupportedValue }
parent_ =
    Html.Value "_parent"


{-| -}
plaintext : Html.Value { compatible | plaintext : Html.SupportedValue }
plaintext =
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
self_ : Html.Value { compatible | self_ : Html.SupportedValue }
self_ =
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
top_ : Html.Value { compatible | top_ : Html.SupportedValue }
top_ =
    Html.Value "_top"


{-| -}
upperalpha : Html.Value { compatible | upperalpha : Html.SupportedValue }
upperalpha =
    Html.Value "A"


{-| -}
upperroman : Html.Value { compatible | upperroman : Html.SupportedValue }
upperroman =
    Html.Value "I"


{-| -}
url : Html.Value { compatible | url : Html.SupportedValue }
url =
    Html.Value "url"


{-| -}
use_credentials : Html.Value { compatible | use_credentials : Html.SupportedValue }
use_credentials =
    Html.Value "use-credentials"


{-| -}
words : Html.Value { compatible | words : Html.SupportedValue }
words =
    Html.Value "words"


{-| -}
yes : Html.Value { compatible | yes : Html.SupportedValue }
yes =
    Html.Value "yes"


{-| Use this to break out of this package's requirements. Useful if there is something that this package does not allow and you want to support it.
-}
attribute : String -> String -> Html.Attribute a
attribute =
    Html.Attribute
