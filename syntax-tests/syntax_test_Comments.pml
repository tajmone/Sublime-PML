! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[ch title=Comments

    Comments start with [c \[-] and end with [c -\].
!                           ^^                       -comment
!                                               ^^^  -comment
!                          ^^                         constant.character.escape
!                                                ^^   constant.character.escape

    Text within comments is ignored.

    [- I'm a comment -]
!   ^^                    punctuation.definition.comment.begin
!   ^^^^^^^^^^^^^^^^^^^   comment.block
!                    ^^   punctuation.definition.comment.end

    PML is [- good -] awesome.
!          ^^^^^^^^^^            comment
!   ^^^^^^^                     -comment
!                     ^^^^^^^^  -comment

    Comments can appear anywhere and they can be nested to any level.

    [-
!   ^^                          comment.block
       Commented out text...
!      ^^^^^^^^^^^^^^^^^^^^^    comment.block
       [- nested comment -]
!      ^^^^^^^^^^^^^^^^^^^^     comment.block comment.block
!      ^^                       punctuation.definition.comment.begin
!                        ^^     punctuation.definition.comment.end
    -]


    [-[- nested [- doubly nested -]-]-]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   comment.block
!     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^     comment.block comment.block
!               ^^^^^^^^^^^^^^^^^^^       comment.block comment.block comment.block
!                                ^^       punctuation.definition.comment.end
!                                  ^^     punctuation.definition.comment.end
!                                    ^^   punctuation.definition.comment.end

    Nodes inside comments are ignored:
    [- [b not bold text] -]
!   ^^^^^^^^^^^^^^^^^^^^^^^   comment.block
!      ^^^^^^^^^^^^^^^^^     -markup.bold
!      ^^                    -punctuation.definition.bold.begin
!                      ^     -punctuation.definition.bold.end

]
