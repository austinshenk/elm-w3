module W3.Html.Attributes exposing
    ( Value
    , accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate
    , abbr, accept, acceptcharset, action, allow, allowfullscreen, allowpaymentrequest, alt, autocomplete, autoplay, checked, cite, cols, colspan, controls, coords, crossorigin, data, datetime, decoding, default, dirname, disabled, download, enctype, files, for, form, formaction, formenctype, formmethod, formnovalidate, formtarget, headers, height, high, href, hreflang, ismap, kind, label, list, loop, low, max, maxlength, media, method, min, minlength, multiple, muted, name, novalidate, open, optimum, pattern, ping, placeholder, playsinline, poster, preload, readonly, referrerpolicy, rel, required, reversed, rows, rowspan, sandbox, scope, selected, shape, size, span, start, step, src, srcdoc, srclang, srcset, sizes, target, type_button, type_input, type_list, type_mime, usemap, value, valueAsDate, valueAsNumber, value_ordinal, width, wrap
    , allow_forms, allow_modals, allow_orientation_lock, allow_pointer_lock, allow_popups, allow_popups_to_escape_sandbox, allow_presentation, allow_same_origin, allow_scripts, allow_top_navigation, allow_top_navigation_by_user_activation, alternate, anonymous, author, auto, async, backward, blank_, bookmark, button, canonical, captions, chapters, characters, circ, circle, col, colgroup, decimal, default_, description, dialog, dns_prefetch, done, email, enter, external, form_data, form_url_encoded, forward, frame, get, go, hard, help, icon, license, loweralpha, lowerroman, ltr, metadata, modulepreload, next, no, nofollow, none, noopener, noreferrer, no_referrer, no_referrer_when_downgrade, numeric, off, on, opener, ordinal, origin, origin_when_cross_origin, parent_, pingback, plaintext, poly, polygon, post, preconnect, prefetch, preload_rel, prerender, prev, previous, rect, rectangle, reset, row, rowgroup, rtl, same_origin, search, self_, send, sentences, soft, strict_origin, strict_origin_when_cross_origin, stylesheet, submit, subtitles, sync, tag, tel, text, top_, unsafe_url, upperalpha, upperroman, url, use_credentials, words, yes
    , attribute, property
    )

