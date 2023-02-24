! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Raw HTML Blocks]

[- ** IMPORTANT! ** Keep the '.pml' trailing scope in this doc
                    since we're dealing with embedded HTML. -]
[-  ******************
    Without Attributes
    ****************** -]

    [html
    ~~~
!^^^^^^     meta.code-fence.definition.begin.pml
!^^^^^^     punctuation.definition.raw.code-fence.begin.pml

    ~~~
!^^^^^^     meta.code-fence.definition.end.pml
!^^^^^^     punctuation.definition.raw.code-fence.end.pml
    ]
!   ^   entity.name.tag.block-node.raw.html.end

    [html
        ===============
!       ^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.begin.pml
        <!DOCTYPE html>
!       ^^^^^^^^^^^^^^^  text.html.basic  meta.tag.sgml.doctype.html
        <html>
            <body>
!           ^^^^^^  text.html.basic  meta.tag.structure.any.html
                <h1>The PML Philosophy</h1>
                <p>It should be easy for everybody to quickly create
                beautiful web articles and books</p>
                <a href="https://www.pml-lang.dev/">Visit PML Website</a>
            </body>
        </html>
        ===============
!       ^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.end.pml
    ]
!   ^  -text.html.basic



[- ** WARNING! ** Adding checks between the '[html` line and the opening
      delimiter results in the node being parsed as a Standard Text Syntax
      rather than Delimited Text Syntax!
        While this is fine for general test purposes, just keep in mind
      that tests for the '[html` tag and its attributes will prevent the
      delimiters from being scoped correctly -- which is how the PML parser
      actually works in real life -- and as a result of this the fence
      delimiters will be treated as part of the HTML code and sent to
      the HTML syntax, which **breaks HTML syntax highlighting**.
        Hence, the attributes tests down below are kept to the minimum
      and focus only on ensuring that attributes are parsed properly
      with the Delimited Text Syntax. In depth attributes tests for this
      node are handled in the "syntax_test_HTML_standard.pml" file.
-]


[-  *********************
    HTML Block Attributes
    ********************* -]

    [html ( )
!         ^      punctuation.section.group.begin.pml
!         ^^^    meta.annotation.node-attributes.html.pml
!           ^    punctuation.section.group.end.pml
      """
      """
    ]

[-  --------------
    ID -> Valid ID
    -------------- -]

    [html (id = attr_newline)
!         ^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html.pml
!         ^                     punctuation.section.group.begin.pml
!                           ^   punctuation.section.group.end.pml
!          ^^                   entity.other.attribute-name.id.pml
!             ^                 keyword.operator.assignment.pml
!               ^^^^^^^^^^^^    string.unquoted.id.pml
!               ^^^^^^^^^^^^    meta.toc-list.id.pml
!   ^^^^^^                     -meta.annotation.node-attributes.html.pml
!   ^^^^^                       entity.name.tag.block-node.raw.html.begin.pml
      """"
!     ^^^^                     -meta.annotation.node-attributes.html.pml
      """"
    ]


    [html
    (id = attr_newline)
!   ^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html.pml
!    ^^                   entity.other.attribute-name.id.pml
!       ^                 keyword.operator.assignment.pml
!         ^^^^^^^^^^^^    string.unquoted.id.pml
!         ^^^^^^^^^^^^    meta.toc-list.id.pml
    ~~~~~~~~~~~~
    ~~~~~~~~~~~~
    ]
!   ^   entity.name.tag.block-node.raw.html.end.pml

[-  ---------------
    ID -> Malformed
    --------------- -]

    [html (id = $$$$$$$$)
!               ^^^^^^^^    invalid.illegal.id.pml
!                       ^  -invalid.illegal.id.pml
!         ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html.pml
!   ^^^^^^                 -meta.annotation.node-attributes.html.pml
!         ^                 punctuation.section.group.begin.pml
!                       ^   punctuation.section.group.end.pml
!   ^^^^^                   entity.name.tag.block-node.raw.html.begin.pml
      =============
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end.pml


    [html ( id = àààààààà )
!                ^^^^^^^^     invalid.illegal.id.pml
!                        ^^  -invalid.illegal.id.pml
!          ^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html.pml
!                         ^   punctuation.section.group.end.pml
      =============
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end.pml

[-  --------------
    ID -> No Value
    -------------- -]

    [html (id = )
!          ^^         entity.other.attribute-name.id.pml
!         ^           punctuation.section.group.begin.pml
!         ^^^^^^^     meta.annotation.node-attributes.html.pml
!               ^     punctuation.section.group.end.pml
!             ^       keyword.operator.assignment.pml
!              ^     -string.unquoted.id.pml
!              ^     -meta.toc-list.id.pml
      =============
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end.pml

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [html (html_style = "color:red;")
!         ^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.html.pml
!          ^^^^^^^^^^                   entity.other.attribute-name.html.pml
!                     ^                 keyword.operator.assignment.pml
!                       ^^^^^^^^^^^^    string.quoted.double.pml
!                       ^               punctuation.definition.string.begin.pml
!                                  ^    punctuation.definition.string.end.pml
!                                   ^  -string.quoted.double.pml
      =============
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end.pml


[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [html (html_style = color:red )
!          ^^^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html.pml
!                                 ^   punctuation.section.group.end.pml
!          ^^^^^^^^^^                 entity.other.attribute-name.html.pml
!                     ^               keyword.operator.assignment.pml
!                       ^^^^^^^^^     string.unquoted.pml
!                                ^^  -string.unquoted.pml
      =============
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end.pml


[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [html (html_style = )
!          ^^^^^^^^^^^^^^    meta.annotation.node-attributes.html.pml
!                       ^    punctuation.section.group.end.pml
!           ^^^^^^^^^        entity.other.attribute-name.html.pml
!                     ^      keyword.operator.assignment.pml
!                      ^^   -string
    ~~~~
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.html.end.pml

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [html ( xyzzy = zip )
!         ^                       punctuation.section.group.begin.pml
!         ^^^^^^^^^^^^^^^         meta.annotation.node-attributes.html.pml
!                       ^         punctuation.section.group.end.pml
!           ^^^^^                 entity.other.attribute-name.unknown.pml
!                 ^               keyword.operator.assignment.pml
    ~~~~
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.html.end.pml



[- ** NOTE ** For more attributes tests see "syntax_test_HTML_standard.pml"
      since both the Standard and Delimited Syntax share the same scopes
      for handling attributes; so there's no need to repeat those tests
      here too. -]


]
!<- entity.name.tag.block-node.document.end.pml
