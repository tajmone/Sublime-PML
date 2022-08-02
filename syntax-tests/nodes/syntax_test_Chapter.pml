! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Fundamental Nodes: Chapter]

[-  ******************
    Titleless Document
    ****************** -]

    [ch ]
!   ^^^     entity.name.tag.block-node.chapter.begin
!       ^   entity.name.tag.block-node.chapter.end

    [ch ( ) ]
!   ^^^         entity.name.tag.block-node.chapter.begin
!           ^   entity.name.tag.block-node.chapter.end
!       ^       punctuation.section.group.begin
!        ^      meta.annotation.node-attributes.chapter
!         ^     punctuation.section.group.end


[-  ******************
    Chapter Attributes
    ****************** -]

    [ch ( ) ]
!       ^       punctuation.section.group.begin
!       ^^^     meta.annotation.node-attributes.chapter
!         ^     punctuation.section.group.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [ch ( id = quote666 ) ]
!       ^                     punctuation.section.group.begin
!       ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!                       ^     punctuation.section.group.end
!         ^^                  entity.other.attribute-name.id
!            ^                keyword.operator.assignment
!              ^^^^^^^^       string.unquoted.id
!              ^^^^^^^^       meta.toc-list.id
!                         ^   entity.name.tag.block-node.chapter.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [ch ( id = $$$$$$$$ ) ]
!       ^                     punctuation.section.group.begin
!       ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!                       ^     punctuation.section.group.end
!         ^^                  entity.other.attribute-name.id
!            ^                keyword.operator.assignment
!              ^^^^^^^^       invalid.illegal.id
!                         ^   entity.name.tag.block-node.chapter.end


    [ch ( id = àààààààà ) ]
!       ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!                       ^     punctuation.section.group.end
!              ^^^^^^^^       invalid.illegal.id

[-  --------------
    ID -> No Value
    -------------- -]

    [ch ( id = ) ]
!       ^            punctuation.section.group.begin
!       ^^^^^^^^     meta.annotation.node-attributes.chapter
!              ^     punctuation.section.group.end
!         ^^         entity.other.attribute-name.id
!            ^       keyword.operator.assignment
!             ^     -string.unquoted.id
!             ^     -meta.toc-list.id
!                ^   entity.name.tag.block-node.chapter.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [ch (html_style = "color:red;")]
!       ^^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.chapter
!        ^^^^^^^^^^                    entity.other.attribute-name.html
!                   ^                  keyword.operator.assignment
!                     ^^^^^^^^^^^^     string.quoted.double
!                                 ^^^ -string.quoted.double
!                     ^                punctuation.definition.string.begin
!                                ^     punctuation.definition.string.end

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [ch (html_style = color:red )]
!       ^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.chapter
!                               ^    punctuation.section.group.end
!        ^^^^^^^^^^                  entity.other.attribute-name.html
!                   ^                keyword.operator.assignment
!                     ^^^^^^^^^      string.unquoted
!                              ^^^  -string.unquoted

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [ch (html_style = ) ]
!       ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!                     ^     punctuation.section.group.end
!        ^^^^^^^^^^         entity.other.attribute-name.html
!                   ^       keyword.operator.assignment
!                    ^^^^  -string
!                      ^^   meta.block.chapter

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [ch ( xyzzy = zip ) ]
!       ^                   punctuation.section.group.begin
!        ^^^^^^^^^^^^^      meta.annotation.node-attributes.chapter
!                     ^     punctuation.section.group.end
!         ^^^^^             entity.other.attribute-name.unknown
!               ^           keyword.operator.assignment

    [ch ( xyzzy = zip ) [title Something]]
!         ^^^^^                              entity.other.attribute-name.unknown
!               ^                            keyword.operator.assignment


]
!<- entity.name.tag.block-node.document.end
