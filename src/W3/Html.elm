module W3.Html exposing (Node, blockquote, dataDiv, dd, div, dl, dl1, dt, figcaption, figure, figure1, figure2, hr, li, menu, ol, p, pre, toHtml, ul)

import VirtualDom
import W3.Html.Attributes.Help as Attributes


type alias GlobalAttributes a =
    Attributes.Attribute
        { a
            | accesskey : Attributes.Supported
            , autocapitalize : Attributes.Supported
            , autofocus : Attributes.Supported
            , contenteditable : Attributes.Supported
            , dir : Attributes.Supported
            , draggable : Attributes.Supported
            , enterkeyhint : Attributes.Supported
            , hidden : Attributes.Supported
            , inputmode : Attributes.Supported
            , is : Attributes.Supported
            , itemid : Attributes.Supported
            , itemprop : Attributes.Supported
            , itemref : Attributes.Supported
            , itemscope : Attributes.Supported
            , itemtype : Attributes.Supported
            , lang : Attributes.Supported
            , nonce : Attributes.Supported
            , spellcheck : Attributes.Supported
            , style : Attributes.Supported
            , tabindex : Attributes.Supported
            , title : Attributes.Supported
            , translate : Attributes.Supported
            , data : Attributes.Supported
            , class : Attributes.Supported
            , id : Attributes.Supported
            , slot : Attributes.Supported
        }


type Node nodes msg
    = Node String (List (VirtualDom.Attribute msg)) (List (VirtualDom.Node msg))


type Supported
    = Supported


type alias FlowContent =
    { -- Flow Content
      address : Supported
    , blockquote : Supported
    , dialog : Supported
    , div : Supported
    , dl : Supported
    , fieldset : Supported
    , figure : Supported
    , footer : Supported
    , form : Supported
    , header : Supported
    , hr : Supported
    , main_ : Supported
    , menu : Supported
    , ol : Supported
    , p : Supported
    , pre : Supported
    , table : Supported
    , ul : Supported

    -- Phrasing Content
    , abbr : Supported
    , area : Supported
    , b : Supported
    , bdi : Supported
    , bdo : Supported
    , br : Supported
    , cite : Supported
    , code : Supported
    , data : Supported
    , datalist : Supported
    , del : Supported
    , dfn : Supported
    , em : Supported
    , i : Supported
    , ins : Supported
    , kbd : Supported
    , map : Supported
    , mark : Supported
    , meter : Supported
    , output : Supported
    , progress : Supported
    , q : Supported
    , ruby : Supported
    , ruby1 : Supported
    , ruby2 : Supported
    , ruby3 : Supported
    , s : Supported
    , samp : Supported
    , slot : Supported
    , small : Supported
    , span : Supported
    , strong : Supported
    , sub : Supported
    , sup : Supported
    , time : Supported
    , u : Supported
    , var : Supported
    , wbr : Supported

    -- Heading Content
    , h1 : Supported
    , h2 : Supported
    , h3 : Supported
    , h4 : Supported
    , h5 : Supported
    , h6 : Supported
    , hgroup : Supported

    -- Sectioning Content
    , article : Supported
    , aside : Supported
    , nav : Supported
    , section : Supported

    -- Embedded Content
    , canvas : Supported
    , math : Supported
    , picture : Supported
    , svg : Supported

    -- Interactive Content
    , a : Supported
    , audio : Supported
    , button : Supported
    , details : Supported
    , embed : Supported
    , iframe : Supported
    , img : Supported
    , input : Supported
    , label : Supported
    , object : Supported
    , select : Supported
    , textarea : Supported
    , video : Supported

    -- Metadata Content
    -- , link : Supported - Not normally allowed in Body element
    -- , meta : Supported - Will only really be allowed in the Head element
    -- , noscript : Supported - Never be used since elm's JS won't even run
    -- , script : Supported - Script-supporting element
    -- , template : Supported - Script-supporting element
    }


type alias HeadingContent =
    { h1 : Supported
    , h2 : Supported
    , h3 : Supported
    , h4 : Supported
    , h5 : Supported
    , h6 : Supported
    , hgroup : Supported
    }


type alias SectioningContent =
    { article : Supported
    , aside : Supported
    , nav : Supported
    , section : Supported
    }


