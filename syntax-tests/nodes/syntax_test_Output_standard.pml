! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

  [output X=10;]
! ^^^^^^^         entity.name.tag.block-node.raw.output.begin
!         ^^^^^   source.block.output.content
!         ^^^^^   meta.embedded.block.output
!              ^  entity.name.tag.block-node.raw.output.end

[-  ***********************
    Output Block Attributes
    *********************** -]

  [output ( ) Hello World!]
! ^^^^^^^                    entity.name.tag.block-node.raw.output.begin
!         ^^^                meta.annotation.node-attributes.output
!             ^^^^^^^^^^^^   source.block.output.content
!             ^^^^^^^^^^^^   meta.embedded.block.output
!                         ^  entity.name.tag.block-node.raw.output.end

[-  --------------
    ID -> Valid ID
    -------------- -]

  [output (id=print) Hello World!]
! ^^^^^^^                           entity.name.tag.block-node.raw.output.begin
!         ^^^^^^^^^^                meta.annotation.node-attributes.output
!          ^^                       entity.other.attribute-name.id
!            ^                      keyword.operator.assignment
!             ^^^^^                 string.unquoted.id
!             ^^^^^                 meta.toc-list.id
!                    ^^^^^^^^^^^^   source.block.output.content
!                    ^^^^^^^^^^^^   meta.embedded.block.output
!                                ^  entity.name.tag.block-node.raw.output.end


  [- The following is still valid Standard Text Syntax: -]

  [output
  (id=print) Hello World!]
! ^^^^^^^^^^                meta.annotation.node-attributes.output
!  ^^                       entity.other.attribute-name.id
!    ^                      keyword.operator.assignment
!     ^^^^^                 string.unquoted.id
!     ^^^^^                 meta.toc-list.id
!            ^^^^^^^^^^^^   source.block.output.content
!            ^^^^^^^^^^^^   meta.embedded.block.output
!                        ^  entity.name.tag.block-node.raw.output.end

[-  ---------------
    ID -> Malformed
    --------------- -]

  [output (id = $$$$$$$$) XZY]
!               ^^^^^^^^         invalid.illegal.id
!                       ^       -invalid.illegal.id
!         ^^^^^^^^^^^^^^^        meta.annotation.node-attributes.output
! ^^^^^^^^                      -meta.annotation.node-attributes.output
!         ^                      punctuation.section.group.begin
!                       ^        punctuation.section.group.end
! ^^^^^^^                        entity.name.tag.block-node.raw.output.begin

[-  --------------
    ID -> No Value
    -------------- -]

  [output (id = ) XZY]
!         ^^^^^^^        meta.annotation.node-attributes.output
!              ^        -string.unquoted.id
!              ^        -meta.toc-list.id
! ^^^^^^^^              -meta.annotation.node-attributes.output
!         ^              punctuation.section.group.begin
!               ^        punctuation.section.group.end
! ^^^^^^^                entity.name.tag.block-node.raw.output.begin

[- ** NOTE ** For more attributes tests see "syntax_test_Output_delimited.pml"
      since both the Standard and Delimited Syntax share the same scopes
      for handling attributes; so there's no need to repeat those tests
      here too. -]
