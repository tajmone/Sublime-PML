! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Raw HTML Blocks]

[- ** IMPORTANT! ** Keep the '.pml' trailing scope in this doc
                    since we're dealing with embedded HTML. -]

[-  ******************
    Without Attributes
    ****************** -]

    [html
!   ^^^^^   entity.name.tag.block-node.raw.html.begin
    ~~~
!^^^^^^     meta.code-fence.definition.begin
!^^^^^^     punctuation.definition.raw.code-fence.begin

    ~~~
!^^^^^^     meta.code-fence.definition.end
!^^^^^^     punctuation.definition.raw.code-fence.end
    ]
!   ^   entity.name.tag.block-node.raw.html.end

    [html
        ===============
!       ^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.begin
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
!       ^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.end
    ]
!   ^  -text.html.basic

[-  *********************
    HTML Block Attributes
    ********************* -]

    [html ( )
!         ^      punctuation.section.group.begin
!         ^^^    meta.annotation.node-attributes.html
!           ^    punctuation.section.group.end
      """
      """
!     ^^^        punctuation.definition.raw.code-fence.end
    ]

[-  --------------
    ID -> Valid ID
    -------------- -]

    [html (id = attr_newline)
!         ^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html
!         ^                     punctuation.section.group.begin
!                           ^   punctuation.section.group.end
!          ^^                   entity.other.attribute-name.id
!             ^                 keyword.operator.assignment
!               ^^^^^^^^^^^^    string.unquoted.id
!               ^^^^^^^^^^^^    meta.toc-list.id
!   ^^^^^^                     -meta.annotation.node-attributes.html
!   ^^^^^                       entity.name.tag.block-node.raw.html.begin
      """"
!     ^^^^                     -meta.annotation.node-attributes.html
      <hr>
      """"
    ]


    [html
    (id = attr_newline)
!   ^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html
!    ^^                   entity.other.attribute-name.id
!       ^                 keyword.operator.assignment
!         ^^^^^^^^^^^^    string.unquoted.id
!         ^^^^^^^^^^^^    meta.toc-list.id
    ~~~~~~~~~~~~
    <p>Lorem</p>
!   ^^^^^^^^^^^^          text.html.basic
!   ^^^                   meta.tag.block.any.html
!            ^^^          meta.tag.block.any.html
    ~~~~~~~~~~~~
    ]
!   ^   entity.name.tag.block-node.raw.html.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [html (id = $$$$$$$$)
!               ^^^^^^^^    invalid.illegal.id
!                       ^  -invalid.illegal.id
!         ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html
!   ^^^^^^                 -meta.annotation.node-attributes.html
!         ^                 punctuation.section.group.begin
!                       ^   punctuation.section.group.end
!   ^^^^^                   entity.name.tag.block-node.raw.html.begin
      =============
      <p>Hello!</p>
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end


    [html ( id = àààààààà )
!                ^^^^^^^^     invalid.illegal.id
!                        ^^  -invalid.illegal.id
!          ^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html
!                         ^   punctuation.section.group.end
      =============
      <p>Hello!</p>
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end

[-  --------------
    ID -> No Value
    -------------- -]

    [html (id = )
!          ^^         entity.other.attribute-name.id
!         ^           punctuation.section.group.begin
!         ^^^^^^^     meta.annotation.node-attributes.html
!               ^     punctuation.section.group.end
!             ^       keyword.operator.assignment
!              ^     -string.unquoted.id
!              ^     -meta.toc-list.id
      =============
      <p>Hello!</p>
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [html (html_style = "color:red;")
!         ^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.html
!          ^^^^^^^^^^                   entity.other.attribute-name.html
!                     ^                 keyword.operator.assignment
!                       ^^^^^^^^^^^^    string.quoted.double
!                       ^               punctuation.definition.string.begin
!                                  ^    punctuation.definition.string.end
!                                   ^  -string.quoted.double
      =============
      <p>Hello!</p>
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end


[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [html (html_style = color:red )
!          ^^^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html
!                                 ^   punctuation.section.group.end
!          ^^^^^^^^^^                 entity.other.attribute-name.html
!                     ^               keyword.operator.assignment
!                       ^^^^^^^^^     string.unquoted
!                                ^^  -string.unquoted
      =============
      <p>Hello!</p>
      =============
    ]
!   ^   entity.name.tag.block-node.raw.html.end


[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [html (html_style = )
!          ^^^^^^^^^^^^^^    meta.annotation.node-attributes.html
!                       ^    punctuation.section.group.end
!           ^^^^^^^^^        entity.other.attribute-name.html
!                     ^      keyword.operator.assignment
!                      ^^   -string
    ~~~~
!   ^^^^^    punctuation.definition.raw.code-fence.begin
    ~~~~
!   ^^^^^    punctuation.definition.raw.code-fence.end
    ]

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [html ( xyzzy = zip )
!         ^                       punctuation.section.group.begin
!         ^^^^^^^^^^^^^^^         meta.annotation.node-attributes.html
!                       ^         punctuation.section.group.end
!           ^^^^^                 entity.other.attribute-name.unknown
!                 ^               keyword.operator.assignment
    ~~~~
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.html.end



]
!<- entity.name.tag.block-node.document.end
