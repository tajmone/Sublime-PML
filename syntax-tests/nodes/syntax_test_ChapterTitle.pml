! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Fundamental Nodes: Chapter Title]

    [ch [title H2 title]
!   ^^^^^^^^^^^^^^^^^^^^   meta.block.chapter
!   ^^^                    entity.name.tag.block-node.chapter.begin
!       ^^^^^^^^^^^^^^^^   meta.block.title.chapter
!       ^^^^^^             entity.name.tag.block-node.title.chapter.begin
!             ^           -entity.name.tag.block-node.title.chapter.chapter.begin
!              ^^^^^^^^    markup.heading meta.toc-list.heading
!             ^           -markup.heading meta.toc-list.heading
!                      ^  -markup.heading meta.toc-list.heading
!                      ^   entity.name.tag.block-node.title.chapter.end

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
    do eiusmod tempor incididunt ut labore et dolore magna aliqua.
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -meta.annotation.node-attributes


    ]
!   ^                     meta.block.chapter entity.name.tag.block-node.chapter.end

    outside chapter
!   ^^^^^^^^^^^^^^^^     -meta.block.chapter


[-  *******************
    Spurious Whitespace
    ******************* -]

    [-  Any leading or trailing spaces are not scoped as part
        of the title. This also applies to titles split across
        multiple lines. -]

    [ch [title  Title With Extra Spaces  ]]
!                                      ^^    -(markup.heading meta.toc-list.heading)
!             ^^                             -(markup.heading meta.toc-list.heading)

    [ch [title  Multi-line
                Title and
                Extra Spaces   ]]
!                           ^^^    -(markup.heading meta.toc-list.heading)
!             ^^                   -(markup.heading meta.toc-list.heading)


    [-  When titles are indexed, multiple spaces are collapsed
        into a single space, mimicking how they will look in
        the final document... -]

    [ch [title Title   With   Extra   Spaces  ]]


    [- PENDING TESTS:
        * [ ] Title with leading and trailing tabs
                (requires EditorConfig exception rule).
    -]


[-  ************************
    Chapter Title Attributes
    ************************ -]

    [ch [title ( ) ]]
!              ^       punctuation.section.group.begin
!              ^^^     meta.annotation.node-attributes.title.chapter
!                ^     punctuation.section.group.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [ch [title ( id = quote666 ) ]]
!              ^                     punctuation.section.group.begin
!              ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.title.chapter
!                              ^     punctuation.section.group.end
!                ^^                  entity.other.attribute-name.id
!                   ^                keyword.operator.assignment
!                     ^^^^^^^^       string.unquoted.id
!                     ^^^^^^^^       meta.toc-list.id
!                                ^   entity.name.tag.block-node.title.chapter.end
!                                 ^  entity.name.tag.block-node.chapter.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [ch [title ( id = $$$$$$$$ ) ]]
!              ^                     punctuation.section.group.begin
!              ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.title.chapter
!                              ^     punctuation.section.group.end
!                ^^                  entity.other.attribute-name.id
!                   ^                keyword.operator.assignment
!                     ^^^^^^^^       invalid.illegal.id
!                                ^   entity.name.tag.block-node.title.chapter.end
!                                 ^  entity.name.tag.block-node.chapter.end


    [ch [title ( id = àààààààà ) ]]
!              ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.title.chapter
!                              ^     punctuation.section.group.end
!                     ^^^^^^^^       invalid.illegal.id

[-  --------------
    ID -> No Value
    -------------- -]

    [ch [title ( id = ) ]]
!              ^            punctuation.section.group.begin
!              ^^^^^^^^     meta.annotation.node-attributes.title.chapter
!                     ^     punctuation.section.group.end
!                ^^         entity.other.attribute-name.id
!                   ^       keyword.operator.assignment
!                    ^     -string.unquoted.id
!                    ^     -meta.toc-list.id
!                       ^   entity.name.tag.block-node.title.chapter.end
!                        ^  entity.name.tag.block-node.chapter.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [ch [title (html_style = "color:red;")]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.title.chapter
!               ^^^^^^^^^^                    entity.other.attribute-name.html
!                          ^                  keyword.operator.assignment
!                            ^^^^^^^^^^^^     string.quoted.double
!                                        ^^^ -string.quoted.double
!                            ^                punctuation.definition.string.begin
!                                       ^     punctuation.definition.string.end

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [ch [title (html_style = color:red )]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.title.chapter
!                                      ^    punctuation.section.group.end
!               ^^^^^^^^^^                  entity.other.attribute-name.html
!                          ^                keyword.operator.assignment
!                            ^^^^^^^^^      string.unquoted
!                                     ^^^  -string.unquoted

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [ch [title (html_style = ) ]]
!              ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.title.chapter
!                            ^     punctuation.section.group.end
!               ^^^^^^^^^^         entity.other.attribute-name.html
!                          ^       keyword.operator.assignment
!                           ^^^^  -string
!                             ^^   meta.block.chapter

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [ch [title ( xyzzy = zip ) ]]
!              ^                   punctuation.section.group.begin
!               ^^^^^^^^^^^^^      meta.annotation.node-attributes.title.chapter
!                            ^     punctuation.section.group.end
!                ^^^^^             entity.other.attribute-name.unknown
!                      ^           keyword.operator.assignment

    [ch [title ( xyzzy = zip ) Preface]]
!                ^^^^^                     entity.other.attribute-name.unknown
!                      ^                   keyword.operator.assignment

]
!<- entity.name.tag.block-node.document.end
