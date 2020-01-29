module W3.Html exposing
    ( Node, Attribute, GlobalAttributes
    , FlowContent, HeadingContent, SectioningContent, PhrasingContent, EmbeddedContent, InteractiveContent
    , article, section, nav, aside, h1, h2, h3, h4, h5, h6, hgroup, header, footer, address
    , p, hr, pre, blockquote, ol, olKeyed, ul, ulKeyed, menu, li, dl, dlKeyed, dlWrapped, dlWrappedKeyed, dt, dd, figure, figureEndingCaption, figureNoCaption, figcaption, main_, div, divDl
    , a, em, strong, small, s, cite, q, dfn, abbr, ruby, rubyWrapper, rubyDescendent, rt, rp, data, time, timeText, code, var, samp, kbd, sub, sup, i, b, u, mark, bdi, bdo, span, br, wbr
    , ins, del
    , picture, source, img
    , iframe, embed, object, param
    , video, audio, track
    , map, area
    , Table, TableContents, table, caption, colgroup, col, thead, tfoot, tbody, trbody, tr, td, th
    , form, label
    , input, hidden, textInput, search, url, tel, email, password, date, month, week, timeInput, datetime, number, range, color, checkbox, radio, file, submit, imageButton, resetButton, buttonInput
    , button, select, optgroup, datalist, datalistText, option, optionLabelled, textarea, output, progress, meter, fieldset
    , details, summary, summaryHeader, dialog
    , canvas
    , text
    , toNode, toAttributes, toAttribute
    , node
    , keyed
    , lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7, lazy8
    , Event
    , on, onabort, onauxclick, onblur, oncancel, oncanplay, oncanplaythrough, onchange, onclick, onclose, oncontextmenu, oncopy, oncuechange, oncut, ondblclick, ondrag, ondragend, ondragenter, ondragexit, ondragleave, ondragover, ondragstart, ondrop, ondurationchange, onemptied, onended, onerror, onfocus, onformdata, oninput, oninvalid, onkeydown, onkeypress, onkeyup, onload, onloadeddata, onloadedmetadata, onloadedstart, onmousedown, onmouseenter, onmouseleave, onmousemove, onmouseout, onmouseover, onmouseup, onpaste, onpause, onplay, onplaying, onprogress, onratechange, onreset, onresize, onscroll, onsecuritypolicyviolation, onseeked, onseeking, onselect, onslotchange, onstalled, onsubmit, onsuspend, ontimeupdate, ontoggle, onvolumechange, onwaiting, onwheel
    )

