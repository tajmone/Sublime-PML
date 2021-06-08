! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

[-  NOTE: `print('Hello!')` is *not* being scoped as:
        source.block.listing.content
    this needs to be fixed.
-]

    [code print('Hello!')
!   ^^^^^^^^^^^^^^^^^^^^^   meta.embedded.block.listing
!   ^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
!   ^^^^^                   punctuation.definition.listing.begin
!        ^^^^^^^^^^^^^^^^  -punctuation.definition.listing.begin
!   ^^^^^                  -source.block.listing.content
    code]


    [code
!   ^^^^^   meta.embedded.block.listing
!   ^^^^^   meta.annotation.node-attributes.listing
!   ^^^^^   punctuation.definition.listing.begin
!   ^^^^^  -source.block.listing.content
    print('Hello!')
!   ^^^^^   meta.embedded.block.listing
!   ^^^^^   source.block.listing.content
!   ^^^^^  -meta.annotation.node-attributes.listing
    code]
!   ^^^^^   meta.embedded.block.listing
!   ^^^^^   meta.embedded.block.listing
!   ^^^^^   punctuation.definition.listing.end
!   ^^^^^  -source.block.listing.content

    [code id = my_block
!   ^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
!         ^^              entity.other.attribute-name.id.pml
!            ^            keyword.operator.assignment.pml
!              ^^^^^^^^   string.unquoted.id.pml
!              ^^^^^^^^   meta.toc-list.id.pml
    code]


    [code   id = my_block \
            title=Just a Block
!           ^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.listing
!           ^^^^^                entity.other.attribute-name.unknown
!                ^               keyword.operator.assignment.pml
    code]