type alias PhrasingContent =
    { a : Supported
    , abbr : Supported
    , area : Supported
    , audio : Supported
    , b : Supported
    , bdi : Supported
    , bdo : Supported
    , br : Supported
    , button : Supported
    , canvas : Supported
    , cite : Supported
    , code : Supported
    , data : Supported
    , datalist : Supported
    , del : Supported
    , dfn : Supported
    , em : Supported
    , embed : Supported
    , i : Supported
    , iframe : Supported
    , img : Supported
    , input : Supported
    , ins : Supported
    , kbd : Supported
    , label : Supported
    , link : Supported
    , map : Supported
    , mark : Supported
    , math : Supported
    , meta : Supported
    , meter : Supported
    , noscript : Supported
    , object : Supported
    , output : Supported
    , picture : Supported
    , progress : Supported
    , q : Supported
    , ruby : Supported
    , ruby1 : Supported
    , ruby2 : Supported
    , ruby3 : Supported
    , s : Supported
    , samp : Supported
    , script : Supported
    , select : Supported
    , slot : Supported
    , small : Supported
    , span : Supported
    , strong : Supported
    , sub : Supported
    , sup : Supported
    , svg : Supported
    , template : Supported
    , textarea : Supported
    , time : Supported
    , u : Supported
    , var : Supported
    , video : Supported
    , wbr : Supported
    }


type alias EmbeddedContent =
    { audio : Supported
    , canvas : Supported
    , embed : Supported
    , iframe : Supported
    , img : Supported
    , math : Supported
    , object : Supported
    , picture : Supported
    , svg : Supported
    , video : Supported
    }


type alias InteractiveContent =
    { a : Supported
    , audio : Supported
    , button : Supported
    , details : Supported
    , embed : Supported
    , iframe : Supported
    , img : Supported
    , input : Supported
    , label : Supported
    , object : Supported
    , select : Supported
    , textarea : Supported
    , video : Supported
    }


type alias MetadataContent =
    { base : Supported
    , link : Supported
    , meta : Supported
    , noscript : Supported
    , script : Supported
    , style : Supported
    , template : Supported
    , title : Supported
    }



{--SECTIONS https://html.spec.whatwg.org/multipage/sections.html --}


article : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | article : Supported } msg
article =
    node "article"


section : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | section : Supported } msg
section =
    node "section"


nav : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | nav : Supported } msg
nav =
    node "nav"


aside : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | aside : Supported } msg
aside =
    node "aside"


h1 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h1 : Supported } msg
h1 =
    node "h1"


h2 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h2 : Supported } msg
h2 =
    node "h2"


h3 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h3 : Supported } msg
h3 =
    node "h3"


h4 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h4 : Supported } msg
h4 =
    node "h4"


h5 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h5 : Supported } msg
h5 =
    node "h5"


h6 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h6 : Supported } msg
h6 =
    node "h6"


hgroup :
    List (GlobalAttributes {})
    ->
        List
            (Node
                { h1 : Supported
                , h2 : Supported
                , h3 : Supported
                , h4 : Supported
                , h5 : Supported
                , h6 : Supported
                }
                msg
            )
    -> Node { compatible | hgroup : Supported } msg
hgroup =
    node "hgroup"



{--Exclude header, footer descendant --}


header : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | header : Supported } msg
header =
    node "header"



{--Exclude header, footer descendant --}


footer : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | footer : Supported } msg
footer =
    node "footer"



{--Exclude heading content, sectioning content, header, footer, address descendant --}


address : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | address : Supported } msg
address =
    node "address"



{--GROUPING https://html.spec.whatwg.org/multipage/grouping-content.html --}


p : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | p : Supported } msg
p =
    node "p"


hr : List (GlobalAttributes {}) -> Node { compatible | hr : Supported } msg
hr attributes =
    node "hr" attributes []


pre : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | pre : Supported } msg
pre =
    node "pre"


blockquote :
    List (GlobalAttributes { cite : Attributes.Supported })
    -> List (Node FlowContent msg)
    -> Node { compatible | blockquote : Supported } msg
blockquote =
    node "blockquote"


ol :
    List
        (GlobalAttributes
            { reversed : Attributes.Supported
            , start : Attributes.Supported
            , type_ : Attributes.Supported
            }
        )
    -> List (Node { li : Supported } msg)
    -> Node { compatible | ol : Supported } msg
ol =
    node "ol"


