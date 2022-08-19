! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    Line 1.[sp]Line2.
!          ^^^^         meta.inline-node.nbsp.pml
!          ^^^          entity.name.tag.inline-node.nbsp.begin
!             ^         entity.name.tag.inline-node.nbsp.end


[- SPACES BEFORE CLOSING BRACKET ALLOWED -]

    Line 1.[sp ]Line2.
!          ^^^^^        meta.inline-node.nbsp.pml
!          ^^^          entity.name.tag.inline-node.nbsp.begin
!              ^        entity.name.tag.inline-node.nbsp.end


[- CLOSING BRACKET CAN BE ON DIFFERENT LINE -]

    Line 1.[sp
!          ^^^      meta.inline-node.nbsp.pml
!          ^^^      entity.name.tag.inline-node.nbsp.begin
    ]Line2.
!   ^               meta.inline-node.nbsp.pml
!   ^               entity.name.tag.inline-node.nbsp.end


[- NOTHING BUT SPACES ALLOWED INSIDE NODE -]

    L1[sp something]L2
!     ^^^^^^^^^^^^^^      meta.inline-node.nbsp.pml
!         ^^^^^^^^^       invalid.illegal

[- @FIXME: Test new PML 2.0.0 parameter inside -]
    L1[sp <<param>>]L2
!     ^^^^^^^^^^^^^^      meta.inline-node.nbsp.pml
!         ^^^^^^^^^       invalid.illegal
!         ^^^^^^^^^      -meta.function-call

[- BUT COMMENTS ARE ALLOWED -]

    L1[sp[- comment -]]L2
!     ^^^^^^^^^^^^^^^^^    meta.inline-node.nbsp.pml
!     ^^^                  entity.name.tag.inline-node.nbsp.begin
!                     ^    entity.name.tag.inline-node.nbsp.end
!        ^^^^^^^^^^^^^     comment.block