{-| Module that defines all usable HTML elements, their content models, and supported attributes.


# Definitions

@docs Node, Attribute, GlobalAttributes


# Content Categories

Each HTML element can be categorized by zero or more of the following categories. The categories are related to each other by [this chart](https://html.spec.whatwg.org/multipage/dom.html#kinds-of-content).

Note: _MetadataContent is not supported since all of its content needs to be located within a Head element or it is a script supporting element. These are not usable currently and script elements should not be supported by elm unless they are eventually just links to external resources._

@docs FlowContent, HeadingContent, SectioningContent, PhrasingContent, EmbeddedContent, InteractiveContent


# Elements

The following attempts to group elements together by function and use.


## Sections

<https://html.spec.whatwg.org/multipage/sections.html>

@docs article, section, nav, aside, h1, h2, h3, h4, h5, h6, hgroup, header, footer, address


## Grouping

<https://html.spec.whatwg.org/multipage/grouping-content.html>

@docs p, hr, pre, blockquote, ol, olKeyed, ul, ulKeyed, menu, li, dl, dlKeyed, dlWrapped, dlWrappedKeyed, dt, dd, figure, figureEndingCaption, figureNoCaption, figcaption, main_, div, divDl


## Text

@docs a, em, strong, small, s, cite, q, dfn, abbr, ruby, rubyWrapper, rubyDescendent, rt, rp, data, time, timeText, code, var, samp, kbd, sub, sup, i, b, u, mark, bdi, bdo, span, br, wbr


## Edits

@docs ins, del


## Embedded

@docs picture, source, img


## Iframe

@docs iframe, embed, object, param


## Media

@docs video, audio, track


## Map

@docs map, area


## Table

@docs Table, TableContents, table, caption, colgroup, col, thead, tfoot, tbody, trbody, tr, td, th


## Forms

@docs form, label


## Inputs

@docs input, hidden, textInput, search, url, tel, email, password, date, month, week, timeInput, datetime, number, range, color, checkbox, radio, file, submit, imageButton, resetButton, buttonInput


## Form Elements

@docs button, select, optgroup, datalist, datalistText, option, optionLabelled, textarea, output, progress, meter, fieldset


## Interactive Elements

@docs details, summary, summaryHeader, dialog


## Canvas

@docs canvas


## Text

@docs text


## Utility

@docs toNode, toAttributes, toAttribute


# Escape Hatch

@docs node


# Keyed nodes

@docs keyed


# Lazy rendering

Various functions to make node rendering lazy.

@docs lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7, lazy8


# Events

@docs Event

@docs on, onabort, onauxclick, onblur, oncancel, oncanplay, oncanplaythrough, onchange, onclick, onclose, oncontextmenu, oncopy, oncuechange, oncut, ondblclick, ondrag, ondragend, ondragenter, ondragexit, ondragleave, ondragover, ondragstart, ondrop, ondurationchange, onemptied, onended, onerror, onfocus, onformdata, oninput, oninvalid, onkeydown, onkeypress, onkeyup, onload, onloadeddata, onloadedmetadata, onloadedstart, onmousedown, onmouseenter, onmouseleave, onmousemove, onmouseout, onmouseover, onmouseup, onpaste, onpause, onplay, onplaying, onprogress, onratechange, onreset, onresize, onscroll, onsecuritypolicyviolation, onseeked, onseeking, onselect, onslotchange, onstalled, onsubmit, onsuspend, ontimeupdate, ontoggle, onvolumechange, onwaiting, onwheel

-}

import Json.Decode as Json
import VirtualDom exposing (Handler)
import W3.Html.Help as Html


{-| Type for each element
-}
type Node nodes msg
    = Node String (List (VirtualDom.Attribute msg)) (List (VirtualDom.Node msg))
    | Keyed String (List (VirtualDom.Attribute msg)) (List ( String, VirtualDom.Node msg ))
    | Lazy (VirtualDom.Node msg)
    | Text String


{-| Type for each attribute
-}
type alias Attribute a msg =
    Html.Attribute a msg


{-| All elements support the use of these attributes as defined by [html.spec.whatwg.org/GlobalAttributes](https://html.spec.whatwg.org/multipage/dom.html#global-attributes)
-}
type alias GlobalAttributes a msg =
    Html.Attribute
        { a
            | accesskey : Html.SupportedAttribute
            , autocapitalize : Html.SupportedAttribute
            , autofocus : Html.SupportedAttribute
            , class : Html.SupportedAttribute
            , contenteditable : Html.SupportedAttribute
            , data_ : Html.SupportedAttribute
            , dir : Html.SupportedAttribute
            , draggable : Html.SupportedAttribute
            , enterkeyhint : Html.SupportedAttribute
            , hidden : Html.SupportedAttribute
            , id : Html.SupportedAttribute
            , inputmode : Html.SupportedAttribute
            , is : Html.SupportedAttribute
            , itemid : Html.SupportedAttribute
            , itemprop : Html.SupportedAttribute
            , itemref : Html.SupportedAttribute
            , itemscope : Html.SupportedAttribute
            , itemtype : Html.SupportedAttribute
            , lang : Html.SupportedAttribute
            , nonce : Html.SupportedAttribute
            , slot : Html.SupportedAttribute
            , spellcheck : Html.SupportedAttribute
            , style : Html.SupportedAttribute
            , tabindex : Html.SupportedAttribute
            , title : Html.SupportedAttribute
            , translate : Html.SupportedAttribute
        }
        msg


{-| Flow Content Category as defined by [html.spec.whatwg.org/FlowContent](https://html.spec.whatwg.org/multipage/dom.html#flow-content-2)
-}
type alias FlowContent =
    { -- Flow Content
      address : Html.Supported
    , blockquote : Html.Supported
    , dialog : Html.Supported
    , div : Html.Supported
    , dl : Html.Supported
    , fieldset : Html.Supported
    , figure : Html.Supported
    , footer : Html.Supported
    , form : Html.Supported
    , header : Html.Supported
    , hr : Html.Supported
    , main_ : Html.Supported
    , menu : Html.Supported
    , ol : Html.Supported
    , p : Html.Supported
    , pre : Html.Supported
    , table : Html.Supported
    , ul : Html.Supported

    -- Phrasing Content
    , abbr : Html.Supported
    , area : Html.Supported
    , b : Html.Supported
    , bdi : Html.Supported
    , bdo : Html.Supported
    , br : Html.Supported
    , cite : Html.Supported
    , code : Html.Supported
    , data : Html.Supported
    , datalist : Html.Supported
    , del : Html.Supported
    , dfn : Html.Supported
    , em : Html.Supported
    , i : Html.Supported
    , ins : Html.Supported
    , kbd : Html.Supported
    , map : Html.Supported
    , mark : Html.Supported
    , meter : Html.Supported
    , output : Html.Supported
    , progress : Html.Supported
    , q : Html.Supported
    , ruby : Html.Supported
    , s : Html.Supported
    , samp : Html.Supported

    -- , slot : Html.Supported, Not Supported since templates aren't a thing
    , small : Html.Supported
    , span : Html.Supported
    , strong : Html.Supported
    , sub : Html.Supported
    , sup : Html.Supported
    , time : Html.Supported
    , u : Html.Supported
    , var : Html.Supported
    , wbr : Html.Supported

    -- Heading Content
    , h1 : Html.Supported
    , h2 : Html.Supported
    , h3 : Html.Supported
    , h4 : Html.Supported
    , h5 : Html.Supported
    , h6 : Html.Supported
    , hgroup : Html.Supported

    -- Sectioning Content
    , article : Html.Supported
    , aside : Html.Supported
    , nav : Html.Supported
    , section : Html.Supported

    -- Embedded Content
    , canvas : Html.Supported

    -- , math : Html.Supported: Not Supported yet
    , picture : Html.Supported

    -- , svg : Html.Supported: Not Supported yet
    -- Interactive Content
    , a : Html.Supported
    , audio : Html.Supported
    , button : Html.Supported
    , details : Html.Supported
    , embed : Html.Supported
    , iframe : Html.Supported
    , img : Html.Supported
    , input : Html.Supported
    , label : Html.Supported
    , object : Html.Supported
    , select : Html.Supported
    , textarea : Html.Supported
    , video : Html.Supported

    -- Metadata Content
    -- , link : Html.Supported - Not normally allowed in Body element
    -- , meta : Html.Supported - Will only really be allowed in the Head element
    -- , noscript : Html.Supported - Never be used since elm's JS won't even run
    -- , script : Html.Supported - Script-supporting element
    -- , template : Html.Supported - Script-supporting element
    }


{-| The Heading Content Category as defined by [html.spec.whatwg.org/HeadingContent](https://html.spec.whatwg.org/multipage/dom.html#heading-content)
-}
type alias HeadingContent =
    { h1 : Html.Supported
    , h2 : Html.Supported
    , h3 : Html.Supported
    , h4 : Html.Supported
    , h5 : Html.Supported
    , h6 : Html.Supported
    , hgroup : Html.Supported
    }


{-| The Sectioning Content Category as defined by [html.spec.whatwg.org/SectioningContent](https://html.spec.whatwg.org/multipage/dom.html#sectioning-content)
-}
type alias SectioningContent =
    { article : Html.Supported
    , aside : Html.Supported
    , nav : Html.Supported
    , section : Html.Supported
    }


{-| The Phrasing Content Category as defined by [html.spec.whatwg.org/PhrasingContent](https://html.spec.whatwg.org/multipage/dom.html#phrasing-content)
-}
type alias PhrasingContent =
    { a : Html.Supported
    , abbr : Html.Supported
    , area : Html.Supported
    , audio : Html.Supported
    , b : Html.Supported
    , bdi : Html.Supported
    , bdo : Html.Supported
    , br : Html.Supported
    , button : Html.Supported
    , canvas : Html.Supported
    , cite : Html.Supported
    , code : Html.Supported
    , data : Html.Supported
    , datalist : Html.Supported
    , del : Html.Supported
    , dfn : Html.Supported
    , em : Html.Supported
    , embed : Html.Supported
    , i : Html.Supported
    , iframe : Html.Supported
    , img : Html.Supported
    , input : Html.Supported
    , ins : Html.Supported
    , kbd : Html.Supported
    , label : Html.Supported

    --, link : Html.Supported
    , map : Html.Supported
    , mark : Html.Supported

    --, math : Html.Supported
    --, meta : Html.Supported
    , meter : Html.Supported

    --, noscript : Html.Supported
    , object : Html.Supported
    , output : Html.Supported
    , picture : Html.Supported
    , progress : Html.Supported
    , q : Html.Supported
    , ruby : Html.Supported
    , s : Html.Supported
    , samp : Html.Supported

    --, script : Html.Supported
    , select : Html.Supported

    --, slot : Html.Supported
    , small : Html.Supported
    , span : Html.Supported
    , strong : Html.Supported
    , sub : Html.Supported
    , sup : Html.Supported

    --, svg : Html.Supported
    --, template : Html.Supported
    , textarea : Html.Supported
    , time : Html.Supported
    , u : Html.Supported
    , var : Html.Supported
    , video : Html.Supported
    , wbr : Html.Supported
    }


{-| The Embedded Content Category as defined by [html.spec.whatwg.org/EmbeddedContent](https://html.spec.whatwg.org/multipage/dom.html#embedded-content)
-}
type alias EmbeddedContent =
    { audio : Html.Supported
    , canvas : Html.Supported
    , embed : Html.Supported
    , iframe : Html.Supported
    , img : Html.Supported

    --, math : Html.Supported
    , object : Html.Supported
    , picture : Html.Supported

    --, svg : Html.Supported
    , video : Html.Supported
    }


{-| The Interactive Content Category as defined by [html.spec.whatwg.org/InteractiveContent](https://html.spec.whatwg.org/multipage/dom.html#interactive-content)
-}
type alias InteractiveContent =
    { a : Html.Supported
    , audio : Html.Supported
    , button : Html.Supported
    , details : Html.Supported
    , embed : Html.Supported
    , iframe : Html.Supported
    , img : Html.Supported
    , input : Html.Supported
    , label : Html.Supported
    , object : Html.Supported
    , select : Html.Supported
    , textarea : Html.Supported
    , video : Html.Supported
    }


{-| Follows the element definition at [html.spec.whatwg.org/article](https://html.spec.whatwg.org/multipage/sections.html#the-article-element)
-}
article : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | article : Html.Supported } msg
article =
    node "article"


{-| Follows the element definition at [html.spec.whatwg.org/section](https://html.spec.whatwg.org/multipage/sections.html#the-section-element)
-}
section : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | section : Html.Supported } msg
section =
    node "section"


{-| Follows the element definition at [html.spec.whatwg.org/nav](https://html.spec.whatwg.org/multipage/sections.html#the-nav-element)
-}
nav : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | nav : Html.Supported } msg
nav =
    node "nav"


{-| Follows the element definition at [html.spec.whatwg.org/aside](https://html.spec.whatwg.org/multipage/sections.html#the-aside-element)
-}
aside : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | aside : Html.Supported } msg
aside =
    node "aside"


{-| Follows the element definition at [html.spec.whatwg.org/h1](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h1 : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | h1 : Html.Supported } msg
h1 =
    node "h1"


{-| Follows the element definition at [html.spec.whatwg.org/h2](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h2 : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | h2 : Html.Supported } msg
h2 =
    node "h2"


{-| Follows the element definition at [html.spec.whatwg.org/h3](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h3 : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | h3 : Html.Supported } msg
h3 =
    node "h3"


{-| Follows the element definition at [html.spec.whatwg.org/h4](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h4 : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | h4 : Html.Supported } msg
h4 =
    node "h4"


{-| Follows the element definition at [html.spec.whatwg.org/h5](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h5 : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | h5 : Html.Supported } msg
h5 =
    node "h5"


{-| Follows the element definition at [html.spec.whatwg.org/h6](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h6 : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | h6 : Html.Supported } msg
h6 =
    node "h6"


{-| Follows the element definition at [html.spec.whatwg.org/hgroup](https://html.spec.whatwg.org/multipage/sections.html#the-hgroup-element)
-}
hgroup :
    List (GlobalAttributes {} msg)
    ->
        List
            (Node
                { h1 : Html.Supported
                , h2 : Html.Supported
                , h3 : Html.Supported
                , h4 : Html.Supported
                , h5 : Html.Supported
                , h6 : Html.Supported
                }
                msg
            )
    -> Node { compatible | hgroup : Html.Supported } msg
hgroup =
    node "hgroup"


{-| Follows the element definition at [html.spec.whatwg.org/header](https://html.spec.whatwg.org/multipage/sections.html#the-header-element)
-}
header : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | header : Html.Supported } msg
header =
    -- Exclude header, footer descendant
    node "header"


{-| Follows the element definition at [html.spec.whatwg.org/footer](https://html.spec.whatwg.org/multipage/sections.html#the-header-element)
-}
footer : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | footer : Html.Supported } msg
footer =
    -- Exclude header, footer descendant
    node "footer"


{-| Follows the element definition at [html.spec.whatwg.org/address](https://html.spec.whatwg.org/multipage/sections.html#the-address-element)
-}
address : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | address : Html.Supported } msg
address =
    -- Exclude heading content, sectioning content, header, footer, address descendant
    node "address"



{--GROUPING https://html.spec.whatwg.org/multipage/grouping-content.html --}


{-| Follows the element definition at [html.spec.whatwg.org/p](https://html.spec.whatwg.org/multipage/grouping-content.html#the-p-element)
-}
p : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | p : Html.Supported } msg
p =
    node "p"


{-| Follows the element definition at [html.spec.whatwg.org/hr](https://html.spec.whatwg.org/multipage/grouping-content.html#the-hr-element)
-}
hr : List (GlobalAttributes {} msg) -> Node { compatible | hr : Html.Supported } msg
hr attributes =
    node "hr" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/pre](https://html.spec.whatwg.org/multipage/grouping-content.html#the-pre-element)
-}
pre : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | pre : Html.Supported } msg
pre =
    node "pre"


{-| Follows the element definition at [html.spec.whatwg.org/blockquote](https://html.spec.whatwg.org/multipage/grouping-content.html#the-blockquote-element)
-}
blockquote :
    List (GlobalAttributes { cite : Html.SupportedAttribute } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | blockquote : Html.Supported } msg
blockquote =
    node "blockquote"


{-| Follows the element definition at [html.spec.whatwg.org/ol](https://html.spec.whatwg.org/multipage/grouping-content.html#the-ol-element)
-}
ol :
    List
        (GlobalAttributes
            { reversed : Html.SupportedAttribute
            , start : Html.SupportedAttribute
            , type_list : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node { li : Html.Supported } msg)
    -> Node { compatible | ol : Html.Supported } msg
ol =
    node "ol"


{-| Follows the element definition at [html.spec.whatwg.org/ol](https://html.spec.whatwg.org/multipage/grouping-content.html#the-ol-element)
-}
olKeyed :
    List
        (GlobalAttributes
            { reversed : Html.SupportedAttribute
            , start : Html.SupportedAttribute
            , type_list : Html.SupportedAttribute
            }
            msg
        )
    -> List ( String, Node { li : Html.Supported } msg )
    -> Node { compatible | ol : Html.Supported } msg
olKeyed =
    keyed "ol"


{-| Follows the element definition at [html.spec.whatwg.org/ul](https://html.spec.whatwg.org/multipage/grouping-content.html#the-ul-element)
-}
ul : List (GlobalAttributes {} msg) -> List (Node { li : Html.Supported } msg) -> Node { compatible | ul : Html.Supported } msg
ul =
    node "ul"


{-| Follows the element definition at [html.spec.whatwg.org/ul](https://html.spec.whatwg.org/multipage/grouping-content.html#the-ul-element)
-}
ulKeyed : List (GlobalAttributes {} msg) -> List ( String, Node { li : Html.Supported } msg ) -> Node { compatible | ul : Html.Supported } msg
ulKeyed =
    keyed "ul"


{-| Follows the element definition at [html.spec.whatwg.org/menu](https://html.spec.whatwg.org/multipage/grouping-content.html#the-menu-element)
-}
menu : List (GlobalAttributes {} msg) -> List (Node { li : Html.Supported } msg) -> Node { compatible | menu : Html.Supported } msg
menu =
    node "menu"


{-| Follows the element definition at [html.spec.whatwg.org/li](https://html.spec.whatwg.org/multipage/grouping-content.html#the-li-element)
-}
li :
    List (GlobalAttributes { value_ordinal : Html.SupportedAttribute } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | li : Html.Supported } msg
li =
    node "li"


{-| Follows the element definition at [html.spec.whatwg.org/dl](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element)
-}
dl : List (GlobalAttributes {} msg) -> List (Node { dt : Html.Supported, dd : Html.Supported } msg) -> Node { compatible | dl : Html.Supported } msg
dl =
    node "dl"


{-| Follows the element definition at [html.spec.whatwg.org/dl](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element)
-}
dlKeyed : List (GlobalAttributes {} msg) -> List ( String, Node { dt : Html.Supported, dd : Html.Supported } msg ) -> Node { compatible | dl : Html.Supported } msg
dlKeyed =
    keyed "dl"


{-| Follows the element definition at [html.spec.whatwg.org/dl](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element)
-}
dlWrapped : List (GlobalAttributes {} msg) -> List (Node { divDl : Html.Supported } msg) -> Node { compatible | dl : Html.Supported } msg
dlWrapped =
    node "dl"


{-| Follows the element definition at [html.spec.whatwg.org/dl](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element)
-}
dlWrappedKeyed : List (GlobalAttributes {} msg) -> List ( String, Node { divDl : Html.Supported } msg ) -> Node { compatible | dl : Html.Supported } msg
dlWrappedKeyed =
    keyed "dl"


{-| Follows the element definition at [html.spec.whatwg.org/dt](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dt-element)
_Exclude heading content, sectioning content, header, footer descendant_
-}
dt : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | dt : Html.Supported } msg
dt =
    node "dt"


{-| Follows the element definition at [html.spec.whatwg.org/dd](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dd-element)
-}
dd : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | dd : Html.Supported } msg
dd =
    node "dd"


{-| Follows the element definition at [html.spec.whatwg.org/figure](https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element)
-}
figure :
    List (GlobalAttributes {} msg)
    -> Node { figcaption : Html.Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | figure : Html.Supported } msg
figure attributes figCaption nodes =
    Node "figure" (List.map toAttribute attributes) (toNode figCaption :: List.map toNode nodes)


{-| Follows the element definition at [html.spec.whatwg.org/figure](https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element)
-}
figureEndingCaption :
    List (GlobalAttributes {} msg)
    -> List (Node FlowContent msg)
    -> Node { figcaption : Html.Supported } msg
    -> Node { compatible | figure : Html.Supported } msg
figureEndingCaption attributes nodes figCaption =
    Node "figure" (List.map toAttribute attributes) (List.map toNode nodes ++ [ toNode figCaption ])


{-| Follows the element definition at [html.spec.whatwg.org/figure](https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element)
-}
figureNoCaption :
    List (GlobalAttributes {} msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | figure : Html.Supported } msg
figureNoCaption =
    node "figure"


{-| Follows the element definition at [html.spec.whatwg.org/figcaption](https://html.spec.whatwg.org/multipage/grouping-content.html#the-figcaption-element)
-}
figcaption : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | figcaption : Html.Supported } msg
figcaption =
    node "figcaption"


{-| Follows the element definition at [html.spec.whatwg.org/main](https://html.spec.whatwg.org/multipage/grouping-content.html#the-main-element)
-}
main_ : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | main_ : Html.Supported } msg
main_ =
    node "main"


{-| Follows the element definition at [html.spec.whatwg.org/div](https://html.spec.whatwg.org/multipage/grouping-content.html#the-div-element)
-}
div : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Node { compatible | div : Html.Supported } msg
div =
    node "div"


{-| Follows the element definition at [html.spec.whatwg.org/div](https://html.spec.whatwg.org/multipage/grouping-content.html#the-div-element)
-}
divDl : List (GlobalAttributes {} msg) -> List (Node { dt : Html.Supported, dd : Html.Supported } msg) -> Node { compatible | divDl : Html.Supported } msg
divDl =
    node "div"



{--TEXT LEVEL https://html.spec.whatwg.org/multipage/text-level-semantics.html --}


{-| Follows the element definition at [html.spec.whatwg.org/a](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element)
-}
a :
    List
        (GlobalAttributes
            { href : Html.SupportedAttribute
            , target : Html.SupportedAttribute
            , download : Html.SupportedAttribute
            , ping : Html.SupportedAttribute
            , rel : Html.SupportedAttribute
            , hreflang : Html.SupportedAttribute
            , type_mime : Html.SupportedAttribute
            , referrerpolicy : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | a : Html.Supported } msg
a =
    node "a"


{-| Follows the element definition at [html.spec.whatwg.org/em](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-em-element)
-}
em : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | em : Html.Supported } msg
em =
    node "em"


{-| Follows the element definition at [html.spec.whatwg.org/strong](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-strong-element)
-}
strong : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | strong : Html.Supported } msg
strong =
    node "strong"


{-| Follows the element definition at [html.spec.whatwg.org/small](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-small-element)
-}
small : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | small : Html.Supported } msg
small =
    node "small"


{-| Follows the element definition at [html.spec.whatwg.org/s](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-s-element)
-}
s : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | s : Html.Supported } msg
s =
    node "s"


{-| Follows the element definition at [html.spec.whatwg.org/cite](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-cite-element)
-}
cite : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | cite : Html.Supported } msg
cite =
    node "cite"


{-| Follows the element definition at [html.spec.whatwg.org/q](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-q-element)
-}
q :
    List (GlobalAttributes { cite : Html.SupportedAttribute } msg)
    -> List (Node PhrasingContent msg)
    -> Node { compatible | q : Html.Supported } msg
q =
    node "q"


{-| Follows the element definition at [html.spec.whatwg.org/dfn](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-dfn-element)
_Exclude dfn descendant_
-}
dfn : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | dfn : Html.Supported } msg
dfn =
    node "dfn"


{-| Follows the element definition at [html.spec.whatwg.org/abbr](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-abbr-element)
-}
abbr : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | abbr : Html.Supported } msg
abbr =
    node "abbr"


{-| Follows the element definition at [html.spec.whatwg.org/ruby](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element)
Content model: _Exclude ruby descendant_
-}
ruby :
    List (GlobalAttributes {} msg)
    -> List (Node PhrasingContent msg)
    -> List (Node { rt : Html.Supported, rp : Html.Supported } msg)
    -> Node { compatible | ruby : Html.Supported } msg
ruby attributes contents rtrpContents =
    Node "ruby" (List.map toAttribute attributes) (List.map toNode contents ++ List.map toNode rtrpContents)


{-| Follows the element definition at [html.spec.whatwg.org/ruby](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element)
-}
rubyWrapper :
    List (GlobalAttributes {} msg)
    -> Node { rubyDescendent : Html.Supported } msg
    -> List (Node { rt : Html.Supported, rp : Html.Supported } msg)
    -> Node { compatible | ruby : Html.Supported } msg
rubyWrapper attributes rubyChild rtrpContents =
    Node "ruby" (List.map toAttribute attributes) (toNode rubyChild :: List.map toNode rtrpContents)


{-| Follows the element definition at [html.spec.whatwg.org/ruby](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element)
-}
rubyDescendent :
    List (GlobalAttributes {} msg)
    -> List (Node { rt : Html.Supported, rp : Html.Supported } msg)
    -> Node { compatible | rubyDescendent : Html.Supported } msg
rubyDescendent attributes rtrpContents =
    Node "ruby" (List.map toAttribute attributes) (List.map toNode rtrpContents)


{-| Follows the element definition at [html.spec.whatwg.org/rt](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-rt-element)
-}
rt : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | rt : Html.Supported } msg
rt =
    node "rt"


{-| Follows the element definition at [html.spec.whatwg.org/rp](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-rp-element)
-}
rp : List (GlobalAttributes {} msg) -> String -> Node { compatible | rp : Html.Supported } msg
rp attributes content =
    Node "rp" (List.map toAttribute attributes) [ VirtualDom.text content ]


{-| Follows the element definition at [html.spec.whatwg.org/data](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-data-element)
-}
data :
    List (GlobalAttributes { value : Html.SupportedAttribute } msg)
    -> List (Node PhrasingContent msg)
    -> Node { compatible | data : Html.Supported } msg
data =
    node "data"


{-| Follows the element definition at [html.spec.whatwg.org/time](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-time-element)
-}
time :
    List (GlobalAttributes { datetime : Html.SupportedAttribute } msg)
    -> List (Node PhrasingContent msg)
    -> Node { compatible | time : Html.Supported } msg
time =
    node "time"


{-| Follows the element definition at [html.spec.whatwg.org/time](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-time-element)
-}
timeText :
    List (GlobalAttributes { datetime : Html.SupportedAttribute } msg)
    -> String
    -> Node { compatible | time : Html.Supported } msg
timeText attributes content =
    Node "time" (List.map toAttribute attributes) [ VirtualDom.text content ]


{-| Follows the element definition at [html.spec.whatwg.org/code](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-code-element)
-}
code : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | code : Html.Supported } msg
code =
    node "code"


{-| Follows the element definition at [html.spec.whatwg.org/var](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-var-element)
-}
var : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | var : Html.Supported } msg
var =
    node "var"


{-| Follows the element definition at [html.spec.whatwg.org/samp](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-samp-element)
-}
samp : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | samp : Html.Supported } msg
samp =
    node "samp"


{-| Follows the element definition at [html.spec.whatwg.org/kbd](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-kbd-element)
-}
kbd : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | kbd : Html.Supported } msg
kbd =
    node "kbd"


{-| Follows the element definition at [html.spec.whatwg.org/sub](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-sub-and-sup-elements)
-}
sub : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | sub : Html.Supported } msg
sub =
    node "sub"


{-| Follows the element definition at [html.spec.whatwg.org/sup](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-sub-and-sup-elements)
-}
sup : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | sup : Html.Supported } msg
sup =
    node "sup"


{-| Follows the element definition at [html.spec.whatwg.org/i](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-i-element)
-}
i : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | i : Html.Supported } msg
i =
    node "i"


{-| Follows the element definition at [html.spec.whatwg.org/b](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-b-element)
-}
b : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | b : Html.Supported } msg
b =
    node "b"


{-| Follows the element definition at [html.spec.whatwg.org/u](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-u-element)
-}
u : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | u : Html.Supported } msg
u =
    node "u"


{-| Follows the element definition at [html.spec.whatwg.org/mark](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-mark-element)
-}
mark : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | mark : Html.Supported } msg
mark =
    node "mark"


{-| Follows the element definition at [html.spec.whatwg.org/bdi](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdi-element)
-}
bdi : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | bdi : Html.Supported } msg
bdi =
    node "bdi"


{-| Follows the element definition at [html.spec.whatwg.org/bdo](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdo-element)
-}
bdo : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | bdo : Html.Supported } msg
bdo =
    node "bdo"


{-| Follows the element definition at [html.spec.whatwg.org/span](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-span-element)
-}
span : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | span : Html.Supported } msg
span =
    node "span"


{-| Follows the element definition at [html.spec.whatwg.org/br](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-br-element)
-}
br : List (GlobalAttributes {} msg) -> Node { compatible | br : Html.Supported } msg
br attributes =
    node "br" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/wbr](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-wbr-element)
-}
wbr : List (GlobalAttributes {} msg) -> Node { compatible | wbr : Html.Supported } msg
wbr attributes =
    node "wbr" attributes []



{--EDITS https://html.spec.whatwg.org/multipage/edits.html --}


{-| Follows the element definition at [html.spec.whatwg.org/ins](https://html.spec.whatwg.org/multipage/edits.html#the-ins-element)
-}
ins :
    List
        (GlobalAttributes
            { cite : Html.SupportedAttribute
            , datetime : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | ins : Html.Supported } msg
ins =
    node "ins"


{-| Follows the element definition at [html.spec.whatwg.org/del](https://html.spec.whatwg.org/multipage/edits.html#the-del-element)
-}
del :
    List
        (GlobalAttributes
            { cite : Html.SupportedAttribute
            , datetime : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | del : Html.Supported } msg
del =
    node "del"



{--EMBEDDED CONTENT https://html.spec.whatwg.org/multipage/embedded-content.html --}


{-| Follows the element definition at [html.spec.whatwg.org/picture](https://html.spec.whatwg.org/multipage/embedded-content.html#the-picture-element)
-}
picture :
    List (GlobalAttributes {} msg)
    -> List (Node { source : Html.Supported } msg)
    -> Node { img : Html.Supported } msg
    -> Node { compatible | picture : Html.Supported } msg
picture attributes sources image =
    Node "picture" (List.map toAttribute attributes) (List.foldr pictureHelp [ toNode image ] sources)


pictureHelp : Node { source : Html.Supported } msg -> List (VirtualDom.Node msg) -> List (VirtualDom.Node msg)
pictureHelp sourceNode children =
    toNode sourceNode :: children


{-| Follows the element definition at [html.spec.whatwg.org/source](https://html.spec.whatwg.org/multipage/embedded-content.html#the-source-element)
-}
source :
    List
        (GlobalAttributes
            { src : Html.SupportedAttribute
            , type_mime : Html.SupportedAttribute
            , srcset : Html.SupportedAttribute
            , sizes : Html.SupportedAttribute
            , media : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | source : Html.Supported } msg
source attributes =
    node "source" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/img](https://html.spec.whatwg.org/multipage/embedded-content.html#the-img-element)
-}
img :
    List
        (GlobalAttributes
            { alt : Html.SupportedAttribute
            , src : Html.SupportedAttribute
            , srcset : Html.SupportedAttribute
            , sizes : Html.SupportedAttribute
            , crossorigin : Html.SupportedAttribute
            , usemap : Html.SupportedAttribute
            , ismap : Html.SupportedAttribute
            , width : Html.SupportedAttribute
            , height : Html.SupportedAttribute
            , referrerpolicy : Html.SupportedAttribute
            , decoding : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | img : Html.Supported } msg
img attributes =
    node "img" attributes []



{--IFRAME EMBED https://html.spec.whatwg.org/multipage/iframe-embed-object.html --}


{-| Follows the element definition at [html.spec.whatwg.org/iframe](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-iframe-element)
-}
iframe :
    List
        (GlobalAttributes
            { src : Html.SupportedAttribute
            , srcdoc : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            , sandbox : Html.SupportedAttribute
            , allow : Html.SupportedAttribute
            , allowfullscreen : Html.SupportedAttribute
            , allowpaymentrequest : Html.SupportedAttribute
            , width : Html.SupportedAttribute
            , height : Html.SupportedAttribute
            , referrerpolicy : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | iframe : Html.Supported } msg
iframe attributes =
    node "iframe" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/embed](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-embed-element)
-}
embed :
    List
        (GlobalAttributes
            { src : Html.SupportedAttribute
            , type_mime : Html.SupportedAttribute
            , width : Html.SupportedAttribute
            , height : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | embed : Html.Supported } msg
embed attributes =
    node "embed" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/object](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-object-element)
-}
object :
    List
        (GlobalAttributes
            { data : Html.SupportedAttribute
            , type_mime : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            , usemap : Html.SupportedAttribute
            , form : Html.SupportedAttribute
            , width : Html.SupportedAttribute
            , height : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node { param : Html.Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | object : Html.Supported } msg
object attributes params contents =
    Node "object" (List.map toAttribute attributes) (List.map toNode params ++ List.map toNode contents)


{-| Follows the element definition at [html.spec.whatwg.org/param](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-param-element)
-}
param :
    List (GlobalAttributes {} msg)
    -> ( String, String )
    -> Node { compatible | param : Html.Supported } msg
param attributes ( name, value ) =
    Node "param"
        (VirtualDom.attribute "name" name
            :: VirtualDom.attribute "value" value
            :: List.map toAttribute attributes
        )
        []



{--MEDIA https://html.spec.whatwg.org/multipage/media.html--}


{-| Follows the element definition at [html.spec.whatwg.org/video](https://html.spec.whatwg.org/multipage/media.html#the-video-element)
-}
video :
    List
        (GlobalAttributes
            { src : Html.SupportedAttribute
            , crossorigin : Html.SupportedAttribute
            , poster : Html.SupportedAttribute
            , preload : Html.SupportedAttribute
            , autoplay : Html.SupportedAttribute
            , playsinline : Html.SupportedAttribute
            , loop : Html.SupportedAttribute
            , muted : Html.SupportedAttribute
            , controls : Html.SupportedAttribute
            , width : Html.SupportedAttribute
            , height : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node { source : Html.Supported } msg)
    -> List (Node { track : Html.Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | video : Html.Supported } msg
video attributes sources tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toNode sources ++ List.map toNode tracks ++ List.map toNode contents)


{-| Follows the element definition at [html.spec.whatwg.org/audio](https://html.spec.whatwg.org/multipage/media.html#the-audio-element)
-}
audio :
    List
        (GlobalAttributes
            { src : Html.SupportedAttribute
            , crossorigin : Html.SupportedAttribute
            , preload : Html.SupportedAttribute
            , autoplay : Html.SupportedAttribute
            , loop : Html.SupportedAttribute
            , muted : Html.SupportedAttribute
            , controls : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node { source : Html.Supported } msg)
    -> List (Node { track : Html.Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | audio : Html.Supported } msg
audio attributes sources tracks contents =
    Node "audio" (List.map toAttribute attributes) (List.map toNode sources ++ List.map toNode tracks ++ List.map toNode contents)


{-| Follows the element definition at [html.spec.whatwg.org/track](https://html.spec.whatwg.org/multipage/media.html#the-track-element)
-}
track :
    List
        (GlobalAttributes
            { kind : Html.SupportedAttribute
            , src : Html.SupportedAttribute
            , srclang : Html.SupportedAttribute
            , label : Html.SupportedAttribute
            , default : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | track : Html.Supported } msg
track attributes =
    node "track" attributes []



{--MAPS https://html.spec.whatwg.org/multipage/image-maps.html--}


{-| Follows the element definition at [html.spec.whatwg.org/map](https://html.spec.whatwg.org/multipage/image-maps.html#the-map-element)
-}
map :
    List (GlobalAttributes { name : Html.SupportedAttribute } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | map : Html.Supported } msg
map =
    node "map"


{-| Follows the element definition at [html.spec.whatwg.org/area](https://html.spec.whatwg.org/multipage/image-maps.html#the-area-element)
-}
area :
    List
        (GlobalAttributes
            { alt : Html.SupportedAttribute
            , coords : Html.SupportedAttribute
            , shape : Html.SupportedAttribute
            , href : Html.SupportedAttribute
            , target : Html.SupportedAttribute
            , download : Html.SupportedAttribute
            , ping : Html.SupportedAttribute
            , rel : Html.SupportedAttribute
            , referrerpolicy : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | area : Html.Supported } msg
area attributes =
    node "area" attributes []



{--TABULAR https://html.spec.whatwg.org/multipage/tables.html --}


{-| Defines the allowed descendants of a table excluding the tbody
-}
type alias TableContents msg =
    { caption : Maybe (VirtualDom.Node msg)
    , colgroups : List (VirtualDom.Node msg)
    , thead : Maybe (VirtualDom.Node msg)
    , tfoot : Maybe (VirtualDom.Node msg)
    }


{-| The Type that is passed around the table pipeline
-}
type Table msg
    = Table (List (GlobalAttributes {} msg)) (TableContents msg)


{-| Follows the element definition at [html.spec.whatwg.org/table](https://html.spec.whatwg.org/multipage/tables.html#the-table-element)
-}
table : List (GlobalAttributes {} msg) -> Table msg
table attributes =
    Table attributes (TableContents Nothing [] Nothing Nothing)


{-| Follows the element definition at [html.spec.whatwg.org/caption](https://html.spec.whatwg.org/multipage/tables.html#the-caption-element)
-}
caption : List (GlobalAttributes {} msg) -> List (Node FlowContent msg) -> Table msg -> Table msg
caption attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | caption = Just (VirtualDom.node "caption" (List.map toAttribute attributes) (List.map toNode contents))
        }


{-| Follows the element definition at [html.spec.whatwg.org/colgroup](https://html.spec.whatwg.org/multipage/tables.html#the-colgroup-element)
-}
colgroup :
    List (GlobalAttributes { span : Html.SupportedAttribute } msg)
    -> List (Node { col : Html.Supported } msg)
    -> Table msg
    -> Table msg
colgroup attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | colgroups = tableContents.colgroups ++ [ VirtualDom.node "colgroup" (List.map toAttribute attributes) (List.map toNode contents) ]
        }


{-| Follows the element definition at [html.spec.whatwg.org/col](https://html.spec.whatwg.org/multipage/tables.html#the-col-element)
-}
col : List (GlobalAttributes { span : Html.SupportedAttribute } msg) -> Node { compatible | col : Html.Supported } msg
col attributes =
    node "col" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/thead](https://html.spec.whatwg.org/multipage/tables.html#the-thead-element)
-}
thead : List (GlobalAttributes {} msg) -> List (Node { tr : Html.Supported } msg) -> Table msg -> Table msg
thead attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | thead = Just (VirtualDom.node "thead" (List.map toAttribute attributes) (List.map toNode contents))
        }


{-| Follows the element definition at [html.spec.whatwg.org/tfoot](https://html.spec.whatwg.org/multipage/tables.html#the-tfoot-element)
-}
tfoot : List (GlobalAttributes {} msg) -> List (Node { tr : Html.Supported } msg) -> Table msg -> Table msg
tfoot attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | tfoot = Just (VirtualDom.node "tfoot" (List.map toAttribute attributes) (List.map toNode contents))
        }


{-| Follows the element definition at [html.spec.whatwg.org/tbody](https://html.spec.whatwg.org/multipage/tables.html#the-tbody-element)
-}
tbody : List (GlobalAttributes {} msg) -> List (Node { tr : Html.Supported } msg) -> Table msg -> Node { compatible | table : Html.Supported } msg
tbody attributes rows (Table tableAttributes contents) =
    Node "table"
        (List.map toAttribute tableAttributes)
        (maybeVirtualNodeToList contents.caption
            ++ contents.colgroups
            ++ maybeVirtualNodeToList contents.thead
            ++ [ VirtualDom.node "tbody" (List.map toAttribute attributes) (List.map toNode rows) ]
            ++ maybeVirtualNodeToList contents.tfoot
        )


{-| Follows the element definition at [html.spec.whatwg.org/tr](https://html.spec.whatwg.org/multipage/tables.html#the-tr-element)
-}
trbody : List (Node { tr : Html.Supported } msg) -> Table msg -> Node { compatible | table : Html.Supported } msg
trbody rows (Table tableAttributes contents) =
    Node "table"
        (List.map toAttribute tableAttributes)
        (maybeVirtualNodeToList contents.caption
            ++ contents.colgroups
            ++ maybeVirtualNodeToList contents.thead
            ++ List.map toNode rows
            ++ maybeVirtualNodeToList contents.tfoot
        )


{-| Follows the element definition at [html.spec.whatwg.org/tr](https://html.spec.whatwg.org/multipage/tables.html#the-tr-element)
-}
tr : List (GlobalAttributes {} msg) -> List (Node { td : Html.Supported, th : Html.Supported } msg) -> Node { compatible | tr : Html.Supported } msg
tr =
    node "tr"


{-| Follows the element definition at [html.spec.whatwg.org/td](https://html.spec.whatwg.org/multipage/tables.html#the-td-element)
-}
td :
    List
        (GlobalAttributes
            { colspan : Html.SupportedAttribute
            , rowspan : Html.SupportedAttribute
            , headers : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | td : Html.Supported } msg
td =
    node "td"



{----}


{-| Follows the element definition at [html.spec.whatwg.org/th](https://html.spec.whatwg.org/multipage/tables.html#the-th-element)
Content model: _Excludes header, footer, sectioning content, heading content_
-}
th :
    List
        (GlobalAttributes
            { colspan : Html.SupportedAttribute
            , rowspan : Html.SupportedAttribute
            , headers : Html.SupportedAttribute
            , scope : Html.SupportedAttribute
            , abbr : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | th : Html.Supported } msg
th =
    node "th"



{--FORMS https://html.spec.whatwg.org/multipage/forms.html --}


{-| Follows the element definition at [html.spec.whatwg.org/form](https://html.spec.whatwg.org/multipage/forms.html#the-form-element)
Content model: _Excludes form_
-}
form :
    List
        (GlobalAttributes
            { acceptcharset : Html.SupportedAttribute
            , action : Html.SupportedAttribute
            , autocomplete : Html.SupportedAttribute
            , enctype : Html.SupportedAttribute
            , method : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            , novalidate : Html.SupportedAttribute
            , target : Html.SupportedAttribute
            , rel : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | form : Html.Supported } msg
form =
    node "form"


{-| Follows the element definition at [html.spec.whatwg.org/label](https://html.spec.whatwg.org/multipage/forms.html#the-label-element)
-}
label :
    List (GlobalAttributes { for : Html.SupportedAttribute } msg)
    -> List (Node PhrasingContent msg)
    -> Node { compatible | label : Html.Supported } msg
label =
    node "label"



{--INPUTS https://html.spec.whatwg.org/multipage/input.html --}


{-| Follows the element definition at [html.spec.whatwg.org/input](https://html.spec.whatwg.org/multipage/input.html#the-input-element)
-}
input :
    List
        (GlobalAttributes
            { accept : Html.SupportedAttribute
            , alt : Html.SupportedAttribute
            , autocomplete : Html.SupportedAttribute
            , checked : Html.SupportedAttribute
            , dirname : Html.SupportedAttribute
            , disabled : Html.SupportedAttribute
            , files : Html.SupportedAttribute
            , form : Html.SupportedAttribute
            , formaction : Html.SupportedAttribute
            , formenctype : Html.SupportedAttribute
            , formmethod : Html.SupportedAttribute
            , formnovalidate : Html.SupportedAttribute
            , formtarget : Html.SupportedAttribute
            , height : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , maxlength : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , minlength : Html.SupportedAttribute
            , multiple : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            , pattern : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , size : Html.SupportedAttribute
            , src : Html.SupportedAttribute
            , step : Html.SupportedAttribute
            , type_input : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , valueAsDate : Html.SupportedAttribute
            , valueAsNumber : Html.SupportedAttribute
            , width : Html.SupportedAttribute
            , selectionStart : Html.SupportedAttribute
            , selectionEnd : Html.SupportedAttribute
            , selectionDirection : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
input attributes =
    node "input" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/hidden](https://html.spec.whatwg.org/multipage/input.html#hidden-state-(type=hidden))
-}
hidden :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
hidden attributes =
    node "input" (Html.Attribute "type" "hidden" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/text](https://html.spec.whatwg.org/multipage/input.html#text-(type=text)-state-and-search-state-(type=search))
-}
textInput :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , dirname : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , maxlength : Html.SupportedAttribute
            , minlength : Html.SupportedAttribute
            , pattern : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , size : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , selectionStart : Html.SupportedAttribute
            , selectionEnd : Html.SupportedAttribute
            , selectionDirection : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
textInput attributes =
    node "input" (Html.Attribute "type" "text" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/search](https://html.spec.whatwg.org/multipage/input.html#text-(type=text)-state-and-search-state-(type=search))
-}
search :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , dirname : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , maxlength : Html.SupportedAttribute
            , minlength : Html.SupportedAttribute
            , pattern : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , size : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , selectionStart : Html.SupportedAttribute
            , selectionEnd : Html.SupportedAttribute
            , selectionDirection : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
search attributes =
    node "input" (Html.Attribute "type" "search" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/url](https://html.spec.whatwg.org/multipage/input.html#url-state-(type=url))
-}
url :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , maxlength : Html.SupportedAttribute
            , minlength : Html.SupportedAttribute
            , pattern : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , size : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , selectionStart : Html.SupportedAttribute
            , selectionEnd : Html.SupportedAttribute
            , selectionDirection : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
url attributes =
    node "input" (Html.Attribute "type" "url" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/tel](https://html.spec.whatwg.org/multipage/input.html#telephone-state-(type=tel))
-}
tel :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , maxlength : Html.SupportedAttribute
            , minlength : Html.SupportedAttribute
            , pattern : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , size : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , selectionStart : Html.SupportedAttribute
            , selectionEnd : Html.SupportedAttribute
            , selectionDirection : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
tel attributes =
    node "input" (Html.Attribute "type" "tel" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/email](https://html.spec.whatwg.org/multipage/input.html#e-mail-state-(type=email))
-}
email :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , maxlength : Html.SupportedAttribute
            , minlength : Html.SupportedAttribute
            , multiple : Html.SupportedAttribute
            , pattern : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , size : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
email attributes =
    node "input" (Html.Attribute "type" "email" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/password](https://html.spec.whatwg.org/multipage/input.html#password-state-(type=password))
-}
password :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , maxlength : Html.SupportedAttribute
            , minlength : Html.SupportedAttribute
            , pattern : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , size : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , selectionStart : Html.SupportedAttribute
            , selectionEnd : Html.SupportedAttribute
            , selectionDirection : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
password attributes =
    node "input" (Html.Attribute "type" "password" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/date](https://html.spec.whatwg.org/multipage/input.html#date-state-(type=date))
-}
date :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , step : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , valueAsDate : Html.SupportedAttribute
            , valueAsNumber : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
date attributes =
    node "input" (Html.Attribute "type" "date" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/month](https://html.spec.whatwg.org/multipage/input.html#month-state-(type=month))
-}
month :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , step : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , valueAsDate : Html.SupportedAttribute
            , valueAsNumber : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
month attributes =
    node "input" (Html.Attribute "type" "month" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/week](https://html.spec.whatwg.org/multipage/input.html#week-state-(type=week))
-}
week :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , step : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , valueAsDate : Html.SupportedAttribute
            , valueAsNumber : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
week attributes =
    node "input" (Html.Attribute "type" "week" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/time](https://html.spec.whatwg.org/multipage/input.html#time-state-(type=time))
-}
timeInput :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , step : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , valueAsDate : Html.SupportedAttribute
            , valueAsNumber : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
timeInput attributes =
    node "input" (Html.Attribute "type" "time" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/datetime](https://html.spec.whatwg.org/multipage/input.html#local-date-and-time-state-(type=datetime-local))
-}
datetime :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , step : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , valueAsNumber : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
datetime attributes =
    node "input" (Html.Attribute "type" "datetime-local" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/number](https://html.spec.whatwg.org/multipage/input.html#number-state-(type=number))
-}
number :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , step : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , valueAsNumber : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
number attributes =
    node "input" (Html.Attribute "type" "number" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/range](https://html.spec.whatwg.org/multipage/input.html#range-state-(type=range))
-}
range :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , step : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            , valueAsNumber : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
range attributes =
    node "input" (Html.Attribute "type" "range" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/color](https://html.spec.whatwg.org/multipage/input.html#color-state-(type=color))
-}
color :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , list : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
color attributes =
    node "input" (Html.Attribute "type" "color" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/checkbox](https://html.spec.whatwg.org/multipage/input.html#checkbox-state-(type=checkbox))
-}
checkbox :
    List
        (GlobalAttributes
            { checked : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
checkbox attributes =
    node "input" (Html.Attribute "type" "checkbox" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/radio](https://html.spec.whatwg.org/multipage/input.html#radio-button-state-(type=radio))
-}
radio :
    List
        (GlobalAttributes
            { checked : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
radio attributes =
    node "input" (Html.Attribute "type" "radio" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/file](https://html.spec.whatwg.org/multipage/input.html#file-upload-state-(type=file))
-}
file :
    List
        (GlobalAttributes
            { accept : Html.SupportedAttribute
            , multiple : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , files : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
file attributes =
    node "input" (Html.Attribute "type" "file" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/submit](https://html.spec.whatwg.org/multipage/input.html#submit-button-state-(type=submit))
-}
submit :
    List
        (GlobalAttributes
            { formaction : Html.SupportedAttribute
            , formenctype : Html.SupportedAttribute
            , formmethod : Html.SupportedAttribute
            , formnovalidate : Html.SupportedAttribute
            , formtarget : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
submit attributes =
    node "input" (Html.Attribute "type" "submit" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/image](https://html.spec.whatwg.org/multipage/input.html#image-button-state-(type=image))
-}
imageButton :
    List
        (GlobalAttributes
            { alt : Html.SupportedAttribute
            , formaction : Html.SupportedAttribute
            , formenctype : Html.SupportedAttribute
            , formmethod : Html.SupportedAttribute
            , formnovalidate : Html.SupportedAttribute
            , formtarget : Html.SupportedAttribute
            , height : Html.SupportedAttribute
            , src : Html.SupportedAttribute
            , width : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
imageButton attributes =
    node "input" (Html.Attribute "type" "image" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/reset](https://html.spec.whatwg.org/multipage/input.html#reset-button-state-(type=reset))
-}
resetButton :
    List
        (GlobalAttributes
            { value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
resetButton attributes =
    node "input" (Html.Attribute "type" "reset" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/button](https://html.spec.whatwg.org/multipage/input.html#button-state-(type=button))
-}
buttonInput :
    List
        (GlobalAttributes
            { value : Html.SupportedAttribute
            }
            msg
        )
    -> Node { compatible | input : Html.Supported } msg
buttonInput attributes =
    node "input" (Html.Attribute "type" "button" :: attributes) []



{--FORM ELEMENTS https://html.spec.whatwg.org/multipage/form-elements.html --}


{-| Follows the element definition at [html.spec.whatwg.org/button](https://html.spec.whatwg.org/multipage/form-elements.html#the-button-element)
-}
button :
    List
        (GlobalAttributes
            { disabled : Html.SupportedAttribute
            , form : Html.SupportedAttribute
            , formaction : Html.SupportedAttribute
            , formenctype : Html.SupportedAttribute
            , formmethod : Html.SupportedAttribute
            , formnovalidate : Html.SupportedAttribute
            , formtarget : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            , type_button : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | button : Html.Supported } msg
button =
    node "button"


{-| Follows the element definition at [html.spec.whatwg.org/select](https://html.spec.whatwg.org/multipage/form-elements.html#the-select-element)
-}
select :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , disabled : Html.SupportedAttribute
            , form : Html.SupportedAttribute
            , multiple : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , size : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node { option : Html.Supported, optgroup : Html.Supported } msg)
    -> Node { compatible | select : Html.Supported } msg
select =
    node "select"


{-| Follows the element definition at [html.spec.whatwg.org/optgroup](https://html.spec.whatwg.org/multipage/form-elements.html#the-optgroup-element)
-}
optgroup :
    List
        (GlobalAttributes
            { disabled : Html.SupportedAttribute
            , label : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node { option : Html.Supported } msg)
    -> Node { compatible | optgroup : Html.Supported } msg
optgroup =
    node "optgroup"


{-| Follows the element definition at [html.spec.whatwg.org/datalist](https://html.spec.whatwg.org/multipage/form-elements.html#the-datalist-element)
-}
datalist : List (GlobalAttributes {} msg) -> List (Node { option : Html.Supported } msg) -> Node { compatible | datalist : Html.Supported } msg
datalist =
    node "datalist"


{-| Follows the element definition at [html.spec.whatwg.org/datalist](https://html.spec.whatwg.org/multipage/form-elements.html#the-datalist-element)
-}
datalistText : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | datalist : Html.Supported } msg
datalistText =
    node "datalist"


{-| Follows the element definition at [html.spec.whatwg.org/option](https://html.spec.whatwg.org/multipage/form-elements.html#the-option-element)
-}
option :
    List
        (GlobalAttributes
            { disabled : Html.SupportedAttribute
            , selected : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> String
    -> Node { compatible | option : Html.Supported } msg
option attributes contents =
    Node "option" (List.map toAttribute attributes) [ VirtualDom.text contents ]


{-| Follows the element definition at [html.spec.whatwg.org/option](https://html.spec.whatwg.org/multipage/form-elements.html#the-option-element)
-}
optionLabelled :
    List
        (GlobalAttributes
            { disabled : Html.SupportedAttribute
            , selected : Html.SupportedAttribute
            , value : Html.SupportedAttribute
            }
            msg
        )
    -> String
    -> Node { compatible | option : Html.Supported } msg
optionLabelled attributes contents =
    Node "option" (VirtualDom.attribute "label" contents :: List.map toAttribute attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/textarea](https://html.spec.whatwg.org/multipage/form-elements.html#the-textarea-element)
-}
textarea :
    List
        (GlobalAttributes
            { autocomplete : Html.SupportedAttribute
            , cols : Html.SupportedAttribute
            , dirname : Html.SupportedAttribute
            , disabled : Html.SupportedAttribute
            , form : Html.SupportedAttribute
            , maxlength : Html.SupportedAttribute
            , minlength : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            , placeholder : Html.SupportedAttribute
            , readonly : Html.SupportedAttribute
            , required : Html.SupportedAttribute
            , rows : Html.SupportedAttribute
            , wrap : Html.SupportedAttribute
            }
            msg
        )
    -> String
    -> Node { compatible | textarea : Html.Supported } msg
textarea attributes contents =
    Node "textarea" (List.map toAttribute attributes) [ VirtualDom.text contents ]


{-| Follows the element definition at [html.spec.whatwg.org/output](https://html.spec.whatwg.org/multipage/form-elements.html#the-output-element)
-}
output :
    List
        (GlobalAttributes
            { for : Html.SupportedAttribute
            , form : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | output : Html.Supported } msg
output =
    node "output"


{-| Follows the element definition at [html.spec.whatwg.org/progress](https://html.spec.whatwg.org/multipage/form-elements.html#the-progress-element)
-}
progress :
    List
        (GlobalAttributes
            { value_ordinal : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | progress : Html.Supported } msg
progress =
    node "progress"


{-| Follows the element definition at [html.spec.whatwg.org/meter](https://html.spec.whatwg.org/multipage/form-elements.html#the-meter-element)
-}
meter :
    List
        (GlobalAttributes
            { value_ordinal : Html.SupportedAttribute
            , min : Html.SupportedAttribute
            , max : Html.SupportedAttribute
            , low : Html.SupportedAttribute
            , high : Html.SupportedAttribute
            , optimum : Html.SupportedAttribute
            }
            msg
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | meter : Html.Supported } msg
meter =
    node "meter"


{-| Follows the element definition at [html.spec.whatwg.org/fieldset](https://html.spec.whatwg.org/multipage/form-elements.html#the-fieldset-element)
-}
fieldset :
    List
        (GlobalAttributes
            { disabled : Html.SupportedAttribute
            , form : Html.SupportedAttribute
            , name : Html.SupportedAttribute
            }
            msg
        )
    -> ( List (GlobalAttributes {} msg), List (Node PhrasingContent msg) )
    -> List (Node FlowContent msg)
    -> Node { compatible | fieldset : Html.Supported } msg
fieldset attributes ( legendAttributes, legendContent ) contents =
    Node "fieldset"
        (List.map toAttribute attributes)
        (VirtualDom.node "legend"
            (List.map toAttribute legendAttributes)
            (List.map toNode legendContent)
            :: List.map toNode contents
        )



{--INTERACTIVE https://html.spec.whatwg.org/multipage/interactive-elements.html --}


{-| Follows the element definition at [html.spec.whatwg.org/details](https://html.spec.whatwg.org/multipage/interactive-elements.html#the-details-element)
-}
details :
    List (GlobalAttributes { open : Html.SupportedAttribute } msg)
    -> Node { summary : Html.Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | details : Html.Supported } msg
details attributes summaryNode contents =
    Node "details" (List.map toAttribute attributes) (toNode summaryNode :: List.map toNode contents)


{-| Follows the element definition at [html.spec.whatwg.org/summary](https://html.spec.whatwg.org/multipage/interactive-elements.html#the-summary-element)
-}
summary : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | summary : Html.Supported } msg
summary =
    node "summary"


{-| Follows the element definition at [html.spec.whatwg.org/summary](https://html.spec.whatwg.org/multipage/interactive-elements.html#the-summary-element)
-}
summaryHeader : List (GlobalAttributes {} msg) -> Node HeadingContent msg -> Node { compatible | summary : Html.Supported } msg
summaryHeader attributes headingNode =
    Node "summary" (List.map toAttribute attributes) [ toNode headingNode ]


{-| Follows the element definition at [html.spec.whatwg.org/dialog](https://html.spec.whatwg.org/multipage/interactive-elements.html#the-dialog-element)
-}
dialog :
    List (GlobalAttributes { open : Html.SupportedAttribute } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | dialog : Html.Supported } msg
dialog =
    node "dialog"


{-| Follows the element definition at [html.spec.whatwg.org/canvas](https://html.spec.whatwg.org/multipage/canvas.html#the-canvas-element)
-}
canvas :
    List (GlobalAttributes { width : Html.SupportedAttribute, height : Html.SupportedAttribute } msg)
    -> Node { compatible | canvas : Html.Supported } msg
canvas attributes =
    node "canvas" attributes []


{-| Textual content
-}
text : String -> Node a msg
text =
    Text


maybeVirtualNodeToList : Maybe (VirtualDom.Node msg) -> List (VirtualDom.Node msg)
maybeVirtualNodeToList maybeNode =
    case maybeNode of
        Just n ->
            [ n ]

        Nothing ->
            []


{-| Function that allows converting the internal [Node](#Node) structure to VirtualDom.Node. This only needs to be done on the root element since ancestors are automatically converted as they are processed.

    W3.Html.div [] [ W3.Html.a [] [] ] |> W3.Html.toHtml

-}
toNode : Node a msg -> VirtualDom.Node msg
toNode typedNode =
    case typedNode of
        Node tagName attributes contents ->
            VirtualDom.node tagName attributes contents

        Lazy contents ->
            contents

        Keyed tagName attributes contents ->
            VirtualDom.keyedNode tagName attributes contents

        Text contents ->
            VirtualDom.text contents


{-| Use this function as an escape hatch to support elements that may not be supported by this package.
-}
node : String -> List (Attribute a msg) -> List (Node b msg) -> Node c msg
node tagName attributes nodes =
    Node tagName (List.map toAttribute attributes) (List.map toNode nodes)


{-| Helper method that makes it easier to convert lists of Attributes.
-}
toAttributes : List (Attribute a msg) -> List (VirtualDom.Attribute msg)
toAttributes =
    List.map toAttribute


{-| Allows converting the internal Attribute type to a a VirtualDom.Attribute. This should be used sparingly since this package can not guarantee valid HTML after it is converted.
-}
toAttribute : Attribute a msg -> VirtualDom.Attribute msg
toAttribute attribute =
    case attribute of
        Html.Attribute name value ->
            VirtualDom.attribute name value

        Html.Property name value ->
            VirtualDom.property name value

        Html.Event event handler ->
            VirtualDom.on event handler


{-| -}
keyed : String -> List (Attribute a msg) -> List ( String, Node b msg ) -> Node c msg
keyed tagName attributes nodes =
    Keyed tagName (List.map toAttribute attributes) (List.map (\n -> Tuple.mapSecond toNode n) nodes)


{-| -}
lazy : (a -> Node b msg) -> a -> Node b msg
lazy function v1 =
    Lazy (VirtualDom.lazy (\av1 -> toNode (function av1)) v1)


{-| -}
lazy2 : (a -> b -> Node c msg) -> a -> b -> Node c msg
lazy2 function v1 v2 =
    Lazy (VirtualDom.lazy2 (\av1 av2 -> toNode (function av1 av2)) v1 v2)


{-| -}
lazy3 : (a -> b -> c -> Node d msg) -> a -> b -> c -> Node d msg
lazy3 function v1 v2 v3 =
    Lazy (VirtualDom.lazy3 (\av1 av2 av3 -> toNode (function av1 av2 av3)) v1 v2 v3)


{-| -}
lazy4 : (a -> b -> c -> d -> Node e msg) -> a -> b -> c -> d -> Node e msg
lazy4 function v1 v2 v3 v4 =
    Lazy (VirtualDom.lazy4 (\av1 av2 av3 av4 -> toNode (function av1 av2 av3 av4)) v1 v2 v3 v4)


{-| -}
lazy5 : (a -> b -> c -> d -> e -> Node f msg) -> a -> b -> c -> d -> e -> Node f msg
lazy5 function v1 v2 v3 v4 v5 =
    Lazy (VirtualDom.lazy5 (\av1 av2 av3 av4 av5 -> toNode (function av1 av2 av3 av4 av5)) v1 v2 v3 v4 v5)


{-| -}
lazy6 : (a -> b -> c -> d -> e -> f -> Node g msg) -> a -> b -> c -> d -> e -> f -> Node g msg
lazy6 function v1 v2 v3 v4 v5 v6 =
    Lazy (VirtualDom.lazy6 (\av1 av2 av3 av4 av5 av6 -> toNode (function av1 av2 av3 av4 av5 av6)) v1 v2 v3 v4 v5 v6)


{-| -}
lazy7 : (a -> b -> c -> d -> e -> f -> g -> Node h msg) -> a -> b -> c -> d -> e -> f -> g -> Node h msg
lazy7 function v1 v2 v3 v4 v5 v6 v7 =
    Lazy (VirtualDom.lazy7 (\av1 av2 av3 av4 av5 av6 av7 -> toNode (function av1 av2 av3 av4 av5 av6 av7)) v1 v2 v3 v4 v5 v6 v7)


{-| -}
lazy8 : (a -> b -> c -> d -> e -> f -> g -> h -> Node i msg) -> a -> b -> c -> d -> e -> f -> g -> h -> Node i msg
lazy8 function v1 v2 v3 v4 v5 v6 v7 v8 =
    Lazy (VirtualDom.lazy8 (\av1 av2 av3 av4 av5 av6 av7 av8 -> toNode (function av1 av2 av3 av4 av5 av6 av7 av8)) v1 v2 v3 v4 v5 v6 v7 v8)


{-| -}
type alias Event msg =
    { message : msg, preventDefault : Bool, stopPropagation : Bool }


{-| -}
on : String -> Json.Decoder (Event msg) -> Html.Attribute a msg
on event decoder =
    Html.Event event (VirtualDom.Custom decoder)


{-| -}
onabort : msg -> Html.Attribute a msg
onabort msg =
    on "abort" (Json.succeed (Event msg False False))


{-| -}
onauxclick : msg -> Html.Attribute a msg
onauxclick msg =
    on "auxclick" (Json.succeed (Event msg False False))


{-| -}
onblur : msg -> Html.Attribute a msg
onblur msg =
    on "blur" (Json.succeed (Event msg False False))


{-| -}
oncancel : msg -> Html.Attribute a msg
oncancel msg =
    on "cancel" (Json.succeed (Event msg False False))


{-| -}
oncanplay : msg -> Html.Attribute a msg
oncanplay msg =
    on "canplay" (Json.succeed (Event msg False False))


{-| -}
oncanplaythrough : msg -> Html.Attribute a msg
oncanplaythrough msg =
    on "canplaythrough" (Json.succeed (Event msg False False))


{-| -}
onchange : msg -> Html.Attribute a msg
onchange msg =
    on "change" (Json.succeed (Event msg False False))


{-| -}
onclick : msg -> Html.Attribute a msg
onclick msg =
    on "click" (Json.succeed (Event msg False False))


{-| -}
onclose : msg -> Html.Attribute a msg
onclose msg =
    on "close" (Json.succeed (Event msg False False))


{-| -}
oncontextmenu : msg -> Html.Attribute a msg
oncontextmenu msg =
    on "contextmenu" (Json.succeed (Event msg False False))


{-| -}
oncopy : msg -> Html.Attribute a msg
oncopy msg =
    on "copy" (Json.succeed (Event msg False False))


{-| -}
oncuechange : msg -> Html.Attribute a msg
oncuechange msg =
    on "cuechange" (Json.succeed (Event msg False False))


{-| -}
oncut : msg -> Html.Attribute a msg
oncut msg =
    on "cut" (Json.succeed (Event msg False False))


{-| -}
ondblclick : msg -> Html.Attribute a msg
ondblclick msg =
    on "dblclick" (Json.succeed (Event msg False False))


{-| -}
ondrag : msg -> Html.Attribute a msg
ondrag msg =
    on "drag" (Json.succeed (Event msg False False))


{-| -}
ondragend : msg -> Html.Attribute a msg
ondragend msg =
    on "dragend" (Json.succeed (Event msg False False))


{-| -}
ondragenter : msg -> Html.Attribute a msg
ondragenter msg =
    on "dragenter" (Json.succeed (Event msg False False))


{-| -}
ondragexit : msg -> Html.Attribute a msg
ondragexit msg =
    on "dragexit" (Json.succeed (Event msg False False))


{-| -}
ondragleave : msg -> Html.Attribute a msg
ondragleave msg =
    on "dragleave" (Json.succeed (Event msg False False))


{-| -}
ondragover : msg -> Html.Attribute a msg
ondragover msg =
    on "dragover" (Json.succeed (Event msg False False))


{-| -}
ondragstart : msg -> Html.Attribute a msg
ondragstart msg =
    on "dragstart" (Json.succeed (Event msg False False))


{-| -}
ondrop : msg -> Html.Attribute a msg
ondrop msg =
    on "drop" (Json.succeed (Event msg False False))


{-| -}
ondurationchange : msg -> Html.Attribute a msg
ondurationchange msg =
    on "durationchange" (Json.succeed (Event msg False False))


{-| -}
onemptied : msg -> Html.Attribute a msg
onemptied msg =
    on "emptied" (Json.succeed (Event msg False False))


{-| -}
onended : msg -> Html.Attribute a msg
onended msg =
    on "ended" (Json.succeed (Event msg False False))


{-| -}
onerror : msg -> Html.Attribute a msg
onerror msg =
    on "error" (Json.succeed (Event msg False False))


{-| -}
onfocus : msg -> Html.Attribute a msg
onfocus msg =
    on "focus" (Json.succeed (Event msg False False))


{-| -}
onformdata : msg -> Html.Attribute a msg
onformdata msg =
    on "formdata" (Json.succeed (Event msg False False))


{-| -}
oninput : msg -> Html.Attribute a msg
oninput msg =
    on "input" (Json.succeed (Event msg False False))


{-| -}
oninvalid : msg -> Html.Attribute a msg
oninvalid msg =
    on "invalid" (Json.succeed (Event msg False False))


{-| -}
onkeydown : msg -> Html.Attribute a msg
onkeydown msg =
    on "keydown" (Json.succeed (Event msg False False))


{-| -}
onkeypress : msg -> Html.Attribute a msg
onkeypress msg =
    on "keypress" (Json.succeed (Event msg False False))


{-| -}
onkeyup : msg -> Html.Attribute a msg
onkeyup msg =
    on "keyup" (Json.succeed (Event msg False False))


{-| -}
onload : msg -> Html.Attribute a msg
onload msg =
    on "load" (Json.succeed (Event msg False False))


{-| -}
onloadeddata : msg -> Html.Attribute a msg
onloadeddata msg =
    on "loadeddata" (Json.succeed (Event msg False False))


{-| -}
onloadedmetadata : msg -> Html.Attribute a msg
onloadedmetadata msg =
    on "loadedmetadata" (Json.succeed (Event msg False False))


{-| -}
onloadedstart : msg -> Html.Attribute a msg
onloadedstart msg =
    on "loadedstart" (Json.succeed (Event msg False False))


{-| -}
onmousedown : msg -> Html.Attribute a msg
onmousedown msg =
    on "mousedown" (Json.succeed (Event msg False False))


{-| -}
onmouseenter : msg -> Html.Attribute a msg
onmouseenter msg =
    on "mouseenter" (Json.succeed (Event msg False False))


{-| -}
onmouseleave : msg -> Html.Attribute a msg
onmouseleave msg =
    on "mouseleave" (Json.succeed (Event msg False False))


{-| -}
onmousemove : msg -> Html.Attribute a msg
onmousemove msg =
    on "mousemove" (Json.succeed (Event msg False False))


{-| -}
onmouseout : msg -> Html.Attribute a msg
onmouseout msg =
    on "mouseout" (Json.succeed (Event msg False False))


{-| -}
onmouseover : msg -> Html.Attribute a msg
onmouseover msg =
    on "mouseover" (Json.succeed (Event msg False False))


{-| -}
onmouseup : msg -> Html.Attribute a msg
onmouseup msg =
    on "mouseup" (Json.succeed (Event msg False False))


{-| -}
onpaste : msg -> Html.Attribute a msg
onpaste msg =
    on "paste" (Json.succeed (Event msg False False))


{-| -}
onpause : msg -> Html.Attribute a msg
onpause msg =
    on "pause" (Json.succeed (Event msg False False))


{-| -}
onplay : msg -> Html.Attribute a msg
onplay msg =
    on "play" (Json.succeed (Event msg False False))


{-| -}
onplaying : msg -> Html.Attribute a msg
onplaying msg =
    on "playing" (Json.succeed (Event msg False False))


{-| -}
onprogress : msg -> Html.Attribute a msg
onprogress msg =
    on "progress" (Json.succeed (Event msg False False))


{-| -}
onratechange : msg -> Html.Attribute a msg
onratechange msg =
    on "ratechange" (Json.succeed (Event msg False False))


{-| -}
onreset : msg -> Html.Attribute a msg
onreset msg =
    on "reset" (Json.succeed (Event msg False False))


{-| -}
onresize : msg -> Html.Attribute a msg
onresize msg =
    on "resize" (Json.succeed (Event msg False False))


{-| -}
onscroll : msg -> Html.Attribute a msg
onscroll msg =
    on "scroll" (Json.succeed (Event msg False False))


{-| -}
onsecuritypolicyviolation : msg -> Html.Attribute a msg
onsecuritypolicyviolation msg =
    on "securitypolicyviolation" (Json.succeed (Event msg False False))


{-| -}
onseeked : msg -> Html.Attribute a msg
onseeked msg =
    on "seeked" (Json.succeed (Event msg False False))


{-| -}
onseeking : msg -> Html.Attribute a msg
onseeking msg =
    on "seeking" (Json.succeed (Event msg False False))


{-| -}
onselect : msg -> Html.Attribute a msg
onselect msg =
    on "select" (Json.succeed (Event msg False False))


{-| -}
onslotchange : msg -> Html.Attribute a msg
onslotchange msg =
    on "slotchange" (Json.succeed (Event msg False False))


{-| -}
onstalled : msg -> Html.Attribute a msg
onstalled msg =
    on "stalled" (Json.succeed (Event msg False False))


{-| -}
onsubmit : msg -> Html.Attribute a msg
onsubmit msg =
    on "submit" (Json.succeed (Event msg False False))


{-| -}
onsuspend : msg -> Html.Attribute a msg
onsuspend msg =
    on "suspend" (Json.succeed (Event msg False False))


{-| -}
ontimeupdate : msg -> Html.Attribute a msg
ontimeupdate msg =
    on "timeupdate" (Json.succeed (Event msg False False))


{-| -}
ontoggle : msg -> Html.Attribute a msg
ontoggle msg =
    on "toggle" (Json.succeed (Event msg False False))


{-| -}
onvolumechange : msg -> Html.Attribute a msg
onvolumechange msg =
    on "volumechange" (Json.succeed (Event msg False False))


{-| -}
onwaiting : msg -> Html.Attribute a msg
onwaiting msg =
    on "waiting" (Json.succeed (Event msg False False))


{-| -}
onwheel : msg -> Html.Attribute a msg
onwheel msg =
    on "wheel" (Json.succeed (Event msg False False))
