! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [doc [title Title Unquoted]]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.block.document
!                              ^  -meta.annotation.node-attributes.document
!   ^^^^                           entity.name.tag.block-node.document.begin
!                              ^   entity.name.tag.block-node.document.end
!       ^^^^^^^^^^^^^^^^^^^^^^    -entity.name.tag.block-node.document
!        ^^^^^^^^^^^^^^^^^^^^^^    meta.block.title.document
!   ^^^^^                         -meta.block.title.document
!                              ^  -meta.block.title.document
!        ^^^^^^                    entity.name.tag.block-node.title.document.begin
!                             ^    entity.name.tag.block-node.title.document.end
!              ^^^^^^^^^^^^^^^    -entity.name.tag.block-node.title.document

    [doc [title  Doc Title ]
!   ^^^^^^^^^^^^^^^^^^^^^^^^   meta.block.document
    Lorem Ipsum.
!   ^^^^^^^^^^^^              -meta.annotation.node-attributes.document meta.block.document
    ]
!   ^  entity.name.tag.block-node.document.end

[doc [title
!    ^^^^^^         meta.block.title.document
!    ^^^^^^         meta.block.title.document
!    ^^^^^^         entity.name.tag.block-node.title.document.begin
        Just Some
!       ^^^^^^^^^   meta.block.title.document
!       ^^^^^^^^^   meta.block.title.document
        Title]
!       ^^^^^^      meta.block.title.document
!       ^^^^^^      meta.block.title.document
!            ^      entity.name.tag.block-node.title.document.end

[- PENDING TESTS:
    * [ ] Title with leading and trailing tabs.
-]

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
!                                    ^    entity.name.tag.block-node.title.document.end
!                                     ^   entity.name.tag.block-node.document.end


[-  *************************
    Document Title Attributes
    ************************* -]

    [doc [title ( ) ]]
!               ^       punctuation.section.group.begin
!               ^^^     meta.annotation.node-attributes.title.document
!                 ^     punctuation.section.group.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [doc [title ( id = quote666 ) ]]
!               ^                     punctuation.section.group.begin
!               ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.title.document
!                               ^     punctuation.section.group.end
!                 ^^                  entity.other.attribute-name.id
!                    ^                keyword.operator.assignment
!                      ^^^^^^^^       string.unquoted.id
!                      ^^^^^^^^       meta.toc-list.id
!                                 ^   entity.name.tag.block-node.title.document.end
!                                  ^  entity.name.tag.block-node.document.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [doc [title ( id = $$$$$$$$ ) ]]
!               ^                     punctuation.section.group.begin
!               ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.title.document
!                               ^     punctuation.section.group.end
!                 ^^                  entity.other.attribute-name.id
!                    ^                keyword.operator.assignment
!                      ^^^^^^^^       invalid.illegal.id
!                                 ^   entity.name.tag.block-node.title.document.end
!                                  ^  entity.name.tag.block-node.document.end


    [doc [title ( id = àààààààà ) ]]
!               ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.title.document
!                               ^     punctuation.section.group.end
!                      ^^^^^^^^       invalid.illegal.id

[-  --------------
    ID -> No Value
    -------------- -]

    [doc [title ( id = ) ]]
!               ^            punctuation.section.group.begin
!               ^^^^^^^^     meta.annotation.node-attributes.title.document
!                      ^     punctuation.section.group.end
!                 ^^         entity.other.attribute-name.id
!                    ^       keyword.operator.assignment
!                     ^     -string.unquoted.id
!                     ^     -meta.toc-list.id
!                        ^   entity.name.tag.block-node.title.document.end
!                         ^  entity.name.tag.block-node.document.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [doc [title (html_style = "color:red;")]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.title.document
!                ^^^^^^^^^^                    entity.other.attribute-name.html
!                           ^                  keyword.operator.assignment
!                             ^^^^^^^^^^^^     string.quoted.double
!                                         ^^^ -string.quoted.double
!                             ^                punctuation.definition.string.begin
!                                        ^     punctuation.definition.string.end

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [doc [title (html_style = color:red )]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.title.document
!                                       ^    punctuation.section.group.end
!                ^^^^^^^^^^                  entity.other.attribute-name.html
!                           ^                keyword.operator.assignment
!                             ^^^^^^^^^      string.unquoted
!                                      ^^^  -string.unquoted

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [doc [title (html_style = ) ]]
!               ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.title.document
!                             ^     punctuation.section.group.end
!                ^^^^^^^^^^         entity.other.attribute-name.html
!                           ^       keyword.operator.assignment
!                            ^^^^  -string
!                              ^^   meta.block.document

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [doc [title ( xyzzy = zip ) ]]
!               ^                   punctuation.section.group.begin
!                ^^^^^^^^^^^^^      meta.annotation.node-attributes.title.document
!                             ^     punctuation.section.group.end
!                 ^^^^^             entity.other.attribute-name.unknown
!                       ^           keyword.operator.assignment

    [doc [title ( xyzzy = zip ) Preface]]
!                 ^^^^^                     entity.other.attribute-name.unknown
!                       ^                   keyword.operator.assignment
