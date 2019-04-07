module Wai.Token exposing (AutoComplete(..), Current(..), DropEffect(..), HasPopup(..), Invalid(..), Live(..), Orientation(..), Relevant(..), Sort(..), Type, listToString, toString, toToken)

{- https://www.w3.org/TR/wai-aria-1.1/#typemapping -}


type AutoComplete
    = AutoComplete Type


type Current
    = Current Type


type DropEffect
    = DropEffect Type


type HasPopup
    = HasPopup Type


type Invalid
    = Invalid Type


type Live
    = Live Type


type Orientation
    = Orientation Type


type Relevant
    = Relevant Type


type Sort
    = Sort Type


type Type
    = Token String


toToken : String -> Type
toToken =
    Token


listToString : List Type -> String
listToString tokens =
    tokens
        |> List.map toString
        |> String.join " "


toString : Type -> String
toString (Token value) =
    value
