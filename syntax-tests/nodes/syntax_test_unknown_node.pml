! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [whatever ]
!   ^^^^^^^^^     entity.name.tag.unknown.begin
!             ^   entity.name.tag.unknown.end

    [unknown
!   ^^^^^^^^   entity.name.tag.unknown.begin
    ]
!   ^          entity.name.tag.unknown.end

    [unknown
!   ^^^^^^^^   entity.name.tag.unknown.begin

    Lorem ipsum dolor sit amet.

    (just text, not attributes)
!    ^^^^^^^^^^^^^^^^^^^^^^^^^   -meta.group.node-attributes.unknown
!   ^                            -punctuation.section.group.begin
!                             ^  -punctuation.section.group.end

    ]
!   ^          entity.name.tag.unknown.end

