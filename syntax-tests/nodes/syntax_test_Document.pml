! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

[-  ******************
    Titleless Document
    ****************** -]

    [doc ]
!   ^^^^     entity.name.tag.block-node.document.begin
!        ^   entity.name.tag.block-node.document.end

    [doc ( ) ]
!   ^^^^         entity.name.tag.block-node.document.begin
!            ^   entity.name.tag.block-node.document.end
!        ^       punctuation.section.group.begin
!         ^      meta.annotation.node-attributes.document
!          ^     punctuation.section.group.end

[-  *******************
    Document Attributes
    ******************* -]

    [doc ( ) ]
!        ^       punctuation.section.group.begin
!        ^^^     meta.annotation.node-attributes.document
!          ^     punctuation.section.group.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [doc ( id = quote666 ) ]
!        ^                     punctuation.section.group.begin
!        ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.document
!                        ^     punctuation.section.group.end
!          ^^                  entity.other.attribute-name.id
!             ^                keyword.operator.assignment
!               ^^^^^^^^       string.unquoted.id
!               ^^^^^^^^       meta.toc-list.id
!                          ^   entity.name.tag.block-node.document.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [doc ( id = $$$$$$$$ ) ]
!        ^                     punctuation.section.group.begin
!        ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.document
!                        ^     punctuation.section.group.end
!          ^^                  entity.other.attribute-name.id
!             ^                keyword.operator.assignment
!               ^^^^^^^^       invalid.illegal.id
!                          ^   entity.name.tag.block-node.document.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [doc (html_style = "color:red;")]
!        ^^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.document
!         ^^^^^^^^^^                    entity.other.attribute-name.html
!                    ^                  keyword.operator.assignment
!                      ^^^^^^^^^^^^     string.quoted.double
!                                  ^^^ -string.quoted.double
!                      ^                punctuation.definition.string.begin
!                                 ^     punctuation.definition.string.end

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [doc (html_style = color:red )]
!        ^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.document
!                                ^    punctuation.section.group.end
!         ^^^^^^^^^^                  entity.other.attribute-name.html
!                    ^                keyword.operator.assignment
!                      ^^^^^^^^^      string.unquoted
!                               ^^^  -string.unquoted

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [doc (html_style = ) ]
!        ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.document
!                      ^     punctuation.section.group.end
!         ^^^^^^^^^^         entity.other.attribute-name.html
!                    ^       keyword.operator.assignment
!                     ^^^^  -string
!                       ^^   meta.block.document


[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

[doc ( xyzzy = zip ) ]
!    ^                   punctuation.section.group.begin
!     ^^^^^^^^^^^^^      meta.annotation.node-attributes.document
!                  ^     punctuation.section.group.end
!                    ^   entity.name.tag.block-node.document.end
!      ^^^^^             entity.other.attribute-name.unknown
!            ^           keyword.operator.assignment

[doc ( xyzzy = zip ) [title Something]]
!      ^^^^^                              entity.other.attribute-name.unknown
!            ^                            keyword.operator.assignment
!                                    ^    entity.name.tag.block-node.title.end
!                                     ^   entity.name.tag.block-node.document.end
