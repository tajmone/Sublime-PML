! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Generic Inline Node Scoping]

While waiting implementation, the remaining inline nodes are
handled via a generic catch-all scope, so that known native
inline-nodes can be distinguished from block-nodes.

  [fnote ( ) xyz]
! ^^^^^^             entity.name.tag.inline-node.generic.begin
!               ^    entity.name.tag.inline-node.generic.end
!        ^^^         meta.annotation.node-attributes.generic
!        ^           punctuation.section.group.begin
!          ^         punctuation.section.group.end
! ^^^^^^^           -meta.annotation.node-attributes.generic
!           ^^^^^^  -meta.annotation.node-attributes.generic

  [fnote_ref ( ) xyz]
! ^^^^^^^^^^           entity.name.tag.inline-node.generic.begin
  [link ( ) xyz]
! ^^^^^                entity.name.tag.inline-node.generic.begin
  [text ( ) xyz]
! ^^^^^                entity.name.tag.inline-node.generic.begin
  [verbatim ( ) xyz]
! ^^^^^^^^^            entity.name.tag.inline-node.generic.begin
  [xref ( ) xyz]
! ^^^^^                entity.name.tag.inline-node.generic.begin

[-  *************
    Nodes Nesting
    ************* -]

  [b [text Lorem]]
! ^^                entity.name.tag.inline-node.bold.begin
!    ^^^^^          entity.name.tag.inline-node.generic.begin
!               ^   entity.name.tag.inline-node.generic.end
!                ^  entity.name.tag.inline-node.bold.end

  [text [i Lorem]]
! ^^^^^             entity.name.tag.inline-node.generic.begin
!       ^^          entity.name.tag.inline-node.italic.begin
!                ^  entity.name.tag.inline-node.generic.end
!               ^   entity.name.tag.inline-node.italic.end

[- doc end -]
]
