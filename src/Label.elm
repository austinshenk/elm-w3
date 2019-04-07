module Label exposing (ariaLabel, ariaLabelledBy, custom, text, textAppended, textPreppended)

import Label.Type exposing (Label(..))
import Wai.IdReference exposing (IdReference)


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