{-| Module that defines all HTML attributes and values


# Types

@docs Value


# Global Attributes

These Attributes can be assigned to any HTML element as defined by [html.spec.whatwg.org/GlobalAttributes](https://html.spec.whatwg.org/multipage/dom.html#global-attributes)

@docs accesskey, autocapitalize, autofocus, class, contenteditable, data_, dir, draggable, enterkeyhint, hidden, id, inputmode, is, itemid, itemprop, itemref, itemscope, itemtype, lang, nonce, slot, spellcheck, style, tabindex, title, translate


# Attributes

These Attributes may be assigned to only specific elements. That is defined on a per-element basis.

@docs abbr, accept, acceptcharset, action, allow, allowfullscreen, allowpaymentrequest, alt, autocomplete, autoplay, checked, cite, cols, colspan, controls, coords, crossorigin, data, datetime, decoding, default, dirname, disabled, download, enctype, files, for, form, formaction, formenctype, formmethod, formnovalidate, formtarget, headers, height, high, href, hreflang, ismap, kind, label, list, loop, low, max, maxlength, media, method, min, minlength, multiple, muted, name, novalidate, open, optimum, pattern, ping, placeholder, playsinline, poster, preload, readonly, referrerpolicy, rel, required, reversed, rows, rowspan, sandbox, scope, selected, shape, size, span, start, step, src, srcdoc, srclang, srcset, sizes, target, type_button, type_input, type_list, type_mime, usemap, value, valueAsDate, valueAsNumber, value_ordinal, width, wrap


# Values

All of the enumerated values that particular Attributes may have.

@docs allow_forms, allow_modals, allow_orientation_lock, allow_pointer_lock, allow_popups, allow_popups_to_escape_sandbox, allow_presentation, allow_same_origin, allow_scripts, allow_top_navigation, allow_top_navigation_by_user_activation, alternate, anonymous, author, auto, async, backward, blank_, bookmark, button, canonical, captions, chapters, characters, circ, circle, col, colgroup, decimal, default_, description, dialog, dns_prefetch, done, email, enter, external, form_data, form_url_encoded, forward, frame, get, go, hard, help, icon, license, loweralpha, lowerroman, ltr, metadata, modulepreload, next, no, nofollow, none, noopener, noreferrer, no_referrer, no_referrer_when_downgrade, numeric, off, on, opener, ordinal, origin, origin_when_cross_origin, parent_, pingback, plaintext, poly, polygon, post, preconnect, prefetch, preload_rel, prerender, prev, previous, rect, rectangle, reset, row, rowgroup, rtl, same_origin, search, self_, send, sentences, soft, strict_origin, strict_origin_when_cross_origin, stylesheet, submit, subtitles, sync, tag, tel, text, top_, unsafe_url, upperalpha, upperroman, url, use_credentials, words, yes


# Escape Hatch

Use this to break out of this package's requirements. Useful if there is something that this package does not allow and you want to support it.

@docs attribute, property


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
accesskey : List String -> Html.Attribute { compatible | accesskey : Html.SupportedAttribute } msg
accesskey val =
    Html.stringProperty "accesskey" (String.join " " val)


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
    -> Html.Attribute { compatible | autocapitalize : Html.SupportedAttribute } msg
autocapitalize =
    Html.valueProperty "autocapitalize"


{-| Follows the attribute definition at [html.spec.whatwg.org/autofocus](https://html.spec.whatwg.org/multipage/interaction.html#attr-fe-autofocus)
-}
autofocus : Bool -> Html.Attribute { compatible | autofocus : Html.SupportedAttribute } msg
autofocus =
    Html.boolProperty "autofocus"


{-| Follows the attribute definition at [html.spec.whatwg.org/class](https://html.spec.whatwg.org/multipage/dom.html#classes)
-}
class : List String -> Html.Attribute { compatible | class : Html.SupportedAttribute } msg
class val =
    Html.stringProperty "className" (String.join " " val)


{-| Follows the attribute definition at [html.spec.whatwg.org/contenteditable](https://html.spec.whatwg.org/multipage/interaction.html#attr-contenteditable)
-}
contenteditable : Bool -> Html.Attribute { compatible | contenteditable : Html.SupportedAttribute } msg
contenteditable =
    Html.boolProperty "contentEditable"


{-| Follows the attribute definition at [html.spec.whatwg.org/custom data](https://html.spec.whatwg.org/multipage/dom.html#custom-data-attribute)
-}
data_ : String -> String -> Html.Attribute { compatible | data_ : Html.SupportedAttribute } msg
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
    -> Html.Attribute { compatible | dir : Html.SupportedAttribute } msg
dir =
    Html.valueProperty "dir"


{-| Follows the attribute definition at [html.spec.whatwg.org/draggable](https://html.spec.whatwg.org/multipage/dnd.html#the-draggable-attribute)
-}
draggable : Bool -> Html.Attribute { compatible | draggable : Html.SupportedAttribute } msg
draggable =
    Html.boolProperty "draggable"


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
    -> Html.Attribute { compatible | enterkeyhint : Html.SupportedAttribute } msg
enterkeyhint =
    Html.valueProperty "enterkeyhint"


{-| Follows the attribute definition at [html.spec.whatwg.org/hidden](https://html.spec.whatwg.org/multipage/interaction.html#the-hidden-attribute)
-}
hidden : Bool -> Html.Attribute { compatible | hidden : Html.SupportedAttribute } msg
hidden =
    Html.boolProperty "hidden"


{-| Follows the attribute definition at [html.spec.whatwg.org/id](https://html.spec.whatwg.org/multipage/dom.html#the-id-attribute)
-}
id : String -> Html.Attribute { compatible | id : Html.SupportedAttribute } msg
id =
    Html.stringProperty "id"


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
    -> Html.Attribute { compatible | inputmode : Html.SupportedAttribute } msg
inputmode =
    Html.valueProperty "inputMode"


{-| Follows the attribute definition at [html.spec.whatwg.org/is](https://html.spec.whatwg.org/multipage/custom-elements.html#attr-is)
-}
is : String -> Html.Attribute { compatible | is : Html.SupportedAttribute } msg
is =
    Html.stringAttribute "is"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemid](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemid)
-}
itemid : String -> Html.Attribute { compatible | itemid : Html.SupportedAttribute } msg
itemid =
    Html.stringAttribute "itemid"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemprop](https://html.spec.whatwg.org/multipage/microdata.html#names:-the-itemprop-attribute)
-}
itemprop : List String -> Html.Attribute { compatible | itemprop : Html.SupportedAttribute } msg
itemprop =
    Html.tokensAttribute "itemprop"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemref](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemref)
-}
itemref : List String -> Html.Attribute { compatible | itemref : Html.SupportedAttribute } msg
itemref =
    Html.tokensAttribute "itemref"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemscope](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemscope)
-}
itemscope : Bool -> Html.Attribute { compatible | itemscope : Html.SupportedAttribute } msg
itemscope =
    Html.boolAttribute "itemscope"


{-| Follows the attribute definition at [html.spec.whatwg.org/itemtype](https://html.spec.whatwg.org/multipage/microdata.html#attr-itemtype)
-}
itemtype : List String -> Html.Attribute { compatible | itemtype : Html.SupportedAttribute } msg
itemtype =
    Html.tokensAttribute "itemtype"


{-| Follows the attribute definition at [html.spec.whatwg.org/lang](https://html.spec.whatwg.org/multipage/dom.html#attr-lang)
-}
lang : String -> Html.Attribute { compatible | lang : Html.SupportedAttribute } msg
lang =
    Html.stringProperty "lang"


{-| Follows the attribute definition at [html.spec.whatwg.org/nonce](https://html.spec.whatwg.org/multipage/urls-and-fetching.html#attr-nonce)
-}
nonce : String -> Html.Attribute { compatible | nonce : Html.SupportedAttribute } msg
nonce =
    Html.stringProperty "nonce"


{-| Follows the attribute definition at [html.spec.whatwg.org/slot](https://html.spec.whatwg.org/multipage/dom.html#the-id-attribute)
-}
slot : String -> Html.Attribute { compatible | slot : Html.SupportedAttribute } msg
slot =
    Html.stringProperty "slot"


{-| Follows the attribute definition at [html.spec.whatwg.org/spellcheck](https://html.spec.whatwg.org/multipage/interaction.html#attr-spellcheck)
-}
spellcheck : Bool -> Html.Attribute { compatible | spellcheck : Html.SupportedAttribute } msg
spellcheck =
    Html.boolProperty "spellcheck"


{-| Follows the attribute definition at [html.spec.whatwg.org/style](https://html.spec.whatwg.org/multipage/dom.html#the-style-attribute)
-}
style : String -> String -> Html.Attribute { compatible | style : Html.SupportedAttribute } msg
style =
    Html.style


{-| Follows the attribute definition at [html.spec.whatwg.org/tabindex](https://html.spec.whatwg.org/multipage/interaction.html#attr-tabindex)
-}
tabindex : Int -> Html.Attribute { compatible | tabindex : Html.SupportedAttribute } msg
tabindex =
    Html.numberAttribute "tabindex"


{-| Follows the attribute definition at [html.spec.whatwg.org/title](https://html.spec.whatwg.org/multipage/dom.html#attr-title)
-}
title : String -> Html.Attribute { compatible | title : Html.SupportedAttribute } msg
title =
    Html.stringProperty "title"


{-| Follows the attribute definition at [html.spec.whatwg.org/translate](https://html.spec.whatwg.org/multipage/dom.html#attr-translate)
-}
translate : Bool -> Html.Attribute { compatible | translate : Html.SupportedAttribute } msg
translate =
    Html.boolValueProperty "translate" yes no


{-| Follows the attribute definition at [html.spec.whatwg.org/abbr](https://html.spec.whatwg.org/multipage/tables.html#attr-th-abbr)
-}
abbr : String -> Html.Attribute { compatible | abbr : Html.SupportedAttribute } msg
abbr =
    Html.stringProperty "abbr"


{-| Follows the attribute definition at [html.spec.whatwg.org/accept](https://html.spec.whatwg.org/multipage/input.html#attr-input-accept)
-}
accept : List String -> Html.Attribute { compatible | accept : Html.SupportedAttribute } msg
accept =
    Html.stringProperty "accept" << String.join ","


{-| Follows the attribute definition at [html.spec.whatwg.org/acceptcharset](https://html.spec.whatwg.org/multipage/forms.html#attr-form-accept-charset)
-}
acceptcharset : List String -> Html.Attribute { compatible | acceptcharset : Html.SupportedAttribute } msg
acceptcharset =
    Html.stringProperty "acceptCharset" << String.join " "


{-| Follows the attribute definition at [html.spec.whatwg.org/action](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-action)
-}
action : String -> Html.Attribute { compatible | action : Html.SupportedAttribute } msg
action =
    Html.stringProperty "action"


{-| Follows the attribute definition at [html.spec.whatwg.org/allow](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allow)
-}
allow : String -> Html.Attribute { compatible | allow : Html.SupportedAttribute } msg
allow =
    Html.stringProperty "allow"


{-| Follows the attribute definition at [html.spec.whatwg.org/allowfullscreen](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allowfullscreen)
-}
allowfullscreen : Bool -> Html.Attribute { compatible | allowfullscreen : Html.SupportedAttribute } msg
allowfullscreen =
    Html.boolProperty "allowFullscreen"


{-| Follows the attribute definition at [html.spec.whatwg.org/allowpaymentrequest](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-allowpaymentrequest)
-}
allowpaymentrequest : Bool -> Html.Attribute { compatible | allowpaymentrequest : Html.SupportedAttribute } msg
allowpaymentrequest =
    Html.boolProperty "allowPaymentRequest"


{-| Follows the attribute definition at [html.spec.whatwg.org/area-alt](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-alt),
[html.spec.whatwg.org/image-alt](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-alt),
[html.spec.whatwg.org/input-alt](https://html.spec.whatwg.org/multipage/input.html#attr-input-alt)
-}
alt : String -> Html.Attribute { compatible | alt : Html.SupportedAttribute } msg
alt =
    Html.stringProperty "alt"


{-| Follows the attribute definition at [html.spec.whatwg.org/autocomplete](https://html.spec.whatwg.org/multipage/forms.html#attr-form-autocomplete)
-}
autocomplete : Bool -> Html.Attribute { compatible | autocomplete : Html.SupportedAttribute } msg
autocomplete =
    Html.boolValueProperty "autocomplete" on off


{-| Follows the attribute definition at [html.spec.whatwg.org/autoplay](https://html.spec.whatwg.org/multipage/media.html#attr-media-autoplay),
-}
autoplay : Bool -> Html.Attribute { compatible | autoplay : Html.SupportedAttribute } msg
autoplay =
    Html.boolProperty "autoplay"


{-| Follows the attribute definition at [html.spec.whatwg.org/checked](https://html.spec.whatwg.org/multipage/input.html#attr-input-checked)
-}
checked : Bool -> Html.Attribute { compatible | checked : Html.SupportedAttribute } msg
checked =
    Html.boolProperty "checked"


{-| Follows the attribute definition at [html.spec.whatwg.org/blockquote-cite](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-blockquote-cite),
[html.spec.whatwg.org/mod-cite](https://html.spec.whatwg.org/multipage/edits.html#attr-mod-cite),
[html.spec.whatwg.org/q-cite](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-q-cite)
-}
cite : String -> Html.Attribute { compatible | cite : Html.SupportedAttribute } msg
cite =
    Html.stringProperty "cite"


{-| Follows the attribute definition at [html.spec.whatwg.org/cols](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-cols)
-}
cols : Int -> Html.Attribute { compatible | cols : Html.SupportedAttribute } msg
cols =
    Html.numberProperty "cols"


{-| Follows the attribute definition at [html.spec.whatwg.org/colspan](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-colspan)
-}
colspan : Int -> Html.Attribute { compatible | colspan : Html.SupportedAttribute } msg
colspan =
    Html.numberProperty "colSpan"


{-| Follows the attribute definition at [html.spec.whatwg.org/controls](https://html.spec.whatwg.org/multipage/media.html#attr-media-controls)
-}
controls : Bool -> Html.Attribute { compatible | controls : Html.SupportedAttribute } msg
controls =
    Html.boolProperty "controls"


{-| Follows the attribute definition at [html.spec.whatwg.org/coords](https://html.spec.whatwg.org/multipage/image-maps.html#attr-area-coords)
-}
coords : List Float -> Html.Attribute { compatible | coords : Html.SupportedAttribute } msg
coords numbers =
    Html.stringProperty "coords" (List.map String.fromFloat numbers |> String.join ",")


{-| Follows the attribute definition at [html.spec.whatwg.org/media-crossorigin](https://html.spec.whatwg.org/multipage/media.html#attr-media-crossorigin),
[html.spec.whatwg.org/img-crossorigin](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-crossorigin)
-}
crossorigin :
    Html.Value
        { anonymous : Html.SupportedValue
        , use_credentials : Html.SupportedValue
        }
    -> Html.Attribute { compatible | crossorigin : Html.SupportedAttribute } msg
crossorigin =
    Html.valueProperty "crossOrigin"


{-| Follows the attribute definition at [html.spec.whatwg.org/data](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-data)
-}
data : List ( String, String ) -> Html.Attribute { compatible | data : Html.SupportedAttribute } msg
data values =
    Html.property "data" (Json.object (List.map (\( key, val ) -> ( key, Json.string val )) values))


{-| Follows the attribute definition at [html.spec.whatwg.org/mod-datetime](https://html.spec.whatwg.org/multipage/edits.html#attr-mod-datetime),
[html.spec.whatwg.org/time-datetime](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-time-datetime)
-}
datetime : String -> Html.Attribute { compatible | datetime : Html.SupportedAttribute } msg
datetime =
    Html.stringProperty "dateTime"


{-| Follows the attribute definition at [html.spec.whatwg.org/decoding](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-decoding)
-}
decoding :
    Html.Value
        { sync : Html.SupportedValue
        , async : Html.SupportedValue
        , auto : Html.SupportedValue
        }
    -> Html.Attribute { compatible | decoding : Html.SupportedAttribute } msg
decoding =
    Html.valueProperty "decoding"


{-| Follows the attribute definition at [html.spec.whatwg.org/default](https://html.spec.whatwg.org/multipage/media.html#attr-track-default)
-}
default : Bool -> Html.Attribute { compatible | default : Html.SupportedAttribute } msg
default =
    Html.boolProperty "default"


{-| Follows the attribute definition at [html.spec.whatwg.org/dirname](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-dirname)
-}
dirname : String -> Html.Attribute { compatible | dirname : Html.SupportedAttribute } msg
dirname =
    Html.stringProperty "dirName"


{-| Follows the attribute definition at [html.spec.whatwg.org/disabled](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-disabled),
[html.spec.whatwg.org/fieldset-disabled](https://html.spec.whatwg.org/multipage/form-elements.html#attr-fieldset-disabled)
-}
disabled : Bool -> Html.Attribute { compatible | disabled : Html.SupportedAttribute } msg
disabled =
    Html.boolProperty "disabled"


{-| Follows the attribute definition at [html.spec.whatwg.org/download](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-download)
-}
download : String -> Html.Attribute { compatible | download : Html.SupportedAttribute } msg
download =
    Html.stringProperty "download"


{-| Follows the attribute definition at [html.spec.whatwg.org/enctype](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-enctype)
-}
enctype :
    Html.Value
        { form_url_encoded : Html.SupportedValue
        , form_data : Html.SupportedValue
        , plaintext : Html.SupportedValue
        }
    -> Html.Attribute { compatible | enctype : Html.SupportedAttribute } msg
enctype =
    Html.valueProperty "enctype"


{-| Follows the attribute definition at [html.spec.whatwg.org/files](https://html.spec.whatwg.org/multipage/input.html#dom-input-files)
-}
files : String -> Html.Attribute { compatible | files : Html.SupportedAttribute } msg
files =
    Html.stringProperty "files"


{-| Follows the attribute definition at [html.spec.whatwg.org/label-for](https://html.spec.whatwg.org/multipage/forms.html#attr-label-for),
[html.spec.whatwg.org/output-for](https://html.spec.whatwg.org/multipage/form-elements.html#attr-output-for)
-}
for : String -> Html.Attribute { compatible | for : Html.SupportedAttribute } msg
for =
    Html.stringAttribute "htmlFor"


{-| Follows the attribute definition at [html.spec.whatwg.org/form](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fae-form)
-}
form : String -> Html.Attribute { compatible | form : Html.SupportedAttribute } msg
form =
    Html.stringAttribute "form"


{-| Follows the attribute definition at [html.spec.whatwg.org/formaction](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formaction)
-}
formaction : String -> Html.Attribute { compatible | formaction : Html.SupportedAttribute } msg
formaction =
    Html.stringProperty "formAction"


{-| Follows the attribute definition at [html.spec.whatwg.org/formenctype](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formenctype)
-}
formenctype :
    Html.Value
        { form_url_encoded : Html.SupportedValue
        , form_data : Html.SupportedValue
        , plaintext : Html.SupportedValue
        }
    -> Html.Attribute { compatible | formenctype : Html.SupportedAttribute } msg
formenctype =
    Html.valueProperty "formEnctype"


{-| Follows the attribute definition at [html.spec.whatwg.org/formmethod](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formmethod)
-}
formmethod :
    Html.Value
        { get : Html.SupportedValue
        , post : Html.SupportedValue
        , dialog : Html.SupportedValue
        }
    -> Html.Attribute { compatible | formmethod : Html.SupportedAttribute } msg
formmethod =
    Html.valueProperty "formMethod"


{-| Follows the attribute definition at [html.spec.whatwg.org/formnovalidate](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formnovalidate)
-}
formnovalidate : Bool -> Html.Attribute { compatible | formnovalidate : Html.SupportedAttribute } msg
formnovalidate =
    Html.boolProperty "formNoValidate"


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
    -> Html.Attribute { compatible | formtarget : Html.SupportedAttribute } msg
formtarget =
    Html.valueProperty "formTarget"


{-| Follows the attribute definition at [html.spec.whatwg.org/headers](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-headers)
-}
headers : List String -> Html.Attribute { compatible | headers : Html.SupportedAttribute } msg
headers =
    Html.stringProperty "headers" << String.join " "


{-| Follows the attribute definition at [html.spec.whatwg.org/height](https://html.spec.whatwg.org/multipage/embedded-content-other.html#attr-dim-height),
[html.spec.whatwg.org/canvas-height](https://html.spec.whatwg.org/multipage/canvas.html#attr-canvas-height)
-}
height : Int -> Html.Attribute { compatible | height : Html.SupportedAttribute } msg
height =
    Html.numberProperty "height"


{-| Follows the attribute definition at [html.spec.whatwg.org/high](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-high)
-}
high : Int -> Html.Attribute { compatible | high : Html.SupportedAttribute } msg
high =
    Html.numberProperty "high"


{-| Follows the attribute definition at [html.spec.whatwg.org/href](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-href)
-}
href : String -> Html.Attribute { compatible | href : Html.SupportedAttribute } msg
href =
    Html.stringProperty "href"


{-| Follows the attribute definition at [html.spec.whatwg.org/hreflang](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-hreflang)
-}
hreflang : String -> Html.Attribute { compatible | hreflang : Html.SupportedAttribute } msg
hreflang =
    Html.stringProperty "hreflang"


{-| Follows the attribute definition at [html.spec.whatwg.org/ismap](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-ismap)
-}
ismap : Bool -> Html.Attribute { compatible | ismap : Html.SupportedAttribute } msg
ismap =
    Html.boolProperty "isMap"


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
    -> Html.Attribute { compatible | kind : Html.SupportedAttribute } msg
kind =
    Html.valueProperty "kind"


{-| Follows the attribute definition at [html.spec.whatwg.org/optgroup-label](https://html.spec.whatwg.org/multipage/form-elements.html#attr-optgroup-label),
[html.spec.whatwg.org/option-label](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-label),
[html.spec.whatwg.org/track-label](https://html.spec.whatwg.org/multipage/media.html#attr-track-label)
-}
label : String -> Html.Attribute { compatible | label : Html.SupportedAttribute } msg
label =
    Html.stringProperty "label"


{-| Follows the attribute definition at [html.spec.whatwg.org/list](https://html.spec.whatwg.org/multipage/input.html#attr-input-list)
-}
list : String -> Html.Attribute { compatible | list : Html.SupportedAttribute } msg
list =
    Html.stringAttribute "list"


{-| Follows the attribute definition at [html.spec.whatwg.org/loop](https://html.spec.whatwg.org/multipage/media.html#attr-media-loop)
-}
loop : Bool -> Html.Attribute { compatible | loop : Html.SupportedAttribute } msg
loop =
    Html.boolProperty "loop"


{-| Follows the attribute definition at [html.spec.whatwg.org/low](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-low)
-}
low : Int -> Html.Attribute { compatible | low : Html.SupportedAttribute } msg
low =
    Html.numberProperty "low"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-max](https://html.spec.whatwg.org/multipage/input.html#attr-input-max),
[html.spec.whatwg.org/meter-max](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-max),
[html.spec.whatwg.org/progress-max](https://html.spec.whatwg.org/multipage/form-elements.html#attr-progress-max)
-}
max : Int -> Html.Attribute { compatible | max : Html.SupportedAttribute } msg
max =
    Html.numberProperty "max"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-maxlength](https://html.spec.whatwg.org/multipage/input.html#attr-input-maxlength),
[html.spec.whatwg.org/textarea-maxlength](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-maxlength)
-}
maxlength : Int -> Html.Attribute { compatible | maxlength : Html.SupportedAttribute } msg
maxlength =
    Html.numberProperty "maxLength"


{-| Follows the attribute definition at [html.spec.whatwg.org/media](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-media)
-}
media : String -> Html.Attribute { compatible | media : Html.SupportedAttribute } msg
media =
    Html.stringProperty "media"


{-| Follows the attribute definition at [html.spec.whatwg.org/method](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-method)
-}
method :
    Html.Value
        { get : Html.SupportedValue
        , post : Html.SupportedValue
        , dialog : Html.SupportedValue
        }
    -> Html.Attribute { compatible | method : Html.SupportedAttribute } msg
method =
    Html.valueProperty "method"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-min](https://html.spec.whatwg.org/multipage/input.html#attr-input-min),
[html.spec.whatwg.org/meter-min](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-min)
-}
min : Int -> Html.Attribute { compatible | min : Html.SupportedAttribute } msg
min =
    Html.numberProperty "min"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-minlength](https://html.spec.whatwg.org/multipage/input.html#attr-input-minlength),
[html.spec.whatwg.org/textarea-minlength](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-minlength)
-}
minlength : Int -> Html.Attribute { compatible | minlength : Html.SupportedAttribute } msg
minlength =
    Html.numberProperty "minLength"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-multiple](https://html.spec.whatwg.org/multipage/input.html#attr-input-multiple),
[html.spec.whatwg.org/select-multiple](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-multiple)
-}
multiple : Bool -> Html.Attribute { compatible | multiple : Html.SupportedAttribute } msg
multiple =
    Html.boolProperty "multiple"


{-| Follows the attribute definition at [html.spec.whatwg.org/muted](https://html.spec.whatwg.org/multipage/media.html#attr-media-muted)
-}
muted : Bool -> Html.Attribute { compatible | muted : Html.SupportedAttribute } msg
muted =
    Html.boolProperty "muted"


{-| Follows the attribute definition at [html.spec.whatwg.org/name](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-name),
[html.spec.whatwg.org/form-name](https://html.spec.whatwg.org/multipage/forms.html#attr-form-name),
[html.spec.whatwg.org/iframe-name](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-name),
[html.spec.whatwg.org/object-name](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-name),
[html.spec.whatwg.org/map-name](https://html.spec.whatwg.org/multipage/image-maps.html#attr-map-name),
[html.spec.whatwg.org/param-name](https://html.spec.whatwg.org/multipage/image-maps.html#attr-map-name)
-}
name : String -> Html.Attribute { compatible | name : Html.SupportedAttribute } msg
name =
    Html.stringProperty "name"


{-| Follows the attribute definition at [html.spec.whatwg.org/novalidate](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-novalidate)
-}
novalidate : Bool -> Html.Attribute { compatible | novalidate : Html.SupportedAttribute } msg
novalidate =
    Html.boolProperty "noValidate"


{-| Follows the attribute definition at [html.spec.whatwg.org/details-open](https://html.spec.whatwg.org/multipage/interactive-elements.html#attr-details-open),
[html.spec.whatwg.org/dialog-open](https://html.spec.whatwg.org/multipage/interactive-elements.html#attr-dialog-open)
-}
open : Bool -> Html.Attribute { compatible | open : Html.SupportedAttribute } msg
open =
    Html.boolProperty "open"


{-| Follows the attribute definition at [html.spec.whatwg.org/optimum](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-optimum)
-}
optimum : Int -> Html.Attribute { compatible | optimum : Html.SupportedAttribute } msg
optimum =
    Html.numberProperty "optimum"


{-| Follows the attribute definition at [html.spec.whatwg.org/pattern](https://html.spec.whatwg.org/multipage/input.html#attr-input-pattern)
-}
pattern : String -> Html.Attribute { compatible | pattern : Html.SupportedAttribute } msg
pattern =
    Html.stringProperty "pattern"


{-| Follows the attribute definition at [html.spec.whatwg.org/ping](https://html.spec.whatwg.org/multipage/links.html#ping)
-}
ping : List String -> Html.Attribute { compatible | ping : Html.SupportedAttribute } msg
ping =
    Html.stringProperty "ping" << String.join " "


{-| Follows the attribute definition at [html.spec.whatwg.org/input-placeholder](https://html.spec.whatwg.org/multipage/input.html#attr-input-placeholder),
[html.spec.whatwg.org/textarea-placeholder](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-placeholder)
-}
placeholder : String -> Html.Attribute { compatible | placeholder : Html.SupportedAttribute } msg
placeholder =
    Html.stringProperty "placeholder"


{-| Follows the attribute definition at [html.spec.whatwg.org/playsinline](https://html.spec.whatwg.org/multipage/media.html#attr-video-playsinline)
-}
playsinline : Bool -> Html.Attribute { compatible | playsinline : Html.SupportedAttribute } msg
playsinline =
    Html.boolProperty "playsInline"


{-| Follows the attribute definition at [html.spec.whatwg.org/poster](https://html.spec.whatwg.org/multipage/media.html#attr-video-poster)
-}
poster : String -> Html.Attribute { compatible | poster : Html.SupportedAttribute } msg
poster =
    Html.stringProperty "poster"


{-| Follows the attribute definition at [html.spec.whatwg.org/preload](https://html.spec.whatwg.org/multipage/media.html#attr-media-preload)
-}
preload :
    Html.Value
        { none : Html.SupportedValue
        , metadata : Html.SupportedValue
        , auto : Html.SupportedValue
        }
    -> Html.Attribute { compatible | preload : Html.SupportedAttribute } msg
preload =
    Html.valueProperty "preload"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-readonly](https://html.spec.whatwg.org/multipage/input.html#attr-input-readonly),
[html.spec.whatwg.org/textarea-readonly](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-readonly)
-}
readonly : Bool -> Html.Attribute { compatible | readonly : Html.SupportedAttribute } msg
readonly =
    Html.boolProperty "readOnly"


{-| Follows the attribute definition at [html.spec.whatwg.org/referrerpolicy](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-referrerpolicy)
-}
referrerpolicy :
    Html.Value
        { no_referrer : Html.SupportedValue
        , no_referrer_when_downgrade : Html.SupportedValue
        , same_origin : Html.SupportedValue
        , origin : Html.SupportedValue
        , strict_origin : Html.SupportedValue
        , origin_when_cross_origin : Html.SupportedValue
        , strict_origin_when_cross_origin : Html.SupportedValue
        , unsafe_url : Html.SupportedValue
        }
    -> Html.Attribute { compatible | referrerpolicy : Html.SupportedAttribute } msg
referrerpolicy =
    Html.valueProperty "referrerPolicy"


{-| Follows the attribute definition at [html.spec.whatwg.org/rel](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-rel)
-}
rel :
    List
        (Html.Value
            { alternate : Html.SupportedValue
            , canonical : Html.SupportedValue
            , author : Html.SupportedValue
            , bookmark : Html.SupportedValue
            , dns_prefetch : Html.SupportedValue
            , external : Html.SupportedValue
            , help : Html.SupportedValue
            , icon : Html.SupportedValue
            , modulepreload : Html.SupportedValue
            , license : Html.SupportedValue
            , next : Html.SupportedValue
            , nofollow : Html.SupportedValue
            , noopener : Html.SupportedValue
            , noreferrer : Html.SupportedValue
            , opener : Html.SupportedValue
            , pingback : Html.SupportedValue
            , preconnect : Html.SupportedValue
            , prefetch : Html.SupportedValue
            , preload_rel : Html.SupportedValue
            , prerender : Html.SupportedValue
            , prev : Html.SupportedValue
            , search : Html.SupportedValue
            , stylesheet : Html.SupportedValue
            , tag : Html.SupportedValue
            }
        )
    -> Html.Attribute { compatible | rel : Html.SupportedAttribute } msg
rel =
    Html.valuesProperty "rel"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-required](https://html.spec.whatwg.org/multipage/input.html#attr-input-required),
[html.spec.whatwg.org/select-required](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-required),
[html.spec.whatwg.org/textarea-required](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-required)
-}
required : Bool -> Html.Attribute { compatible | required : Html.SupportedAttribute } msg
required =
    Html.boolProperty "required"


{-| Follows the attribute definition at [html.spec.whatwg.org/reversed](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-reversed)
-}
reversed : Bool -> Html.Attribute { compatible | reversed : Html.SupportedAttribute } msg
reversed =
    Html.boolProperty "reversed"


{-| Follows the attribute definition at [html.spec.whatwg.org/rows](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-rows)
-}
rows : Int -> Html.Attribute { compatible | rows : Html.SupportedAttribute } msg
rows =
    Html.numberProperty "rows"


{-| Follows the attribute definition at [html.spec.whatwg.org/rowspan](https://html.spec.whatwg.org/multipage/tables.html#attr-tdth-rowspan)
-}
rowspan : Int -> Html.Attribute { compatible | rowspan : Html.SupportedAttribute } msg
rowspan =
    Html.numberProperty "rowSpan"


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
    -> Html.Attribute { compatible | sandbox : Html.SupportedAttribute } msg
sandbox =
    Html.valuesAttribute "sandbox"


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
    -> Html.Attribute { compatible | scope : Html.SupportedAttribute } msg
scope =
    Html.valueProperty "scope"


{-| Follows the attribute definition at [html.spec.whatwg.org/selected](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-selected)
-}
selected : Bool -> Html.Attribute { compatible | selected : Html.SupportedAttribute } msg
selected =
    Html.boolProperty "selected"


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
    -> Html.Attribute { compatible | shape : Html.SupportedAttribute } msg
shape =
    Html.valueProperty "shape"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-size](https://html.spec.whatwg.org/multipage/input.html#attr-input-size),
[html.spec.whatwg.org/select-size](https://html.spec.whatwg.org/multipage/form-elements.html#attr-select-size)
-}
size : Int -> Html.Attribute { compatible | size : Html.SupportedAttribute } msg
size =
    Html.numberProperty "size"


{-| Follows the attribute definition at [html.spec.whatwg.org/img-sizes](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-sizes),
[html.spec.whatwg.org/source-sizes](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-sizes)
-}
sizes : List String -> Html.Attribute { compatible | sizes : Html.SupportedAttribute } msg
sizes =
    Html.stringProperty "sizes" << String.join " "


{-| Follows the attribute definition at [html.spec.whatwg.org/col-span](https://html.spec.whatwg.org/multipage/tables.html#attr-col-span),
[html.spec.whatwg.org/colgroup-span](https://html.spec.whatwg.org/multipage/tables.html#attr-colgroup-span)
-}
span : Int -> Html.Attribute { compatible | span : Html.SupportedAttribute } msg
span =
    Html.numberProperty "span"


{-| Follows the attribute definition at [html.spec.whatwg.org/src](https://html.spec.whatwg.org/multipage/media.html#attr-media-src)
-}
src : String -> Html.Attribute { compatible | src : Html.SupportedAttribute } msg
src =
    Html.stringProperty "src"


{-| Follows the attribute definition at [html.spec.whatwg.org/srcdoc](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-iframe-srcdoc)
-}
srcdoc : String -> Html.Attribute { compatible | srcdoc : Html.SupportedAttribute } msg
srcdoc =
    Html.stringProperty "srcdoc"


{-| Follows the attribute definition at [html.spec.whatwg.org/srclang](https://html.spec.whatwg.org/multipage/media.html#attr-track-srclang)
-}
srclang : String -> Html.Attribute { compatible | srclang : Html.SupportedAttribute } msg
srclang =
    Html.stringProperty "srclang"


{-| Follows the attribute definition at [html.spec.whatwg.org/img-srcset](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-img-srcset),
[html.spec.whatwg.org/source-srcset](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-srcset)
-}
srcset : List String -> Html.Attribute { compatible | srcset : Html.SupportedAttribute } msg
srcset =
    Html.stringProperty "srcset" << String.join " "


{-| Follows the attribute definition at [html.spec.whatwg.org/start](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-ol-start)
-}
start : Int -> Html.Attribute { compatible | start : Html.SupportedAttribute } msg
start =
    Html.numberProperty "start"


{-| Follows the attribute definition at [html.spec.whatwg.org/step](https://html.spec.whatwg.org/multipage/input.html#attr-input-step)
-}
step : Int -> Html.Attribute { compatible | step : Html.SupportedAttribute } msg
step =
    Html.stringProperty "step" << String.fromInt


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
    -> Html.Attribute { compatible | target : Html.SupportedAttribute } msg
target =
    Html.valueProperty "target"


{-| Follows the attribute definition at [html.spec.whatwg.org/button-type](https://html.spec.whatwg.org/multipage/form-elements.html#attr-button-type)
-}
type_button :
    Html.Value
        { submit : Html.SupportedValue
        , reset : Html.SupportedValue
        , button : Html.SupportedValue
        }
    -> Html.Attribute { compatible | type_button : Html.SupportedAttribute } msg
type_button =
    Html.valueProperty "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-type](https://html.spec.whatwg.org/multipage/input.html#attr-input-type)
-}
type_input : String -> Html.Attribute { compatible | type_input : Html.SupportedAttribute } msg
type_input =
    Html.stringProperty "type"


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
    -> Html.Attribute { compatible | type_list : Html.SupportedAttribute } msg
type_list =
    Html.valueProperty "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/a-mimeType](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-type),
[html.spec.whatwg.org/embed-mimeType](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-embed-type),
[html.spec.whatwg.org/object-mimeType](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-object-type),
[html.spec.whatwg.org/source-mimeType](https://html.spec.whatwg.org/multipage/embedded-content.html#attr-source-type)
-}
type_mime : String -> Html.Attribute { compatible | type_mime : Html.SupportedAttribute } msg
type_mime =
    Html.stringProperty "type"


{-| Follows the attribute definition at [html.spec.whatwg.org/usemap](https://html.spec.whatwg.org/multipage/image-maps.html#attr-hyperlink-usemap)
-}
usemap : String -> Html.Attribute { compatible | usemap : Html.SupportedAttribute } msg
usemap =
    Html.stringProperty "useMap"


{-| Follows the attribute definition at [html.spec.whatwg.org/button-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-button-value),
[html.spec.whatwg.org/option-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-option-value),
[html.spec.whatwg.org/data-value](https://html.spec.whatwg.org/multipage/text-level-semantics.html#attr-data-value),
[html.spec.whatwg.org/input-value](https://html.spec.whatwg.org/multipage/input.html#attr-input-value),
[html.spec.whatwg.org/param-value](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#attr-param-value)
-}
value : String -> Html.Attribute { compatible | value : Html.SupportedAttribute } msg
value =
    Html.stringProperty "value"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-valueasdate](https://html.spec.whatwg.org/multipage/input.html#dom-input-valueasdate)
-}
valueAsDate : String -> Html.Attribute { compatible | valueAsDate : Html.SupportedAttribute } msg
valueAsDate =
    Html.stringProperty "valueAsDate"


{-| Follows the attribute definition at [html.spec.whatwg.org/input-valueasnumber](https://html.spec.whatwg.org/multipage/input.html#dom-input-valueasnumber)
-}
valueAsNumber : Int -> Html.Attribute { compatible | valueAsNumber : Html.SupportedAttribute } msg
valueAsNumber =
    Html.numberProperty "valueAsNumber"


{-| Follows the attribute definition at [html.spec.whatwg.org/li-value](https://html.spec.whatwg.org/multipage/grouping-content.html#attr-li-value),
[html.spec.whatwg.org/meter-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-meter-value),
[html.spec.whatwg.org/progress-value](https://html.spec.whatwg.org/multipage/form-elements.html#attr-progress-value)
-}
value_ordinal : Int -> Html.Attribute { compatible | value_ordinal : Html.SupportedAttribute } msg
value_ordinal =
    Html.numberProperty "value"


{-| Follows the attribute definition at [html.spec.whatwg.org/width](https://html.spec.whatwg.org/multipage/embedded-content-other.html#attr-dim-width),
[html.spec.whatwg.org/canvas-width](https://html.spec.whatwg.org/multipage/canvas.html#attr-canvas-width)
-}
width : Int -> Html.Attribute { compatible | width : Html.SupportedAttribute } msg
width =
    Html.stringProperty "width" << String.fromInt


{-| Follows the attribute definition at [html.spec.whatwg.org/wrap](https://html.spec.whatwg.org/multipage/form-elements.html#attr-textarea-wrap)
-}
wrap :
    Html.Value
        { soft : Html.SupportedValue
        , hard : Html.SupportedValue
        }
    -> Html.Attribute { compatible | wrap : Html.SupportedAttribute } msg
wrap =
    Html.valueProperty "wrap"


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
alternate : Html.Value { compatible | alternate : Html.SupportedValue }
alternate =
    Html.Value "alternate"


{-| -}
anonymous : Html.Value { compatible | anonymous : Html.SupportedValue }
anonymous =
    Html.Value "anonymous"


{-| -}
author : Html.Value { compatible | author : Html.SupportedValue }
author =
    Html.Value "author"


{-| -}
auto : Html.Value { compatible | auto : Html.SupportedValue }
auto =
    Html.Value "auto"


{-| -}
async : Html.Value { compatible | async : Html.SupportedValue }
async =
    Html.Value "async"


{-| -}
backward : Html.Value { compatible | backward : Html.SupportedValue }
backward =
    Html.Value "backward"


{-| -}
blank_ : Html.Value { compatible | blank_ : Html.SupportedValue }
blank_ =
    Html.Value "_blank"


{-| -}
bookmark : Html.Value { compatible | bookmark : Html.SupportedValue }
bookmark =
    Html.Value "bookmark"


{-| -}
button : Html.Value { compatible | button : Html.SupportedValue }
button =
    Html.Value "button"


{-| -}
canonical : Html.Value { compatible | canonical : Html.SupportedValue }
canonical =
    Html.Value "canonical"


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
dns_prefetch : Html.Value { compatible | dns_prefetch : Html.SupportedValue }
dns_prefetch =
    Html.Value "dns-prefetch"


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
external : Html.Value { compatible | external : Html.SupportedValue }
external =
    Html.Value "external"


{-| -}
form_data : Html.Value { compatible | form_data : Html.SupportedValue }
form_data =
    Html.Value "multipart/form-data"


{-| -}
form_url_encoded : Html.Value { compatible | form_url_encoded : Html.SupportedValue }
form_url_encoded =
    Html.Value "application/x-www-form-urlencoded"


{-| -}
forward : Html.Value { compatible | forward : Html.SupportedValue }
forward =
    Html.Value "forward"


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
help : Html.Value { compatible | help : Html.SupportedValue }
help =
    Html.Value "help"


{-| -}
icon : Html.Value { compatible | icon : Html.SupportedValue }
icon =
    Html.Value "icon"


{-| -}
license : Html.Value { compatible | license : Html.SupportedValue }
license =
    Html.Value "license"


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
modulepreload : Html.Value { compatible | modulepreload : Html.SupportedValue }
modulepreload =
    Html.Value "modulepreload"


{-| -}
next : Html.Value { compatible | next : Html.SupportedValue }
next =
    Html.Value "next"


{-| -}
no : Html.Value { compatible | no : Html.SupportedValue }
no =
    Html.Value "no"


{-| -}
nofollow : Html.Value { compatible | nofollow : Html.SupportedValue }
nofollow =
    Html.Value "nofollow"


{-| -}
none : Html.Value { compatible | none : Html.SupportedValue }
none =
    Html.Value "none"


{-| -}
noopener : Html.Value { compatible | noopener : Html.SupportedValue }
noopener =
    Html.Value "noopener"


{-| -}
noreferrer : Html.Value { compatible | noreferrer : Html.SupportedValue }
noreferrer =
    Html.Value "noreferrer"


{-| -}
no_referrer : Html.Value { compatible | no_referrer : Html.SupportedValue }
no_referrer =
    Html.Value "no-referrer"


{-| -}
no_referrer_when_downgrade : Html.Value { compatible | no_referrer_when_downgrade : Html.SupportedValue }
no_referrer_when_downgrade =
    Html.Value "no-referrer-when-downgrade"


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
opener : Html.Value { compatible | opener : Html.SupportedValue }
opener =
    Html.Value "opener"


{-| -}
ordinal : Html.Value { compatible | ordinal : Html.SupportedValue }
ordinal =
    Html.Value "1"


{-| -}
origin : Html.Value { compatible | origin : Html.SupportedValue }
origin =
    Html.Value "origin"


{-| -}
origin_when_cross_origin : Html.Value { compatible | origin_when_cross_origin : Html.SupportedValue }
origin_when_cross_origin =
    Html.Value "origin-when-cross-origin"


{-| -}
parent_ : Html.Value { compatible | parent_ : Html.SupportedValue }
parent_ =
    Html.Value "_parent"


{-| -}
pingback : Html.Value { compatible | pingback : Html.SupportedValue }
pingback =
    Html.Value "pingback"


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
preconnect : Html.Value { compatible | preconnect : Html.SupportedValue }
preconnect =
    Html.Value "preconnect"


{-| -}
prefetch : Html.Value { compatible | prefetch : Html.SupportedValue }
prefetch =
    Html.Value "prefetch"


{-| -}
preload_rel : Html.Value { compatible | preload_rel : Html.SupportedValue }
preload_rel =
    Html.Value "preload"


{-| -}
prerender : Html.Value { compatible | prerender : Html.SupportedValue }
prerender =
    Html.Value "prerender"


{-| -}
prev : Html.Value { compatible | prev : Html.SupportedValue }
prev =
    Html.Value "prev"


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
same_origin : Html.Value { compatible | same_origin : Html.SupportedValue }
same_origin =
    Html.Value "same-origin"


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
strict_origin : Html.Value { compatible | strict_origin : Html.SupportedValue }
strict_origin =
    Html.Value "strict-origin"


{-| -}
strict_origin_when_cross_origin : Html.Value { compatible | strict_origin_when_cross_origin : Html.SupportedValue }
strict_origin_when_cross_origin =
    Html.Value "strict-origin-when-cross-origin"


{-| -}
stylesheet : Html.Value { compatible | stylesheet : Html.SupportedValue }
stylesheet =
    Html.Value "stylesheet"


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
tag : Html.Value { compatible | tag : Html.SupportedValue }
tag =
    Html.Value "tag"


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
unsafe_url : Html.Value { compatible | unsafe_url : Html.SupportedValue }
unsafe_url =
    Html.Value "unsafe-url"


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


{-| -}
attribute : String -> String -> Html.Attribute a msg
attribute =
    Html.Attribute


{-| -}
property : String -> Json.Value -> Html.Attribute a msg
property =
    Html.property
