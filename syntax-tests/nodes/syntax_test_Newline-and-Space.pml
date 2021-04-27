! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    Line 1.[nl]Line2.
!          ^^^^         entity.name.tag.newline
!          ^^^          punctuation.definition.newline.begin
!             ^         punctuation.definition.newline.end


[- SPACES BEFORE CLOSING BRACKET ALLOWED -]

    Line 1.[nl ]Line2.
!          ^^^^^        entity.name.tag.newline
!          ^^^          punctuation.definition.newline.begin
!              ^        punctuation.definition.newline.end


[- CLOSING BRACKET CAN BE ON DIFFERENT LINE -]

    Line 1.[nl
!          ^^^      entity.name.tag.newline
!          ^^^      punctuation.definition.newline.begin
    ]Line2.
!   ^               entity.name.tag.newline
!   ^               punctuation.definition.newline.end


[- NOTHING BUT SPACES ALLOWED INSIDE NODE -]

    L1[nl something]L2
!     ^^^^^^^^^^^^^^      entity.name.tag.newline
!         ^^^^^^^^^       invalid.illegal

    L1[nl <<param>>]L2
!     ^^^^^^^^^^^^^^      entity.name.tag.newline
!         ^^^^^^^^^       invalid.illegal
!         ^^^^^^^^^      -meta.function-call

[- BUT COMMENTS ARE ALLOWED -]

    L1[nl[- comment -]]L2
!     ^^^^^^^^^^^^^^^^^    entity.name.tag.newline
!     ^^^                  punctuation.definition.newline.begin
!                     ^    punctuation.definition.newline.end
!        ^^^^^^^^^^^^^     comment.block
