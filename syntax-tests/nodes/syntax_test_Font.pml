! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Inline Nodes: Font]

[-  ====
    BOLD
    ==== -]

    Text [b in bold] is cool.
!        ^^                     entity.name.tag.inline-node.bold.begin
!                  ^            entity.name.tag.inline-node.bold.end
!        ^^^^^^^^^^^            markup.bold

[-  ======
    ITALIC
    ====== -]

    Text [i in italic] is cool.
!        ^^                       entity.name.tag.inline-node.italic.begin
!                    ^            entity.name.tag.inline-node.italic.end
!        ^^^^^^^^^^^^^            markup.italic

[-  ===========
    INLINE CODE
    =========== -]

    Inline [c source code] is cool.
!          ^^                         entity.name.tag.inline-node.code.begin
!                        ^            entity.name.tag.inline-node.code.end
!          ^^^^^^^^^^^^^^^            markup.raw.inline
!             ^^^^^^^^^^^             markup.raw.inline.content
!            ^                       -markup.raw.inline.content

    Inline [c
    source code] split across 2 line.
!              ^   entity.name.tag.inline-node.code.end
!^^^^^^^^^^^^^^^   markup.raw.inline
!   ^^^^^^^^^^^    markup.raw.inline.content
!^^^              -markup.raw.inline.content


    Inline [c
    source
    code] split across three line.
!       ^   entity.name.tag.inline-node.code.end
!^^^^^^^^   markup.raw.inline
!   ^^^^    markup.raw.inline.content
!^^^       -markup.raw.inline.content


[-  =========
    SUBSCRIPT
    ========= -]

    Text [sub in subscript] style.
!        ^^^^                       entity.name.tag.inline-node.subscript.begin
!                         ^         entity.name.tag.inline-node.subscript.end
!        ^^^^^^^^^^^^^^^^^^         markup.subscript

[-  ===========
    SUPERSCRIPT
    =========== -]

    Text [sup in superscript] style.
!        ^^^^                         entity.name.tag.inline-node.superscript.begin
!                           ^         entity.name.tag.inline-node.superscript.end
!        ^^^^^^^^^^^^^^^^^^^^         markup.superscript


[-  =============
    STRIKETHROUGH
    ============= -]

    Text [strike in strikethrough] style.
!        ^^^^^^^                           entity.name.tag.inline-node.strikethrough.begin
!                                ^         entity.name.tag.inline-node.strikethrough.end
!        ^^^^^^^^^^^^^^^^^^^^^^^^^         markup.strikethrough

]
