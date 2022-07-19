! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = HTML Attributes Tests

[------------------------------
    QUOTED ATTRIBUTE VALUE
------------------------------]

    [p html_style = "color:red; border:1px"
!      ^^^^^^^^^^                             entity.other.attribute-name.html
!                 ^                           keyword.operator.assignment
!                   ^^^^^^^^^^^^^^^^^^^^^^^   string.quoted.double
!                   ^                         punctuation.definition.string.begin
!                                         ^   punctuation.definition.string.end
    Paragraph contents
    ]

[- On same line with node contents... -]

    [p html_style = "color:red;" Lorem ]
!      ^^^^^^^^^^                          entity.other.attribute-name.html
!                 ^                        keyword.operator.assignment
!                   ^^^^^^^^^^^^           string.quoted.double
!                   ^                      punctuation.definition.string.begin
!                              ^           punctuation.definition.string.end
!                               ^^^^^^^^   -string.quoted.double

[--------------------------------
    UNQUOTED ATTRIBUTE VALUE
--------------------------------]

    [p html_style = color:red; border:1px
!      ^^^^^^^^^^                           entity.other.attribute-name.html
!                 ^                         keyword.operator.assignment
!                   ^^^^^^^^^^^^^^^^^^^^^   string.unquoted.pml
    Paragraph contents
    ]


    [p title=Just a Paragraph \
        html_class = red big bold
!       ^^^^^^^^^^                  entity.other.attribute-name.html
!                  ^                keyword.operator.assignment
!                    ^^^^^^^^^^^^   string.unquoted.pml
    Paragraph contents
    ]


]


[- PENDING TASKS:

    * [ ] Convert title attribute to '[title' node.
    * [ ] Remove line-continuations.

-]