ul : List (GlobalAttributes {}) -> List (Node { li : Supported } msg) -> Node { compatible | ul : Supported } msg
ul =
    node "ul"


menu : List (GlobalAttributes {}) -> List (Node { li : Supported } msg) -> Node { compatible | menu : Supported } msg
menu =
    node "menu"


li :
    List (GlobalAttributes { value : Attributes.Supported })
    -> List (Node FlowContent msg)
    -> Node { compatible | li : Supported } msg
li =
    node "li"


dl : List (GlobalAttributes {}) -> List (Node { dt : Supported, dd : Supported } msg) -> Node { compatible | dl : Supported } msg
dl =
    node "dl"


dl1 : List (GlobalAttributes {}) -> List (Node { dataDiv : Supported } msg) -> Node { compatible | dl : Supported } msg
dl1 =
    node "dl"



{--Exclude heading content, sectioning content, header, footer descendant --}


dt : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | dt : Supported } msg
dt =
    node "dt"


dd : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | dd : Supported } msg
dd =
    node "dd"


figure :
    List (GlobalAttributes {})
    -> List (Node FlowContent msg)
    -> Node { compatible | figure : Supported } msg
figure =
    node "figure"


figure1 :
    List (GlobalAttributes {})
    -> Node { figcaption : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | figure : Supported } msg
figure1 attributes figCaption nodes =
    Node "figure" (List.map toAttribute attributes) (toHtml figCaption :: List.map toHtml nodes)


figure2 :
    List (GlobalAttributes {})
    -> List (Node FlowContent msg)
    -> Node { figcaption : Supported } msg
    -> Node { compatible | figure : Supported } msg
figure2 attributes nodes figCaption =
    Node "figure" (List.map toAttribute attributes) (List.map toHtml nodes ++ [ toHtml figCaption ])


figcaption : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | figcaption : Supported } msg
figcaption =
    node "figcaption"


main_ : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | main_ : Supported } msg
main_ =
    node "main"


div : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | div : Supported } msg
div =
    node "div"


dataDiv : List (GlobalAttributes {}) -> List (Node { dt : Supported, dd : Supported } msg) -> Node { compatible | dataDiv : Supported } msg
dataDiv =
    node "div"



{--TEXT LEVEL https://html.spec.whatwg.org/multipage/text-level-semantics.html --}


a :
    List
        (GlobalAttributes
            { href : Attributes.Supported
            , target : Attributes.Supported
            , download : Attributes.Supported
            , ping : Attributes.Supported
            , rel : Attributes.Supported
            , hreflang : Attributes.Supported
            , type_ : Attributes.Supported
            , referrerpolicy : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | a : Supported } msg
a =
    node "a"


em : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | em : Supported } msg
em =
    node "em"


strong : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | strong : Supported } msg
strong =
    node "strong"


small : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | small : Supported } msg
small =
    node "small"


s : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | s : Supported } msg
s =
    node "s"


cite : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | cite : Supported } msg
cite =
    node "cite"


q :
    List (GlobalAttributes { cite : Attributes.Supported })
    -> List (Node PhrasingContent msg)
    -> Node { compatible | q : Supported } msg
q =
    node "q"



{--Exclude dfn descendant --}


dfn : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | dfn : Supported } msg
dfn =
    node "dfn"


abbr : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | abbr : Supported } msg
abbr =
    node "abbr"



{--Exclude ruby descendant --}


ruby : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | ruby : Supported } msg
ruby =
    node "ruby"


ruby1 : List (GlobalAttributes {}) -> Node { ruby : Supported } msg -> Node { compatible | ruby1 : Supported } msg
ruby1 attributes rubyChild =
    Node "ruby" (List.map toAttribute attributes) [ toHtml rubyChild ]


ruby2 : List (GlobalAttributes {}) -> List (Node { rt : Supported } msg) -> Node { compatible | ruby2 : Supported } msg
ruby2 =
    node "ruby"


ruby3 :
    List (GlobalAttributes {})
    -> Node { rp : Supported } msg
    -> List ( Node { rt : Supported } msg, Node { rp : Supported } msg )
    -> Node { compatible | ruby3 : Supported } msg
ruby3 attributes rpFirst rtrpTuples =
    Node "ruby" (List.map toAttribute attributes) (toHtml rpFirst :: List.foldl ruby3Help [] rtrpTuples)


