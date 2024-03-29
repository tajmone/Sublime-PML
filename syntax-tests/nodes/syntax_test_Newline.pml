! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    Line 1.[nl]Line2.
!          ^^^^         meta.inline-node.newline
!          ^^^          entity.name.tag.inline-node.newline.begin
!             ^         entity.name.tag.inline-node.newline.end


[- SPACES BEFORE CLOSING BRACKET ALLOWED -]

    Line 1.[nl ]Line2.
!          ^^^^^        meta.inline-node.newline
!          ^^^          entity.name.tag.inline-node.newline.begin
!              ^        entity.name.tag.inline-node.newline.end


[- CLOSING BRACKET CAN BE ON DIFFERENT LINE -]

    Line 1.[nl
!          ^^^      meta.inline-node.newline
!          ^^^      entity.name.tag.inline-node.newline.begin
    ]Line2.
!   ^               meta.inline-node.newline
!   ^               entity.name.tag.inline-node.newline.end


[- NOTHING BUT SPACES ALLOWED INSIDE NODE -]

    L1[nl something]L2
!     ^^^^^^^^^^^^^^      meta.inline-node.newline
!         ^^^^^^^^^       invalid.illegal

    L1[nl [!get param]]L2
!     ^^^^^^^^^^^^^^^^^      meta.inline-node.newline
!         ^^^^^^^^^^^^       invalid.illegal
!         ^^^^^^^^^^^^      -meta.function-call

[- BUT COMMENTS ARE ALLOWED -]

    L1[nl[- comment -]]L2
!     ^^^^^^^^^^^^^^^^^    meta.inline-node.newline
!     ^^^                  entity.name.tag.inline-node.newline.begin
!                     ^    entity.name.tag.inline-node.newline.end
!        ^^^^^^^^^^^^^     comment.block
