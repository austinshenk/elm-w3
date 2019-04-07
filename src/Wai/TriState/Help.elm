module Wai.TriState.Help exposing (TriState(..), toString)


type TriState
    = TriState String


toString : TriState -> String
toString (TriState value) =
    value
