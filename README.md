# W3

This package exposes modules that try to follow W3's guideline for HTML and Accessibility standards. It will not make your code accessible out of the box, but it gives you better tools to make that goal possible.

## HTML

Elements have a compile time guarantee that the given attributes and contents are actually supported and allowed to be used for a given element.

For example, the `Html.p` element has a signature of 

```elm
p : List (GlobalAttributes {} msg) -> List (Node PhrasingContent msg) -> Node { compatible | p : Html.Supported } msg
```

This means the element supports all the attributes defined by the `GlobalAttributes` Type and supports only children that are listed in the `PhrasingContent` Type.

Correct Use

```elm
Html.p [] [Html.b [] [Html.text "hello"]]
```

Incorrect Use

```elm
Html.p [] [Html.div [] [Html.text "hello"]]
```

### Integrate with Elm's HTML or Browser package

This package's Html module uses a separate data structure for elements so we have to convert that to a proper VirtualDom structure before using it with either the `elm/html` package or the `elm/virtual-dom` package. For that we just simply pass the root Html element to `Html.toNode`. This converts only the current node to a Virtual DOM node. We don't have to convert the children since we do that as we build the DOM structure so there is not a huge penalty for calling the converter function.

## Aria

ARIA is broken up into its Role definitions inside the `Aria` module and their supported attributes in the appropriately named submodule, `Aria.Attributes`. Similar to HTML, each role only supports the use of certain attributes and this also guaranteed to be accurate at compile time.

The following are 2 cases of using the `Aria` module with and without the included `Html` module.

### Included

In order to integrate Aria with this package's HTML, we use Role functions to essentially replace an HTML element's attribute list. This works because the Role functions return a List of Attributes. We still have the compile-time guarantee the the HTML attributes are supported for that element and we get the same guarantee for the Role respectively.

```elm
Html.section 
    (Aria.alert [Aria.Attribute.expanded (Just True)] []) 
    [] 
|> Html.toNode
```

### Standalone

```elm
Aria.alert [Aria.Attribute.expanded (Just True)] [] 
|> Html.toAttributes
```

## Unsupported features

There are some things left out intentionally that either can't be supported by elm in general or things that might be added in the future that should be supported by this package. This is why there are escape hatches in most of the modules for defining custom elements and attributes. These should be used sparingly as it does require understanding the Type structure and could break the guarantee this package has.