! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Fundamental Nodes: Chapter

    [chapter title = H1 title
!   ^^^^^^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^^^^^^                   meta.block.chapter punctuation.definition.section.block.chapter.begin
!            ^^^^^             entity.other.attribute-name.title
!                  ^           keyword.operator.assignment
!                    ^^^^^^^^  entity.name.section.unquoted markup.heading meta.toc-list
!            ^^^^^^^^^^^^^^^^  meta.annotation.node-attributes.chapter

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
    do eiusmod tempor incididunt ut labore et dolore magna aliqua.
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -meta.annotation.node-attributes


    ]
!   ^                          meta.block.chapter punctuation.definition.section.block.chapter.end

    outside chapter
!   ^^^^^^^^^^^^^^^^         - meta.block.chapter

    [chapter title = "my \"title\""
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^^^^^^                         punctuation.definition.section.block.chapter.begin
!            ^^^^^                   entity.other.attribute-name.title
!                  ^                 keyword.operator.assignment
!                    ^^^^^^^^^^^^^^  entity.name.section.quoted markup.heading meta.toc-list
!                    ^               punctuation.definition.string.begin
!                                 ^  punctuation.definition.string.end
!                        ^^          constant.character.escape
    ]
!   ^                                punctuation.definition.section.block.chapter.end

    [ch title = Chapter Title \
!                             ^  punctuation.separator.continuation
!   ^^^                          meta.block.chapter
!       ^^^^^                    entity.other.attribute-name.title.pml
!       ^^^^^^^^^^^^^^^^^^^^^^^  meta.annotation.node-attributes.chapter
    ]


    [ch id = identifier \
        title = Another Chapter
!       ^^^^^^^^^^^^^^^^^^^^^^^  meta.annotation.node-attributes.chapter
        Some text.
!       ^^^^^^^^^^              -meta.annotation.node-attributes.chapter

        NOTE: The `meta.annotation.node-attributes.<node-name>` scope is used
        to enable context-smart completions. The scope is designed to run from
        after the opening tag up to the last attribute definition encountered.
        It carries on to the next line if a `\` is found at the end of the line,
        and will end at first EOL encountered.

    ]



]