ruby3Help :
    ( Node { rt : Supported } msg, Node { rp : Supported } msg )
    -> List (VirtualDom.Node msg)
    -> List (VirtualDom.Node msg)
ruby3Help tuple childrenSoFar =
    childrenSoFar ++ [ toHtml (Tuple.first tuple), toHtml (Tuple.second tuple) ]


rt : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | rt : Supported } msg
rt =
    node "rt"


rp : List (GlobalAttributes {}) -> String -> Node { compatible | rp : Supported } msg
rp attributes content =
    Node "rp" (List.map toAttribute attributes) [ VirtualDom.text content ]


data :
    List (GlobalAttributes { value : Attributes.Supported })
    -> List (Node PhrasingContent msg)
    -> Node { compatible | data : Supported } msg
data =
    node "data"


time :
    List (GlobalAttributes { datetime : Attributes.Supported })
    -> List (Node PhrasingContent msg)
    -> Node { compatible | time : Supported } msg
time =
    node "time"


timeText :
    List (GlobalAttributes { datetime : Attributes.Supported })
    -> String
    -> Node { compatible | time : Supported } msg
timeText attributes content =
    Node "time" (List.map toAttribute attributes) [ VirtualDom.text content ]


code : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | code : Supported } msg
code =
    node "code"


var : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | var : Supported } msg
var =
    node "var"


samp : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | samp : Supported } msg
samp =
    node "samp"


kbd : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | kbd : Supported } msg
kbd =
    node "kbd"


sub : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | sub : Supported } msg
sub =
    node "sub"


sup : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | sup : Supported } msg
sup =
    node "sup"


i : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | i : Supported } msg
i =
    node "i"


b : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | b : Supported } msg
b =
    node "b"


u : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | u : Supported } msg
u =
    node "u"


mark : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | mark : Supported } msg
mark =
    node "mark"


bdi : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | bdi : Supported } msg
bdi =
    node "bdi"


bdo : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | bdo : Supported } msg
bdo =
    node "bdo"


span : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | span : Supported } msg
span =
    node "span"


br : List (GlobalAttributes {}) -> Node { compatible | br : Supported } msg
br attributes =
    node "br" attributes []


wbr : List (GlobalAttributes {}) -> Node { compatible | wbr : Supported } msg
wbr attributes =
    node "wbr" attributes []



{--EDITS https://html.spec.whatwg.org/multipage/edits.html --}


ins :
    List
        (GlobalAttributes
            { cite : Attributes.Supported
            , datetime : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | ins : Supported } msg
ins =
    node "ins"


del :
    List
        (GlobalAttributes
            { cite : Attributes.Supported
            , datetime : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | del : Supported } msg
del =
    node "del"



{--EMBEDDED CONTENT https://html.spec.whatwg.org/multipage/embedded-content.html --}


picture :
    List (GlobalAttributes {})
    -> List (Node { source : Supported } msg)
    -> Node { img : Supported } msg
    -> Node { compatible | picture : Supported } msg
picture attributes sources image =
    Node "picture" (List.map toAttribute attributes) (List.map toHtml sources ++ [ toHtml image ])


source :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , type_ : Attributes.Supported
            , srcset : Attributes.Supported
            , sizes : Attributes.Supported
            , media : Attributes.Supported
            }
        )
    -> Node { compatible | source : Supported } msg
source attributes =
    node "source" attributes []


img :
    List
        (GlobalAttributes
            { alt : Attributes.Supported
            , src : Attributes.Supported
            , srcset : Attributes.Supported
            , sizes : Attributes.Supported
            , crossorigin : Attributes.Supported
            , usemap : Attributes.Supported
            , ismap : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            , referrerpolicy : Attributes.Supported
            , decoding : Attributes.Supported
            }
        )
    -> Node { compatible | img : Supported } msg
img attributes =
    node "img" attributes []



{--IFRAME EMBED https://html.spec.whatwg.org/multipage/iframe-embed-object.html --}


iframe :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , srcdoc : Attributes.Supported
            , name : Attributes.Supported
            , sandbox : Attributes.Supported
            , allow : Attributes.Supported
            , allowfullscreen : Attributes.Supported
            , allowpaymentrequest : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            , referrerpolicy : Attributes.Supported
            }
        )
    -> Node { compatible | iframe : Supported } msg
iframe attributes =
    node "iframe" attributes []


embed :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , type_ : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            }
        )
    -> Node { compatible | embed : Supported } msg
