! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [whatever ]
!   ^^^^^^^^^     entity.name.tag.other.begin
!             ^   entity.name.tag.other.end

    [unknown
!   ^^^^^^^^   entity.name.tag.other.begin
    ]
!   ^          entity.name.tag.other.end

