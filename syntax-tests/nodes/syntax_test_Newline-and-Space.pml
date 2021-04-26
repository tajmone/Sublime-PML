! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    Line 1.[nl]Line2.
!          ^^^^         entity.name.tag.newline.pml
!          ^^^          punctuation.definition.newline.begin.pml
!             ^         punctuation.definition.newline.end.pml


[- SPACES BEFORE CLOSING BRACKET ALLOWED -]

    Line 1.[nl ]Line2.
!          ^^^^^        entity.name.tag.newline.pml
!          ^^^          punctuation.definition.newline.begin.pml
!              ^        punctuation.definition.newline.end.pml


[- CLOSING BRACKET CAN BE ON DIFFERENT LINE -]

    Line 1.[nl
!          ^^^      entity.name.tag.newline.pml
!          ^^^      punctuation.definition.newline.begin.pml
    ]Line2.
!   ^               entity.name.tag.newline.pml
!   ^               punctuation.definition.newline.end.pml


[- NOTHING BUT SPACES ALLOWED INSIDE NODE -]

    L1[nl something]L2
!     ^^^^^^^^^^^^^^      entity.name.tag.newline.pml
!         ^^^^^^^^^       invalid.illegal.pml

[- BUT COMMENTS ARE ALLOWED -]

    L1[nl[- comment -]]L2
!     ^^^^^^^^^^^^^^^^^    entity.name.tag.newline.pml
!     ^^^                  punctuation.definition.newline.begin.pml
!                     ^    punctuation.definition.newline.end.pml
!        ^^^^^^^^^^^^^     comment.block.pml
