! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

[doc [title Escape Characters]

    Instead of \\, write \\\\
!              ^^                constant.character.escape.pml
!                        ^^      constant.character.escape.pml
!                          ^^    constant.character.escape.pml

    Instead of \[, write \\\[
!              ^^                constant.character.escape.pml
!                        ^^^^    constant.character.escape.pml


[ch [title Unicode Escapes]

    [ch [title 4 digits]

    Lowercase: \u272a
!              ^^^^^^    constant.character.escape.pml

    Uppercase: \u272A
!              ^^^^^^    constant.character.escape.pml

    ]


    [ch [title 8 digits]

    Lowercase: \U0001f52f
!              ^^^^^^^^^^    constant.character.escape.pml

    Uppercase: \U0001F52F
!              ^^^^^^^^^^    constant.character.escape.pml

    ]

]
]
[- PENDING TASKS:

    * [ ] Convert title attribute to '[title' node.

-]
