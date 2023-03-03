! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [output
    ~~~~~~~~~~~~~~~
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.begin
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.output.begin
    pmlc p2h xy.pml
!   ^^^^^^^^^^^^^^^   source.block.output.content
!   ^^^^^^^^^^^^^^^   meta.embedded.block.output
    ~~~~~~~~~~~~~~~
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.end
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.output.end
!   ^^^^^^^^^^^^^^^  -source.block.output.content
    ]
!   ^   entity.name.tag.block-node.raw.output.end


  [- ** WARNING! ** Adding checks between the '[output` line and the opening
        delimiter results in the node being parsed as a Standard Text Syntax
        rather than Delimited Text Syntax!
          While this is fine for all practical purposes, just keep in mind
        that tests for the '[output` tag and its attributes will prevent the
        delimiters from being scoped correctly -- which is how the PML parser
        actually works in real life!
  -]

    [output
!   ^^^^^^^   entity.name.tag.block-node.raw.output.begin
!   ^^^^^^^  -source.block.output.content
    ===============
    pmlc p2h xy.pml
!   ^^^^^^^^^^^^^^^   meta.embedded.block.output
!   ^^^^^^^^^^^^^^^   source.block.output.content
!   ^^^^^^^^^^^^^^^  -meta.annotation.node-attributes.output
    ===============
    ]
!   ^   entity.name.tag.block-node.raw.output.end
!   ^  -source.block.output.content

[-  ***********************
    Output Block Attributes
    *********************** -]

    [output ( )
!           ^     punctuation.section.group.begin
!           ^^^   meta.annotation.node-attributes.output
!             ^   punctuation.section.group.end
    """
    """
    ]
!   ^   entity.name.tag.block-node.raw.output.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [output (id = my_block)
!            ^^                entity.other.attribute-name.id
!               ^              keyword.operator.assignment
!                 ^^^^^^^^     string.unquoted.id
!                 ^^^^^^^^     meta.toc-list.id
!           ^^^^^^^^^^^^^^^    meta.annotation.node-attributes.output
!   ^^^^^^^                   -meta.annotation.node-attributes.output
    """
    """
    ]
!   ^   entity.name.tag.block-node.raw.output.end

    [output
    (id = my_block)
!   ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.output
    """""""""""""""
    pmlc p2h xy.pml
!   ^^^^^^^^^^^^^^^   source.block.output.content
    """""""""""""""
    ]

    [output
    (id = my_block)
    """""""""""""""
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.begin
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.output.begin
!   ^^^^^^^^^^^^^^^  -source.block.output.content
    pmlc p2h xy.pml
!   ^^^^^^^^^^^^^^^   source.block.output.content
    """""""""""""""
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.end
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.output.end
!   ^^^^^^^^^^^^^^^  -source.block.output.content
    ]
!   ^   entity.name.tag.block-node.raw.output.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [output (id = $$$$$$$$)
!                 ^^^^^^^^    invalid.illegal.id
!                         ^  -invalid.illegal.id
!           ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.output
!   ^^^^^^^^                 -meta.annotation.node-attributes.output
!           ^                 punctuation.section.group.begin
!                         ^   punctuation.section.group.end
!   ^^^^^^                    entity.name.tag.block-node.raw.output.begin
    ~~~~
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.output.end

    [output ( id = àààààààà )
!                  ^^^^^^^^     invalid.illegal.id
!                          ^^  -invalid.illegal.id
!           ^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.output
!                           ^   punctuation.section.group.end
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.output.end

[-  --------------
    ID -> No Value
    -------------- -]

    [output (id = )
!            ^^       entity.other.attribute-name.id
!           ^         punctuation.section.group.begin
!           ^^^^^^^   meta.annotation.node-attributes.output
!                 ^   punctuation.section.group.end
!               ^     keyword.operator.assignment
!                ^   -string.unquoted.id
!                ^   -meta.toc-list.id
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.output.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [output (html_style = "color:red;")
!           ^^^^^^^^^^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.output
!            ^^^^^^^^^^                    entity.other.attribute-name.html
!                       ^                  keyword.operator.assignment
!                         ^^^^^^^^^^^^     string.quoted.double
!                         ^                punctuation.definition.string.begin
!                                    ^     punctuation.definition.string.end
!                                     ^^  -string.quoted.double
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.output.end

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [output (html_style = color:red )
!           ^^^^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.output
!                                   ^   punctuation.section.group.end
!            ^^^^^^^^^^                 entity.other.attribute-name.html
!                       ^               keyword.operator.assignment
!                         ^^^^^^^^^     string.unquoted
!                                  ^^  -string.unquoted
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.output.end

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [output (html_style = )
!           ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.output
!                         ^   punctuation.section.group.end
!             ^^^^^^^^^       entity.other.attribute-name.html
!                       ^     keyword.operator.assignment
!                        ^^  -string
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.output.end

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [output ( xyzzy = zip )
!           ^                 punctuation.section.group.begin
!           ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.output
!                         ^   punctuation.section.group.end
!             ^^^^^           entity.other.attribute-name.unknown
!                   ^         keyword.operator.assignment
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.output.end
