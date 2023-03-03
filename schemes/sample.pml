[options
    [TOC_title Document Contents]
    [TOC_position left]
]
[doc [title PML Sample Document]

    [note Updated to PML 4.0.0]

    This sample document is for inspecting how the default scheme(s) that ship
    with Sublime PML work with real case examples of the syntax; and, of course,
    also to see how other (non-dedicated) schemes look like with PML.

    Examples are provided only for syntax elements that are actually implemented.

[ch (id=unknown-nodes) [title Unknown Nodes]

    I.e. any node currently unimplemented, which has a valid notation but is
    not understood by the syntax.

    See the [link (url=https://www.lorem.org) lorem website] for info.

    [div (id=lorem html_class=ipsum)
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
        do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    ]

]
[ch (id=titles) [title Titles]

    Titles are given a light background colour and dark text, and any inline
    nodes within a title are given ad hoc colours to match the background.

    [ch [title Tiles With Font Nodes ]

    All text-formatting nodes are allowed...

        [ch [title Font style [b Bold ] Text ]]
        [ch [title Font style [i Italic ] Text ]]
        [ch [title Font style [c Inline Code ] Text ]]
        [ch [title Font style [sub Subscript ] Text ]]
        [ch [title Font style [sup Superscript ] Text ]]
        [ch [title Font style [strike Strikethrough ] Text ]]

        [ch [title Fake \[b Bold \] Text ]]
        [ch [title Fake \[b Bold [b real \] bold] Text ]]

        [ch [title Spaced   With  [b   Bold   ]   Text ]]
        [ch [title Spaced   With  [i   Italic   ]   Text ]]
        [ch [title Spaced   With  [c   Inline   Code   ] Text ]]
        [ch [title Spaced   With  [sub   Subscript   ]   Text ]]
        [ch [title Spaced   With  [sup   Superscript   ]   Text ]]
        [ch [title Spaced   With  [strike   Strikethrough   ]   Text ]]
    ]
    [ch [title Tiles With Inline Nodes ]

        [ch [title Title With [span (html_style=color:red) Span ] Node ]]
        [ch [title Title With [link (url=https://www.pml-lang.org) Linked] Text ]]
        [ch [title Title With [verbatim Verbatim ] Contents ]]
        [ch [title Title With [xref (ref_id=inline-nodes) XRef ]]]

    ]
    [ch [title Tiles With Text-Processing Nodes ]

        [ch [title Title With [- some -] Comment ]]

            Comments within a [c \[title ] node are allowed.

        [ch [title Title With [nl] Newline and [sp] Nodes ]]

            [c \[nl\]] and [c \[sp\]] nodes are allowed.

        [u:set MyParam = "Custom Defined"]
        [ch [title Title With [u:get MyParam] Parameter ]]
    ]
]
[ch (id=inline-nodes) [title Inline Nodes]

    [note   Beware that many nodes are still unimplemented and
            will be treated as "unknown" nodes for the time being.]

    [ch [title Font Nodes]

        Text [b in bold] is cool.

        Text [i in italic] is cool.

        Inline [c source code] is cool.

        Inline [c
        source
        ] split across three line.

        Inline [c code w/ escaped \] chars ].

        Inline code notation: [c \[c .. \]]

        Text [sub in subscript] style.

        Text [sup in superscript] style.

        Text [strike in strikethrough] style.
    ]
]
[ch (id=block-nodes) [title Block Nodes]

    [ch [title Source Code]

        Standard Text Syntax:

        [code print("Hello World!") ]

        Delimited Text Syntax:

        [code (highlight=yes lang = rust)
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        fn main() {
            println!("Hello, world!");
        }
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ]

    ]
    [ch [title HTML Code]

        Standard Text Syntax:

        [html (id="doctype") <!DOCTYPE html>]

        Delimited Text Syntax:

        [html
            ================================================================
            <!DOCTYPE html>
            <html>
                <body>

                    <h1>The PML Philosophy</h1>

                    <p>It should be easy for everybody to quickly create
                    beautiful web articles and books</p>

                    <a href="https://www.pml-lang.dev/">Visit PML Website</a>

                </body>
            </html>
            ================================================================
        ]
    ]
    [ch [title Input]

        Standard Text Syntax:

        [input $ pmlc p2h sample.pml ]

        Delimited Text Syntax:

        [input (id=cli_input)
        """"""""""""""""""""""""""""""
        > pmlc p2h sample.pml
        > rake -B
        """"""""""""""""""""""""""""""
        ]
    ]
    [ch [title Output]

        Standard Text Syntax:

        [output Hello World! ]

        Delimited Text Syntax:

        [output (id=cli_outut)
        """"""""""""""""""""""""""""""
        ERROR:
        Message     A node with id 'cli_input' has already been declared at the following location:
                    cli_input at sample.pml (C:\path\sample.pml)
                    Line 137, column 20
                            [input (id= ==> cli_input)
        Code        [output (id=cli_input)
                                ^^^^^^^^^
        Location    sample.pml (C:\path\sample.pml)
                    Line 147, column 21
        Error id    DUPLICATE_ID

        [Finished in 1.8s]
        """"""""""""""""""""""""""""""
        ]
    ]
    [ch [title Quote]

        [quote
            The FDA calls certain substances 'controlled'.
            But there are no controlled substances;
            there are only controlled persons.
            [qsource Thomas Szasz, The Untamed Tongue]
        ]
    ]
]
[ch (id=text-processing) [title Text Processing Nodes]

    [ch (id=comments) [title Comments]

        [- A simple comment -]

        [- Nested comments:
            [- inner comments -]
        -]
    ]
    [ch (id=parameters) [title Paramaters]

        [u:set PmlVer = 2.3.0]

        This is PML version [u:get PmlVer].

        [u:set docs_root_URL = http://www.example.com/project/docs/public]

        For an overview please read the article
        [link (url=[u:get docs_root_URL]/concepts.html) Basic Concepts].

    ]
]
[ch (id=miscellanea) [title Miscellanea]

Escape sequences: \[,\\,\].


]
]
