! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Inline Nodes: Font


    Text [bold in bold] is cool.
!        ^^^^^                    punctuation.definition.bold.begin
!                     ^           punctuation.definition.bold.end
!        ^^^^^^^^^^^^^^           markup.bold

    Text [b in bold] is cool.
!        ^^                       punctuation.definition.bold.begin
!                  ^              punctuation.definition.bold.end
!        ^^^^^^^^^^^              markup.bold

    Text [* in bold] is cool.
!        ^^                       punctuation.definition.bold.begin
!                  ^              punctuation.definition.bold.end
!        ^^^^^^^^^^^              markup.bold



    Text [italic in italic] is cool.
!        ^^^^^^^                      punctuation.definition.italic.begin
!                         ^           punctuation.definition.italic.end
!        ^^^^^^^^^^^^^^^^^^           markup.italic

    Text [i in italic] is cool.
!        ^^                           punctuation.definition.italic.begin
!                    ^                punctuation.definition.italic.end
!        ^^^^^^^^^^^^^                markup.italic

    Text [_ in italic] is cool.
!        ^^                           punctuation.definition.italic.begin
!                    ^                punctuation.definition.italic.end
!        ^^^^^^^^^^^^^                markup.italic


]
