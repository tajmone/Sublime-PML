! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

  [input X=10;]
! ^^^^^^         entity.name.tag.block-node.raw.input.begin
!        ^^^^^   source.block.input.content
!        ^^^^^   meta.embedded.block.input
!             ^  entity.name.tag.block-node.raw.input.end

[-  **********************
    Input Block Attributes
    ********************** -]

  [input ( ) pmlc p2h xy.pml]
! ^^^^^^                       entity.name.tag.block-node.raw.input.begin
!        ^^^                   meta.annotation.node-attributes.input
!            ^^^^^^^^^^^^^^^   source.block.input.content
!            ^^^^^^^^^^^^^^^   meta.embedded.block.input
!                           ^  entity.name.tag.block-node.raw.input.end

[-  --------------
    ID -> Valid ID
    -------------- -]

  [input (id=print) pmlc p2h xy.pml]
! ^^^^^^                              entity.name.tag.block-node.raw.input.begin
!        ^^^^^^^^^^                   meta.annotation.node-attributes.input
!         ^^                          entity.other.attribute-name.id
!           ^                         keyword.operator.assignment
!            ^^^^^                    string.unquoted.id
!            ^^^^^                    meta.toc-list.id
!                   ^^^^^^^^^^^^^^^   source.block.input.content
!                   ^^^^^^^^^^^^^^^   meta.embedded.block.input
!                                  ^  entity.name.tag.block-node.raw.input.end


  [- The following is still valid Standard Text Syntax: -]

  [input
  (id=print) pmlc p2h xy.pml]
! ^^^^^^^^^^                   meta.annotation.node-attributes.input
!  ^^                          entity.other.attribute-name.id
!    ^                         keyword.operator.assignment
!     ^^^^^                    string.unquoted.id
!     ^^^^^                    meta.toc-list.id
!            ^^^^^^^^^^^^^^^   source.block.input.content
!            ^^^^^^^^^^^^^^^   meta.embedded.block.input
!                           ^  entity.name.tag.block-node.raw.input.end

[-  ---------------
    ID -> Malformed
    --------------- -]

  [input (id = $$$$$$$$) XZY]
!              ^^^^^^^^         invalid.illegal.id
!                      ^       -invalid.illegal.id
!        ^^^^^^^^^^^^^^^        meta.annotation.node-attributes.input
! ^^^^^^^                      -meta.annotation.node-attributes.input
!        ^                      punctuation.section.group.begin
!                      ^        punctuation.section.group.end
! ^^^^^^                        entity.name.tag.block-node.raw.input.begin

[-  --------------
    ID -> No Value
    -------------- -]

  [input (id = ) XZY]
!        ^^^^^^^        meta.annotation.node-attributes.input
!             ^        -string.unquoted.id
!             ^        -meta.toc-list.id
! ^^^^^^^              -meta.annotation.node-attributes.input
!        ^              punctuation.section.group.begin
!              ^        punctuation.section.group.end
! ^^^^^^                entity.name.tag.block-node.raw.input.begin

[- ** NOTE ** For more attributes tests see "syntax_test_Input_delimited.pml"
      since both the Standard and Delimited Syntax share the same scopes
      for handling attributes; so there's no need to repeat those tests
      here too. -]