embed attributes =
    node "embed" attributes []


object :
    List
        (GlobalAttributes
            { data : Attributes.Supported
            , type_ : Attributes.Supported
            , name : Attributes.Supported
            , usemap : Attributes.Supported
            , form : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            }
        )
    -> List (Node { param : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | object : Supported } msg
object attributes params contents =
    Node "object" (List.map toAttribute attributes) (List.map toHtml params ++ List.map toHtml contents)


param :
    List
        (GlobalAttributes
            { name : Attributes.Supported
            , value : Attributes.Supported
            }
        )
    -> Node { compatible | param : Supported } msg
param attributes =
    node "param" attributes []



{--MEDIA https://html.spec.whatwg.org/multipage/media.html--}


video :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , crossorigin : Attributes.Supported
            , poster : Attributes.Supported
            , preload : Attributes.Supported
            , autoplay : Attributes.Supported
            , playsinline : Attributes.Supported
            , loop : Attributes.Supported
            , muted : Attributes.Supported
            , controls : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            }
        )
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | video : Supported } msg
video attributes tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toHtml tracks ++ List.map toHtml contents)


video1 :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , crossorigin : Attributes.Supported
            , poster : Attributes.Supported
            , preload : Attributes.Supported
            , autoplay : Attributes.Supported
            , playsinline : Attributes.Supported
            , loop : Attributes.Supported
            , muted : Attributes.Supported
            , controls : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            }
        )
    -> List (Node { source : Supported } msg)
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | video : Supported } msg
video1 attributes sources tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toHtml sources ++ List.map toHtml tracks ++ List.map toHtml contents)


audio :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , crossorigin : Attributes.Supported
            , preload : Attributes.Supported
            , autoplay : Attributes.Supported
            , loop : Attributes.Supported
            , muted : Attributes.Supported
            , controls : Attributes.Supported
            }
        )
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | audio : Supported } msg
audio attributes tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toHtml tracks ++ List.map toHtml contents)


audio1 :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , crossorigin : Attributes.Supported
            , preload : Attributes.Supported
            , autoplay : Attributes.Supported
            , loop : Attributes.Supported
            , muted : Attributes.Supported
            , controls : Attributes.Supported
            }
        )
    -> List (Node { source : Supported } msg)
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | audio : Supported } msg
audio1 attributes sources tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toHtml sources ++ List.map toHtml tracks ++ List.map toHtml contents)


track :
    List
        (GlobalAttributes
            { kind : Attributes.Supported
            , src : Attributes.Supported
            , srclang : Attributes.Supported
            , label : Attributes.Supported
            , default : Attributes.Supported
            }
        )
    -> Node { compatible | track : Supported } msg
track attributes =
    node "track" attributes []



{--MAPS https://html.spec.whatwg.org/multipage/image-maps.html--}


map :
    List (GlobalAttributes { name : Attributes.Supported })
    -> List (Node FlowContent msg)
    -> Node { compatible | map : Supported } msg
map =
    node "map"


area :
    List
        (GlobalAttributes
            { alt : Attributes.Supported
            , coords : Attributes.Supported
            , shape : Attributes.Supported
            , href : Attributes.Supported
            , target : Attributes.Supported
            , download : Attributes.Supported
            , ping : Attributes.Supported
            , rel : Attributes.Supported
            , referrerpolicy : Attributes.Supported
            }
        )
    -> Node { compatible | area : Supported } msg
area attributes =
    node "area" attributes []



{--TABULAR https://html.spec.whatwg.org/multipage/tables.html --}


type alias TableContents msg =
    { caption : Maybe (VirtualDom.Node msg)
    , colgroups : List (VirtualDom.Node msg)
    , thead : Maybe (VirtualDom.Node msg)
    , tfoot : Maybe (VirtualDom.Node msg)
    }


type Table msg
    = Table (List (GlobalAttributes {})) (TableContents msg)


table : List (GlobalAttributes {}) -> Table msg
table attributes =
    Table attributes (TableContents Nothing [] Nothing Nothing)


caption : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Table msg -> Table msg
caption attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | caption = Just (VirtualDom.node "caption" (List.map toAttribute attributes) (List.map toHtml contents))
        }


colgroup :
    List (GlobalAttributes { span : Attributes.Supported })
    -> List (Node { col : Supported } msg)
    -> Table msg
    -> Table msg
colgroup attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | colgroups = tableContents.colgroups ++ [ VirtualDom.node "colgroup" (List.map toAttribute attributes) (List.map toHtml contents) ]
        }


