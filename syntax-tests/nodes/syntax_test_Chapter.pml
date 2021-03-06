! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Fundamental Nodes: Chapter

    [ch title = H1 title
!   ^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^                   meta.block.chapter entity.name.tag.block-node.section.begin
!       ^^^^^             entity.other.attribute-name.title
!             ^           keyword.operator.assignment
!               ^^^^^^^^  entity.name.section.unquoted markup.heading meta.toc-list.heading
!       ^^^^^^^^^^^^^^^^  meta.annotation.node-attributes.chapter

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
    do eiusmod tempor incididunt ut labore et dolore magna aliqua.
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -meta.annotation.node-attributes


    ]
!   ^                          meta.block.chapter entity.name.tag.block-node.section.end

    outside chapter
!   ^^^^^^^^^^^^^^^^         - meta.block.chapter

    [ch title = "my \"title\""
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^                         entity.name.tag.block-node.section.begin
!       ^^^^^                   entity.other.attribute-name.title
!             ^                 keyword.operator.assignment
!               ^^^^^^^^^^^^^^  entity.name.section.quoted markup.heading meta.toc-list.heading
!               ^               punctuation.definition.string.begin
!                            ^  punctuation.definition.string.end
!                   ^^          constant.character.escape
    ]
!   ^                           entity.name.tag.block-node.section.end

    [ch title = Chapter Title \
!                             ^  punctuation.separator.continuation
!   ^^^                          meta.block.chapter
!       ^^^^^                    entity.other.attribute-name.title
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
!   ^ entity.name.tag.block-node.section.end


[- TEST TRAILING SPACES -]

    [ch title = unquoted title  ]
!                             ^    -entity.name.section.unquoted
!                             ^    -markup.heading meta.toc-list.heading

]
!<- entity.name.tag.block-node.document.end
