! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title ID Attribute]

WIP: This file is excluded from tests because it's not ready.

Support of the ID attribute is included node by node.
As of 2022/08/21 (PML 3.0.0) Sublime PML supports IDs
for the following nodes:

    \[ch
    \[title
    \[quote
    \[html
    \[code

Currently the test files for those nodes cover ID testing,
especially the \[doc \[tile file: "syntax_test_DocumentTitle.pml"


    [ch (id = identifier) ]
!        ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!        ^^                  entity.other.attribute-name.id
!           ^                keyword.operator.assignment
!             ^^^^^^^^^^     string.unquoted.id meta.toc-list.id.pml

    [ch (id = custom_id)
!        ^^^^^^^^^^^^^^   meta.annotation.node-attributes.chapter
!        ^^               entity.other.attribute-name.id
!           ^             keyword.operator.assignment
!             ^^^^^^^^^   string.unquoted.id meta.toc-list.id.pml
    ]
!   ^ entity.name.tag.block-node.chapter.end

[------------------------
    INCOMPLETE ATTRIBUTES
    ----------------------]

    [ch (id = )]
!        ^^^^^    meta.annotation.node-attributes.chapter
!        ^^       entity.other.attribute-name.id
!           ^     keyword.operator.assignment
!            ^   -string.unquoted.id

]
!<- entity.name.tag.block-node.document.end

[- PENDING TASKS:

    * [ ] Convert title attribute to '[title' node.

-]
