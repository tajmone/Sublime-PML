! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Inline Nodes: Font

[-  ====
    BOLD
    ==== -]

    Text [b in bold] is cool.
!        ^^                     punctuation.definition.bold.begin
!                  ^            punctuation.definition.bold.end
!        ^^^^^^^^^^^            markup.bold

[-  ======
    ITALIC
    ====== -]

    Text [i in italic] is cool.
!        ^^                       punctuation.definition.italic.begin
!                    ^            punctuation.definition.italic.end
!        ^^^^^^^^^^^^^            markup.italic

[-  ===========
    INLINE CODE
    =========== -]

    Inline [c source code] is cool.
!          ^^                         punctuation.definition.raw.inline.begin
!                        ^            punctuation.definition.raw.inline.end
!          ^^^^^^^^^^^^^^^            markup.raw.inline
!             ^^^^^^^^^^^             markup.raw.inline.content
!            ^                       -markup.raw.inline.content

    Inline [c
    source code] split across 2 line.
!              ^   punctuation.definition.raw.inline.end
!^^^^^^^^^^^^^^^   markup.raw.inline
!   ^^^^^^^^^^^    markup.raw.inline.content
!^^^              -markup.raw.inline.content


    Inline [c
    source
    code] split across three line.
!       ^   punctuation.definition.raw.inline.end
!^^^^^^^^   markup.raw.inline
!   ^^^^    markup.raw.inline.content
!^^^       -markup.raw.inline.content


[-  =========
    SUBSCRIPT
    ========= -]

    Text [sub in subscript] style.
!        ^^^^                       punctuation.definition.subscript.begin
!                         ^         punctuation.definition.subscript.end
!        ^^^^^^^^^^^^^^^^^^         markup.subscript

[-  ===========
    SUPERSCRIPT
    =========== -]

    Text [sup in superscript] style.
!        ^^^^                         punctuation.definition.superscript.begin
!                           ^         punctuation.definition.superscript.end
!        ^^^^^^^^^^^^^^^^^^^^         markup.superscript


[-  =============
    STRIKETHROUGH
    ============= -]

    Text [strike in strikethrough] style.
!        ^^^^^^^                           punctuation.definition.strikethrough.begin
!                                ^         punctuation.definition.strikethrough.end
!        ^^^^^^^^^^^^^^^^^^^^^^^^^         markup.strikethrough

]
