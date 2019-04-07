module Wai.IdReference exposing (IdReference, listToString, toString)

{- https://www.w3.org/TR/wai-aria-1.1/#typemapping -}


type alias IdReference =
    String


listToString : List IdReference -> String
listToString idReferences =
    idReferences
        |> List.map toString
        |> String.join " "


toString : IdReference -> String
toString idReference =
    if String.isEmpty idReference || String.contains " " idReference then
        ""

    else
        idReference
