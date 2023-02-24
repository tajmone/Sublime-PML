! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

  [code X=10;]
! ^^^^^         entity.name.tag.block-node.raw.listing.begin
!       ^^^^^   source.block.listing.content
!       ^^^^^   meta.embedded.block.listing
!            ^  entity.name.tag.block-node.raw.listing.end

[-  *********************
    Code Block Attributes
    ********************* -]

  [code ( ) Print("Hello")]
! ^^^^^                      entity.name.tag.block-node.raw.listing.begin
!       ^^^                  meta.annotation.node-attributes.listing
!           ^^^^^^^^^^^^^^   source.block.listing.content
!           ^^^^^^^^^^^^^^   meta.embedded.block.listing
!                         ^  entity.name.tag.block-node.raw.listing.end

[-  --------------
    ID -> Valid ID
    -------------- -]

  [code (id=print) Print("Hello")]
! ^^^^^                             entity.name.tag.block-node.raw.listing.begin
!       ^^^^^^^^^^                  meta.annotation.node-attributes.listing
!        ^^                         entity.other.attribute-name.id
!          ^                        keyword.operator.assignment
!           ^^^^^                   string.unquoted.id
!           ^^^^^                   meta.toc-list.id
!                  ^^^^^^^^^^^^^^   source.block.listing.content
!                  ^^^^^^^^^^^^^^   meta.embedded.block.listing
!                                ^  entity.name.tag.block-node.raw.listing.end


  [- The following is still valid Standard Text Syntax: -]

  [code
  (id=print) Print("Hello")]
! ^^^^^^^^^^                  meta.annotation.node-attributes.listing
!  ^^                         entity.other.attribute-name.id
!    ^                        keyword.operator.assignment
!     ^^^^^                   string.unquoted.id
!     ^^^^^                   meta.toc-list.id
!            ^^^^^^^^^^^^^^   source.block.listing.content
!            ^^^^^^^^^^^^^^   meta.embedded.block.listing
!                          ^  entity.name.tag.block-node.raw.listing.end

[-  ---------------
    ID -> Malformed
    --------------- -]

  [code (id = $$$$$$$$) XZY]
!             ^^^^^^^^         invalid.illegal.id
!                     ^       -invalid.illegal.id
!       ^^^^^^^^^^^^^^^        meta.annotation.node-attributes.listing
! ^^^^^^                      -meta.annotation.node-attributes.listing
!       ^                      punctuation.section.group.begin
!                     ^        punctuation.section.group.end
! ^^^^^                        entity.name.tag.block-node.raw.listing.begin

[-  --------------
    ID -> No Value
    -------------- -]

  [code (id = ) XZY]
!       ^^^^^^^        meta.annotation.node-attributes.listing
!            ^        -string.unquoted.id
!            ^        -meta.toc-list.id
! ^^^^^^              -meta.annotation.node-attributes.listing
!       ^              punctuation.section.group.begin
!             ^        punctuation.section.group.end
! ^^^^^                entity.name.tag.block-node.raw.listing.begin

[- ** NOTE ** For more attributes tests see "syntax_test_Code_delimited.pml"
      since both the Standard and Delimited Syntax share the same scopes
      for handling attributes; so there's no need to repeat those tests
      here too. -]
