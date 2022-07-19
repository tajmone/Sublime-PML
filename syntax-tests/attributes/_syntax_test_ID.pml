! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = ID Attribute

    [ch id = identifier ]
!       ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!       ^^                  entity.other.attribute-name.id
!          ^                keyword.operator.assignment
!            ^^^^^^^^^^     string.unquoted.id meta.toc-list.id.pml

    [ch id = custom_id
!       ^^^^^^^^^^^^^^   meta.annotation.node-attributes.chapter
!       ^^               entity.other.attribute-name.id
!          ^             keyword.operator.assignment
!            ^^^^^^^^^   string.unquoted.id meta.toc-list.id.pml
    ]
!   ^ entity.name.tag.block-node.section.end

    [ch id = myId title="Hello"
!       ^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.chapter
!       ^^                       entity.other.attribute-name.id
!                 ^^^^^         -entity.other.attribute-name.id
!                 ^^^^^          entity.other.attribute-name.title
    ]
!   ^ entity.name.tag.block-node.section.end

[------------------------
    INCOMPLETE ATTRIBUTES
    ----------------------]

    [ch id = ]
!       ^^^^^    meta.annotation.node-attributes.chapter
!       ^^       entity.other.attribute-name.id
!          ^     keyword.operator.assignment
!           ^   -string.unquoted.id

[-----------------------
    MALFORMED ATTRIBUTES
    ---------------------]

    [ch id = xml-style.ID ]
!       ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!       ^^                    entity.other.attribute-name.id
!          ^                  keyword.operator.assignment
!            ^^^^^^^^^^^^     invalid.illegal.id.pml


]
!<- entity.name.tag.block-node.document.end

[- PENDING TASKS:

    * [ ] Convert title attribute to '[title' node.

-]
