! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    Line 1.[sp]Line2.
!          ^^^^         entity.name.tag.nbsp
!          ^^^          entity.name.tag.inline-node.nbsp.begin
!             ^         entity.name.tag.inline-node.nbsp.end


[- SPACES BEFORE CLOSING BRACKET ALLOWED -]

    Line 1.[sp ]Line2.
!          ^^^^^        entity.name.tag.nbsp
!          ^^^          entity.name.tag.inline-node.nbsp.begin
!              ^        entity.name.tag.inline-node.nbsp.end


[- CLOSING BRACKET CAN BE ON DIFFERENT LINE -]

    Line 1.[sp
!          ^^^      entity.name.tag.nbsp
!          ^^^      entity.name.tag.inline-node.nbsp.begin
    ]Line2.
!   ^               entity.name.tag.nbsp
!   ^               entity.name.tag.inline-node.nbsp.end


[- NOTHING BUT SPACES ALLOWED INSIDE NODE -]

    L1[sp something]L2
!     ^^^^^^^^^^^^^^      entity.name.tag.nbsp
!         ^^^^^^^^^       invalid.illegal

    L1[sp <<param>>]L2
!     ^^^^^^^^^^^^^^      entity.name.tag.nbsp
!         ^^^^^^^^^       invalid.illegal
!         ^^^^^^^^^      -meta.function-call

[- BUT COMMENTS ARE ALLOWED -]

    L1[sp[- comment -]]L2
!     ^^^^^^^^^^^^^^^^^    entity.name.tag.nbsp
!     ^^^                  entity.name.tag.inline-node.nbsp.begin
!                     ^    entity.name.tag.inline-node.nbsp.end
!        ^^^^^^^^^^^^^     comment.block
