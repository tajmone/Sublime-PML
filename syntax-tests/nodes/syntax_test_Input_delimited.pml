! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [input
    ~~~~~~~~~~~~~~~
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.begin
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.begin
    pmlc p2h xy.pml
!   ^^^^^^^^^^^^^^^   source.block.input.content
!   ^^^^^^^^^^^^^^^   meta.embedded.block.input
    ~~~~~~~~~~~~~~~
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.end
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.end
!   ^^^^^^^^^^^^^^^  -source.block.input.content
    ]
!   ^   entity.name.tag.block-node.raw.input.end


  [- ** WARNING! ** Adding checks between the '[input` line and the opening
        delimiter results in the node being parsed as a Standard Text Syntax
        rather than Delimited Text Syntax!
          While this is fine for all practical purposes, just keep in mind
        that tests for the '[input` tag and its attributes will prevent the
        delimiters from being scoped correctly -- which is how the PML parser
        actually works in real life!
  -]

    [input
!   ^^^^^^   entity.name.tag.block-node.raw.input.begin
!   ^^^^^^  -source.block.input.content
    ===============
    pmlc p2h xy.pml
!   ^^^^^^^^^^^^^^^   meta.embedded.block.input
!   ^^^^^^^^^^^^^^^   source.block.input.content
!   ^^^^^^^^^^^^^^^  -meta.annotation.node-attributes.input
    ===============
    ]
!   ^   entity.name.tag.block-node.raw.input.end
!   ^  -source.block.input.content

[-  **********************
    Input Block Attributes
    ********************** -]

    [input ( )
!          ^     punctuation.section.group.begin
!          ^^^   meta.annotation.node-attributes.input
!            ^   punctuation.section.group.end
    """
    """
    ]
!   ^   entity.name.tag.block-node.raw.input.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [input (id = my_block)
!           ^^                entity.other.attribute-name.id
!              ^              keyword.operator.assignment
!                ^^^^^^^^     string.unquoted.id
!                ^^^^^^^^     meta.toc-list.id
!          ^^^^^^^^^^^^^^^    meta.annotation.node-attributes.input
!   ^^^^^^                   -meta.annotation.node-attributes.input
    """
    """
    ]
!   ^   entity.name.tag.block-node.raw.input.end

    [input
    (id = my_block)
!   ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.input
    """""""""""""""
    pmlc p2h xy.pml
!   ^^^^^^^^^^^^^^^   source.block.input.content
    """""""""""""""
    ]

    [input
    (id = my_block)
    """""""""""""""
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.begin
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.begin
!   ^^^^^^^^^^^^^^^  -source.block.input.content
    pmlc p2h xy.pml
!   ^^^^^^^^^^^^^^^   source.block.input.content
    """""""""""""""
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.end
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.end
!   ^^^^^^^^^^^^^^^  -source.block.input.content
    ]
!   ^   entity.name.tag.block-node.raw.input.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [input (id = $$$$$$$$)
!                ^^^^^^^^    invalid.illegal.id
!                        ^  -invalid.illegal.id
!          ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.input
!   ^^^^^^^                 -meta.annotation.node-attributes.input
!          ^                 punctuation.section.group.begin
!                        ^   punctuation.section.group.end
!   ^^^^^                    entity.name.tag.block-node.raw.input.begin
    ~~~~
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.input.end

    [input ( id = àààààààà )
!                 ^^^^^^^^     invalid.illegal.id
!                         ^^  -invalid.illegal.id
!          ^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.input
!                          ^   punctuation.section.group.end
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.input.end

[-  --------------
    ID -> No Value
    -------------- -]

    [input (id = )
!           ^^       entity.other.attribute-name.id
!          ^         punctuation.section.group.begin
!          ^^^^^^^   meta.annotation.node-attributes.input
!                ^   punctuation.section.group.end
!              ^     keyword.operator.assignment
!               ^   -string.unquoted.id
!               ^   -meta.toc-list.id
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.input.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [input (html_style = "color:red;")
!          ^^^^^^^^^^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.input
!           ^^^^^^^^^^                    entity.other.attribute-name.html
!                      ^                  keyword.operator.assignment
!                        ^^^^^^^^^^^^     string.quoted.double
!                        ^                punctuation.definition.string.begin
!                                   ^     punctuation.definition.string.end
!                                    ^^  -string.quoted.double
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.input.end

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [input (html_style = color:red )
!          ^^^^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.input
!                                  ^   punctuation.section.group.end
!           ^^^^^^^^^^                 entity.other.attribute-name.html
!                      ^               keyword.operator.assignment
!                        ^^^^^^^^^     string.unquoted
!                                 ^^  -string.unquoted
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.input.end

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [input (html_style = )
!          ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.input
!                        ^   punctuation.section.group.end
!            ^^^^^^^^^       entity.other.attribute-name.html
!                      ^     keyword.operator.assignment
!                       ^^  -string
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.input.end

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [input ( xyzzy = zip )
!          ^                 punctuation.section.group.begin
!          ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.input
!                        ^   punctuation.section.group.end
!            ^^^^^           entity.other.attribute-name.unknown
!                  ^         keyword.operator.assignment
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.input.end