col : List (GlobalAttributes { span : Attributes.Supported }) -> Node { compatible | col : Supported } msg
col attributes =
    node "col" attributes []


thead : List (GlobalAttributes {}) -> List (Node { tr : Supported } msg) -> Table msg -> Table msg
thead attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | thead = Just (VirtualDom.node "thead" (List.map toAttribute attributes) (List.map toHtml contents))
        }


tfoot : List (GlobalAttributes {}) -> List (Node { tr : Supported } msg) -> Table msg -> Table msg
tfoot attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | tfoot = Just (VirtualDom.node "tfoot" (List.map toAttribute attributes) (List.map toHtml contents))
        }


tbody : List (GlobalAttributes {}) -> List (Node { tr : Supported } msg) -> Table msg -> Node { compatible | table : Supported } msg
tbody attributes rows (Table tableAttributes contents) =
    Node "table"
        (List.map toAttribute tableAttributes)
        (maybeVirutalNodeToList contents.caption
            ++ contents.colgroups
            ++ maybeVirutalNodeToList contents.thead
            ++ [ VirtualDom.node "tbody" (List.map toAttribute attributes) (List.map toHtml rows) ]
            ++ maybeVirutalNodeToList contents.tfoot
        )


trbody : List (Node { tr : Supported } msg) -> Table msg -> Node { compatible | table : Supported } msg
trbody rows (Table tableAttributes contents) =
    Node "table"
        (List.map toAttribute tableAttributes)
        (maybeVirutalNodeToList contents.caption
            ++ contents.colgroups
            ++ maybeVirutalNodeToList contents.thead
            ++ List.map toHtml rows
            ++ maybeVirutalNodeToList contents.tfoot
        )


tr : List (GlobalAttributes {}) -> List (Node { td : Supported, th : Supported } msg) -> Node { compatible | tr : Supported } msg
tr =
    node "tr"


