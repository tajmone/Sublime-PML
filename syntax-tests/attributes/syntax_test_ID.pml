! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = ID Attribute

    [ch id = identifier ]
!       ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!       ^^                  entity.other.attribute-name.id
!          ^                keyword.operator.assignment
!            ^^^^^^^^^^     entity.other.attribute-name.id meta.toc-list.id.pml

    [ch id = custom_id
!       ^^^^^^^^^^^^^^   meta.annotation.node-attributes.chapter
!       ^^               entity.other.attribute-name.id
!          ^             keyword.operator.assignment
!            ^^^^^^^^^   entity.other.attribute-name.id meta.toc-list.id.pml
    ]
!   ^ punctuation.definition.section.block.chapter.end

[------------------------
    INCOMPLETE ATTRIBUTES
    ----------------------]

    [ch id = ]
!       ^^^^^    meta.annotation.node-attributes.chapter
!       ^^       entity.other.attribute-name.id
!          ^     keyword.operator.assignment
!           ^   -entity.other.attribute-name.id

[-----------------------
    MALFORMED ATTRIBUTES
    ---------------------]

    [ch id = xml-style.ID ]
!       ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!       ^^                    entity.other.attribute-name.id
!          ^                  keyword.operator.assignment
!            ^^^^^^^^^^^^     invalid.illegal.attribute-name.id


]
!<- keyword.declaration.document.end
