module Wai.Label exposing (ariaLabel, ariaLabelledBy, custom, text, textAppended, textPreppended)

import Wai.IdReference exposing (IdReference)
import Wai.Label.Type exposing (Label(..))


custom : Label
custom =
    Custom


text : String -> Label
text =
    textAppended


textPreppended : String -> Label
textPreppended =
    Text False


textAppended : String -> Label
textAppended =
    Text True


ariaLabel : String -> Label
ariaLabel =
    AriaLabel


ariaLabelledBy : List IdReference -> Label
ariaLabelledBy =
    AriaLabelledBy