td :
    List
        (GlobalAttributes
            { colspan : Attributes.Supported
            , rowspan : Attributes.Supported
            , headers : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | td : Supported } msg
td =
    node "td"



{--Excluding header, footer, sectioning content, heading content--}


th :
    List
        (GlobalAttributes
            { colspan : Attributes.Supported
            , rowspan : Attributes.Supported
            , headers : Attributes.Supported
            , scope : Attributes.Supported
            , abbr : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | th : Supported } msg
th =
    node "th"



{--FORMS https://html.spec.whatwg.org/multipage/forms.html --}
{--Excluding form--}


form :
    List
        (GlobalAttributes
            { acceptcharset : Attributes.Supported
            , action : Attributes.Supported
            , autocomplete : Attributes.Supported
            , enctype : Attributes.Supported
            , method : Attributes.Supported
            , name : Attributes.Supported
            , novalidate : Attributes.Supported
            , target : Attributes.Supported
            , rel : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | form : Supported } msg
form =
    node "form"


label :
    List (GlobalAttributes { for : Attributes.Supported })
    -> List (Node PhrasingContent msg)
    -> Node { compatible | label : Supported } msg
label =
    node "label"



{--INPUTS https://html.spec.whatwg.org/multipage/input.html --}


input :
    List
        (GlobalAttributes
            { accept : Attributes.Supported
            , alt : Attributes.Supported
            , autocomplete : Attributes.Supported
            , checked : Attributes.Supported
            , dirname : Attributes.Supported
            , disabled : Attributes.Supported
            , form : Attributes.Supported
            , formaction : Attributes.Supported
            , formenctype : Attributes.Supported
            , formmethod : Attributes.Supported
            , formnovalidate : Attributes.Supported
            , formtarget : Attributes.Supported
            , height : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , maxlength : Attributes.Supported
            , min : Attributes.Supported
            , minlength : Attributes.Supported
            , multiple : Attributes.Supported
            , name : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            , src : Attributes.Supported
            , step : Attributes.Supported
            , type_ : Attributes.Supported
            , value : Attributes.Supported
            , width : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
input attributes =
    node "input" attributes []


hidden : List (GlobalAttributes { autocomplete : Attributes.Supported }) -> Node { compatible | input : Supported } msg
hidden attributes =
    node "input" (Attributes.Attribute "type" "hidden" :: attributes) []


textInput :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , dirname : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
textInput attributes =
    node "input" (Attributes.Attribute "type" "text" :: attributes) []


search :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , dirname : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
search attributes =
    node "input" (Attributes.Attribute "type" "search" :: attributes) []


url :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
url attributes =
    node "input" (Attributes.Attribute "type" "url" :: attributes) []


tel :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
tel attributes =
    node "input" (Attributes.Attribute "type" "tel" :: attributes) []


email :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , multiple : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
email attributes =
    node "input" (Attributes.Attribute "type" "email" :: attributes) []


password :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
password attributes =
    node "input" (Attributes.Attribute "type" "password" :: attributes) []


date :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
date attributes =
    node "input" (Attributes.Attribute "type" "date" :: attributes) []


month :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
month attributes =
    node "input" (Attributes.Attribute "type" "month" :: attributes) []


week :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
week attributes =
    node "input" (Attributes.Attribute "type" "week" :: attributes) []


timeInput :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
timeInput attributes =
    node "input" (Attributes.Attribute "type" "time" :: attributes) []


datetime :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
datetime attributes =
    node "input" (Attributes.Attribute "type" "datetime-local" :: attributes) []


number :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
number attributes =
    node "input" (Attributes.Attribute "type" "number" :: attributes) []


range :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
range attributes =
    node "input" (Attributes.Attribute "type" "range" :: attributes) []


color :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
color attributes =
    node "input" (Attributes.Attribute "type" "color" :: attributes) []


checkbox :
    List
        (GlobalAttributes
            { checked : Attributes.Supported
            , required : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
checkbox attributes =
    node "input" (Attributes.Attribute "type" "checkbox" :: attributes) []


radio :
    List
        (GlobalAttributes
            { checked : Attributes.Supported
            , required : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
radio attributes =
    node "input" (Attributes.Attribute "type" "radio" :: attributes) []


file :
    List
        (GlobalAttributes
            { accept : Attributes.Supported
            , multiple : Attributes.Supported
            , required : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
file attributes =
    node "input" (Attributes.Attribute "type" "file" :: attributes) []


submit :
    List
        (GlobalAttributes
            { formaction : Attributes.Supported
            , formenctype : Attributes.Supported
            , formmethod : Attributes.Supported
            , formnovalidate : Attributes.Supported
            , formtarget : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
submit attributes =
    node "input" (Attributes.Attribute "type" "submit" :: attributes) []


imageButton :
    List
        (GlobalAttributes
            { alt : Attributes.Supported
            , formaction : Attributes.Supported
            , formenctype : Attributes.Supported
            , formmethod : Attributes.Supported
            , formnovalidate : Attributes.Supported
            , formtarget : Attributes.Supported
            , height : Attributes.Supported
            , src : Attributes.Supported
            , width : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
imageButton attributes =
    node "input" (Attributes.Attribute "type" "image" :: attributes) []


resetButton : List (GlobalAttributes {}) -> Node { compatible | input : Supported } msg
resetButton attributes =
    node "input" (Attributes.Attribute "type" "reset" :: attributes) []


buttonInput : List (GlobalAttributes {}) -> Node { compatible | input : Supported } msg
buttonInput attributes =
    node "input" (Attributes.Attribute "type" "button" :: attributes) []



{--FORM ELEMENTS https://html.spec.whatwg.org/multipage/form-elements.html --}


button :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , form : Attributes.Supported
            , formaction : Attributes.Supported
            , formenctype : Attributes.Supported
            , formmethod : Attributes.Supported
            , formnovalidate : Attributes.Supported
            , formtarget : Attributes.Supported
            , name : Attributes.Supported
            , type_ : Attributes.Supported
            , value : Attributes.Supported
            }
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | button : Supported } msg
button =
    node "button"


select :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , disabled : Attributes.Supported
            , form : Attributes.Supported
            , multiple : Attributes.Supported
            , name : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> List (Node { option : Supported, optgroup : Supported } msg)
    -> Node { compatible | select : Supported } msg
select =
    node "select"


optgroup :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , label : Attributes.Supported
            }
        )
    -> List (Node { option : Supported } msg)
    -> Node { compatible | optgroup : Supported } msg
optgroup =
    node "optgroup"


datalist : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | datalist : Supported } msg
datalist =
    node "datalist"


datalist1 : List (GlobalAttributes {}) -> List (Node { option : Supported } msg) -> Node { compatible | datalist : Supported } msg
datalist1 =
    node "datalist"


option :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , selected : Attributes.Supported
            , value : Attributes.Supported
            }
        )
    -> String
    -> Node { compatible | option : Supported } msg
option attributes contents =
    Node "option" (List.map toAttribute attributes) [ VirtualDom.text contents ]


optionLabelled :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , selected : Attributes.Supported
            , value : Attributes.Supported
            }
        )
    -> String
    -> Node { compatible | option : Supported } msg
optionLabelled attributes contents =
    Node "option" (VirtualDom.attribute "label" contents :: List.map toAttribute attributes) []


textarea :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , cols : Attributes.Supported
            , dirname : Attributes.Supported
            , disabled : Attributes.Supported
            , form : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , name : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , rows : Attributes.Supported
            , wrap : Attributes.Supported
            }
        )
    -> String
    -> Node { compatible | textarea : Supported } msg
textarea attributes contents =
    Node "textarea" (List.map toAttribute attributes) [ VirtualDom.text contents ]


output :
    List
        (GlobalAttributes
            { for : Attributes.Supported
            , form : Attributes.Supported
            , name : Attributes.Supported
            }
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | output : Supported } msg
output =
    node "output"


progress :
    List
        (GlobalAttributes
            { value : Attributes.Supported
            , max : Attributes.Supported
            }
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | progress : Supported } msg
progress =
    node "progress"


meter :
    List
        (GlobalAttributes
            { value : Attributes.Supported
            , min : Attributes.Supported
            , max : Attributes.Supported
            , low : Attributes.Supported
            , high : Attributes.Supported
            , optimum : Attributes.Supported
            }
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | meter : Supported } msg
meter =
    node "meter"


fieldset :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , form : Attributes.Supported
            , name : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | fieldset : Supported } msg
fieldset =
    node "fieldset"


fieldset1 :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , form : Attributes.Supported
            , name : Attributes.Supported
            }
        )
    -> Node { legend : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | fieldset : Supported } msg
fieldset1 attributes legendNode contents =
    Node "fieldset" (List.map toAttribute attributes) (toHtml legendNode :: List.map toHtml contents)


legend : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | legend : Supported } msg
legend =
    node "legend"



{--INTERACTIVE https://html.spec.whatwg.org/multipage/interactive-elements.html --}


details :
    List (GlobalAttributes { open : Attributes.Supported })
    -> Node { summary : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | details : Supported } msg
details attributes summaryNode contents =
    Node "details" (List.map toAttribute attributes) (toHtml summaryNode :: List.map toHtml contents)


summary : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | summary : Supported } msg
summary =
    node "summary"


summaryHeader : List (GlobalAttributes {}) -> Node HeadingContent msg -> Node { compatible | summary : Supported } msg
summaryHeader attributes headingNode =
    Node "summary" (List.map toAttribute attributes) [ toHtml headingNode ]


dialog :
    List (GlobalAttributes { open : Attributes.Supported })
    -> List (Node FlowContent msg)
    -> Node { compatible | dialog : Supported } msg
dialog =
    node "dialog"


maybeVirutalNodeToList : Maybe (VirtualDom.Node msg) -> List (VirtualDom.Node msg)
maybeVirutalNodeToList maybeNode =
    case maybeNode of
        Just n ->
            [ n ]

        Nothing ->
            []


maybeNodeToList : Maybe (Node a msg) -> List (VirtualDom.Node msg)
maybeNodeToList maybeNode =
    case maybeNode of
        Just n ->
            [ toHtml n ]

        Nothing ->
            []


node : String -> List (Attributes.Attribute a) -> List (Node b msg) -> Node c msg
node tagName attributes nodes =
    Node tagName (List.map toAttribute attributes) (List.map toHtml nodes)


toAttribute : Attributes.Attribute a -> VirtualDom.Attribute msg
toAttribute (Attributes.Attribute name value) =
    VirtualDom.attribute name value


toHtml : Node a msg -> VirtualDom.Node msg
toHtml (Node tagName attributes contents) =
    VirtualDom.node tagName attributes contents
