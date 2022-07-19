! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [code print('Hello!')
!   ^^^^^^^^^^^^^^^^^^^^^   meta.embedded.block.listing
!   ^^^^^                   entity.name.tag.block-node.raw.listing.begin
!        ^^^^^^^^^^^^^^^^  -entity.name.tag.block-node.raw.listing.begin
!         ^^^^^^^^^^^^^^^   source.block.listing.content
!   ^^^^^^                 -source.block.listing.content
    code]


    [code
!   ^^^^^   meta.embedded.block.listing
!   ^^^^^   entity.name.tag.block-node.raw.listing.begin
!   ^^^^^  -source.block.listing.content
    print('Hello!')
!   ^^^^^   meta.embedded.block.listing
!   ^^^^^   source.block.listing.content
!   ^^^^^  -meta.annotation.node-attributes.listing
    code]
!   ^^^^^   meta.embedded.block.listing
!   ^^^^^   entity.name.tag.block-node.raw.listing.end
!   ^^^^^  -source.block.listing.content

[-  *********************
    Code Block Attributes
    ********************* -]

    [code ( ) code]
!         ^           punctuation.section.group.begin
!         ^^^         meta.annotation.node-attributes.listing
!           ^         punctuation.section.group.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [code (id = my_block) code]
!          ^^                     entity.other.attribute-name.id
!             ^                   keyword.operator.assignment
!               ^^^^^^^^          string.unquoted.id
!               ^^^^^^^^          meta.toc-list.id
!         ^^^^^^^^^^^^^^^         meta.annotation.node-attributes.listing
!   ^^^^^^                       -meta.annotation.node-attributes.listing
!                        ^^^^^^  -meta.annotation.node-attributes.listing

    [code
    (id = my_block)
!   ^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
    print('Hello!')
!   ^^^^^^^^^^^^^^^   source.block.listing.content
    code]
!   ^^^^^   meta.embedded.block.listing
!   ^^^^^   entity.name.tag.block-node.raw.listing.end
!   ^^^^^  -source.block.listing.content

[-  ---------------
    ID -> Malformed
    --------------- -]

    [code (id = $$$$$$$$) code]
!               ^^^^^^^^          invalid.illegal.id
!                       ^^^^^^^  -invalid.illegal.id
!         ^^^^^^^^^^^^^^^         meta.annotation.node-attributes.listing
!   ^^^^^^                       -meta.annotation.node-attributes.listing
!                        ^^^^^^  -meta.annotation.node-attributes.listing
!                        ^        source.block.listing.content
!         ^                       punctuation.section.group.begin
!                       ^         punctuation.section.group.end
!   ^^^^^                         entity.name.tag.block-node.raw.listing.begin
!                         ^^^^^   entity.name.tag.block-node.raw.listing.end

    [code ( id = àààààààà ) code]
!                ^^^^^^^^           invalid.illegal.id
!                        ^^^^^^^^  -invalid.illegal.id
!          ^^^^^^^^^^^^^^^^         meta.annotation.node-attributes.listing
!                         ^         punctuation.section.group.end

[-  --------------
    ID -> No Value
    -------------- -]

    [code (id = ) x=1; code]
!          ^^                  entity.other.attribute-name.id
!         ^                    punctuation.section.group.begin
!         ^^^^^^^              meta.annotation.node-attributes.listing
!               ^              punctuation.section.group.end
!             ^                keyword.operator.assignment
!              ^              -string.unquoted.id
!              ^              -meta.toc-list.id
!                ^^^^^^        source.block.listing.content

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [code (html_style = "color:red;") x=1; code]
!         ^^^^^^^^^^^^^^^^^^^^^^^^^^               meta.annotation.node-attributes.listing
!          ^^^^^^^^^^                              entity.other.attribute-name.html
!                     ^                            keyword.operator.assignment
!                       ^^^^^^^^^^^^               string.quoted.double
!                       ^                          punctuation.definition.string.begin
!                                  ^               punctuation.definition.string.end
!                                   ^^^^^^^^^^^^  -string.quoted.double
!                                    ^^^^^^        source.block.listing.content

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [code (html_style = color:red ) x=1; code]
!          ^^^^^^^^^^^^^^^^^^^^^^^^              meta.annotation.node-attributes.listing
!                                 ^              punctuation.section.group.end
!          ^^^^^^^^^^                            entity.other.attribute-name.html
!                     ^                          keyword.operator.assignment
!                       ^^^^^^^^^                string.unquoted
!                                ^^^^^^^^^^^^^  -string.unquoted
!                                  ^^^^^^        source.block.listing.content

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [code (html_style = ) x=1; code]
!          ^^^^^^^^^^^^^^              meta.annotation.node-attributes.listing
!                       ^              punctuation.section.group.end
!           ^^^^^^^^^                  entity.other.attribute-name.html
!                     ^                keyword.operator.assignment
!                      ^^^^^^^^^^     -string
!                         ^^^^^        source.block.listing.content

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [code ( xyzzy = zip ) code]
!         ^                       punctuation.section.group.begin
!         ^^^^^^^^^^^^^^^         meta.annotation.node-attributes.listing
!                       ^         punctuation.section.group.end
!           ^^^^^                 entity.other.attribute-name.unknown
!                 ^               keyword.operator.assignment
!                        ^        source.block.listing.content
!                         ^^^^^   entity.name.tag.block-node.raw.listing.end
