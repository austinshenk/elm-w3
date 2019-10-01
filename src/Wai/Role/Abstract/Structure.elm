module Wai.Role.Abstract.Structure exposing (Attribute, RoleAttribute)

import Wai.Role.Abstract.Section as Section
import Wai.Role.Abstract.SectionHead as SectionHead
import Wai.Role.Application as Application
import Wai.Role.Document as Document
import Wai.Role.Help as Wai
import Wai.Role.Presentation as Presentation
import Wai.Role.RowGroup as RowGroup
import Wai.Role.Separator as Separator


type alias RoleAttribute a =
    { a
        | structure : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Application.Attribute (Document.Attribute (Presentation.Attribute (RowGroup.Attribute (Section.Attribute (SectionHead.Attribute (Separator.Attribute a)))))))
