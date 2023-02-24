! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [code
    ~~~~~~~~~~~~~~~
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.begin
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.begin
    print('Hello!')
!   ^^^^^^^^^^^^^^^   source.block.listing.content
!   ^^^^^^^^^^^^^^^   meta.embedded.block.listing
    ~~~~~~~~~~~~~~~
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.end
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.end
!   ^^^^^^^^^^^^^^^  -source.block.listing.content
    ]
!   ^   entity.name.tag.block-node.raw.listing.end


  [- ** WARNING! ** Adding checks between the '[code` line and the opening
        delimiter results in the node being parsed as a Standard Text Syntax
        rather than Delimited Text Syntax!
          While this is fine for all practical purposes, just keep in mind
        that tests for the '[code` tag and its attributes will prevent the
        delimiters from being scoped correctly -- which is how the PML parser
        actually works in real life!
  -]

    [code
!   ^^^^^   entity.name.tag.block-node.raw.listing.begin
!   ^^^^^  -source.block.listing.content
    ===============
    print('Hello!')
!   ^^^^^^^^^^^^^^^   meta.embedded.block.listing
!   ^^^^^^^^^^^^^^^   source.block.listing.content
!   ^^^^^^^^^^^^^^^  -meta.annotation.node-attributes.listing
    ===============
    ]
!   ^   entity.name.tag.block-node.raw.listing.end
!   ^  -source.block.listing.content

[-  *********************
    Code Block Attributes
    ********************* -]

    [code ( )
!         ^     punctuation.section.group.begin
!         ^^^   meta.annotation.node-attributes.listing
!           ^   punctuation.section.group.end
    """
    """
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [code (id = my_block)
!          ^^                entity.other.attribute-name.id
!             ^              keyword.operator.assignment
!               ^^^^^^^^     string.unquoted.id
!               ^^^^^^^^     meta.toc-list.id
!         ^^^^^^^^^^^^^^^    meta.annotation.node-attributes.listing
!   ^^^^^^                  -meta.annotation.node-attributes.listing
    """
    """
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

    [code
    (id = my_block)
!   ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
    """""""""""""""
    print('Hello!')
!   ^^^^^^^^^^^^^^^   source.block.listing.content
    """""""""""""""
    ]

    [code
    (id = my_block)
    """""""""""""""
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.begin
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.begin
!   ^^^^^^^^^^^^^^^  -source.block.listing.content
    print('Hello!')
!   ^^^^^^^^^^^^^^^   source.block.listing.content
    """""""""""""""
!   ^^^^^^^^^^^^^^^^  meta.code-fence.definition.end
!   ^^^^^^^^^^^^^^^^  punctuation.definition.raw.code-fence.end
!   ^^^^^^^^^^^^^^^  -source.block.listing.content
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [code (id = $$$$$$$$)
!               ^^^^^^^^    invalid.illegal.id
!                       ^  -invalid.illegal.id
!         ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
!   ^^^^^^                 -meta.annotation.node-attributes.listing
!         ^                 punctuation.section.group.begin
!                       ^   punctuation.section.group.end
!   ^^^^^                   entity.name.tag.block-node.raw.listing.begin
    ~~~~
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

    [code ( id = àààààààà )
!                ^^^^^^^^     invalid.illegal.id
!                        ^^  -invalid.illegal.id
!          ^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
!                         ^   punctuation.section.group.end
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

[-  --------------
    ID -> No Value
    -------------- -]

    [code (id = )
!          ^^       entity.other.attribute-name.id
!         ^         punctuation.section.group.begin
!         ^^^^^^^   meta.annotation.node-attributes.listing
!               ^   punctuation.section.group.end
!             ^     keyword.operator.assignment
!              ^   -string.unquoted.id
!              ^   -meta.toc-list.id
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [code (html_style = "color:red;")
!         ^^^^^^^^^^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.listing
!          ^^^^^^^^^^                    entity.other.attribute-name.html
!                     ^                  keyword.operator.assignment
!                       ^^^^^^^^^^^^     string.quoted.double
!                       ^                punctuation.definition.string.begin
!                                  ^     punctuation.definition.string.end
!                                   ^^  -string.quoted.double
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [code (html_style = color:red )
!          ^^^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
!                                 ^   punctuation.section.group.end
!          ^^^^^^^^^^                 entity.other.attribute-name.html
!                     ^               keyword.operator.assignment
!                       ^^^^^^^^^     string.unquoted
!                                ^^  -string.unquoted
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [code (html_style = )
!          ^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
!                       ^   punctuation.section.group.end
!           ^^^^^^^^^       entity.other.attribute-name.html
!                     ^     keyword.operator.assignment
!                      ^^  -string
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.listing.end

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [code ( xyzzy = zip )
!         ^                 punctuation.section.group.begin
!         ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
!                       ^   punctuation.section.group.end
!           ^^^^^           entity.other.attribute-name.unknown
!                 ^         keyword.operator.assignment
    ~~~~
    x=2;
    ~~~~
    ]
!   ^   entity.name.tag.block-node.raw.listing.end
