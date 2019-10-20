module W3.Html.Attributes exposing (..)

import Set exposing (Set)
import W3.Html.Attributes.Help as W3


accesskey : Set String -> W3.Attribute { compatible | accesskey : W3.Supported }
accesskey =
    W3.uniqueValues "accesskey"


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


autofocus : Bool -> W3.Attribute { compatible | autofocus : W3.Supported }
autofocus =
    W3.bool "autofocus"


contenteditable : Maybe Bool -> W3.Attribute { compatible | contenteditable : W3.Supported }
contenteditable =
    W3.maybeBool "contenteditable" ""


dir :
    W3.Value
        { ltr : W3.SupportedValue
        , rtl : W3.SupportedValue
        , auto : W3.SupportedValue
        }
    -> W3.Attribute { compatible | dir : W3.Supported }
dir =
    W3.value "dir"


draggable : Maybe Bool -> W3.Attribute { compatible | draggable : W3.Supported }
draggable =
    W3.maybeBool "draggable" ""


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


hidden : Bool -> W3.Attribute { compatible | hidden : W3.Supported }
hidden =
    W3.bool "hidden"


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


itemid : String -> W3.Attribute { compatible | itemid : W3.Supported }
itemid =
    W3.string "itemid"


itemprop : Set String -> W3.Attribute { compatible | itemprop : W3.Supported }
itemprop =
    W3.uniqueValues "itemprop"


itemref : Set String -> W3.Attribute { compatible | itemref : W3.Supported }
itemref =
    W3.uniqueValues "itemref"


itemscope : Bool -> W3.Attribute { compatible | itemscope : W3.Supported }
itemscope =
    W3.bool "itemscope"


itemtype : Set String -> W3.Attribute { compatible | itemtype : W3.Supported }
itemtype =
    W3.uniqueValues "itemtype"


lang : String -> W3.Attribute { compatible | lang : W3.Supported }
lang =
    W3.string "lang"


nonce : Int -> W3.Attribute { compatible | nonce : W3.Supported }
nonce =
    W3.number "nonce"


spellcheck : Maybe Bool -> W3.Attribute { compatible | spellcheck : W3.Supported }
spellcheck =
    W3.maybeBool "spellcheck" ""


style : String -> W3.Attribute { compatible | style : W3.Supported }
style =
    W3.string "style"


tabindex : Int -> W3.Attribute { compatible | tabindex : W3.Supported }
tabindex =
    W3.number "tabindex"


title : String -> W3.Attribute { compatible | title : W3.Supported }
title =
    W3.string "title"


translate :
    W3.Value
        { yes : W3.SupportedValue
        , no : W3.SupportedValue
        }
    -> W3.Attribute { compatible | translate : W3.Supported }
translate =
    W3.value "translate"


data : String -> String -> W3.Attribute { compatible | data : W3.Supported }
data key value =
    W3.Attribute ("data-" ++ key) value



{--VALUES --}


auto : W3.Value { compatible | auto : W3.SupportedValue }
auto =
    W3.Value "auto"


decimal : W3.Value { compatible | decimal : W3.SupportedValue }
decimal =
    W3.Value "decimal"


done : W3.Value { compatible | done : W3.SupportedValue }
done =
    W3.Value "done"


email : W3.Value { compatible | email : W3.SupportedValue }
email =
    W3.Value "email"


enter : W3.Value { compatible | enter : W3.SupportedValue }
enter =
    W3.Value "enter"


go : W3.Value { compatible | go : W3.SupportedValue }
go =
    W3.Value "go"


ltr : W3.Value { compatible | ltr : W3.SupportedValue }
ltr =
    W3.Value "ltr"


next : W3.Value { compatible | next : W3.SupportedValue }
next =
    W3.Value "next"


none : W3.Value { compatible | none : W3.SupportedValue }
none =
    W3.Value "none"


numeric : W3.Value { compatible | numeric : W3.SupportedValue }
numeric =
    W3.Value "numeric"


off : W3.Value { compatible | off : W3.SupportedValue }
off =
    W3.Value "off"


on : W3.Value { compatible | on : W3.SupportedValue }
on =
    W3.Value "on"


previous : W3.Value { compatible | previous : W3.SupportedValue }
previous =
    W3.Value "previous"


rtl : W3.Value { compatible | rtl : W3.SupportedValue }
rtl =
    W3.Value "rtl"


search : W3.Value { compatible | search : W3.SupportedValue }
search =
    W3.Value "search"


send : W3.Value { compatible | send : W3.SupportedValue }
send =
    W3.Value "send"


sentences : W3.Value { compatible | sentences : W3.SupportedValue }
sentences =
    W3.Value "sentences"


text : W3.Value { compatible | text : W3.SupportedValue }
text =
    W3.Value "text"


tel : W3.Value { compatible | tel : W3.SupportedValue }
tel =
    W3.Value "tel"


url : W3.Value { compatible | url : W3.SupportedValue }
url =
    W3.Value "url"


words : W3.Value { compatible | words : W3.SupportedValue }
words =
    W3.Value "words"


characters : W3.Value { compatible | characters : W3.SupportedValue }
characters =
    W3.Value "characters"
