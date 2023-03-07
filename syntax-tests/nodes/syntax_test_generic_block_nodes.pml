! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Generic Block Node Scoping]

While waiting implementation, the remaining block nodes are
handled via a generic catch-all scope, so that known native
block-nodes can be distinguished from inline-nodes.

  [admon Lorem]
! ^^^^^^         entity.name.tag.block-node.generic.begin
!             ^  entity.name.tag.block-node.generic.end

  [audio Lorem]
! ^^^^^^         entity.name.tag.block-node.generic.begin
!             ^  entity.name.tag.block-node.generic.end

  [caption Lorem]
! ^^^^^^^^         entity.name.tag.block-node.generic.begin
!               ^  entity.name.tag.block-node.generic.end

  [div Lorem]
! ^^^^         entity.name.tag.block-node.generic.begin
!           ^  entity.name.tag.block-node.generic.end

  [el Lorem]
! ^^^         entity.name.tag.block-node.generic.begin
!          ^  entity.name.tag.block-node.generic.end

  [fnote_def Lorem]
! ^^^^^^^^^^         entity.name.tag.block-node.generic.begin
!                 ^  entity.name.tag.block-node.generic.end

  [fnotes Lorem]
! ^^^^^^^         entity.name.tag.block-node.generic.begin
!              ^  entity.name.tag.block-node.generic.end

  [header Lorem]
! ^^^^^^^         entity.name.tag.block-node.generic.begin
!              ^  entity.name.tag.block-node.generic.end

  [image Lorem]
! ^^^^^^         entity.name.tag.block-node.generic.begin
!             ^  entity.name.tag.block-node.generic.end

  [insert_code Lorem]
! ^^^^^^^^^^^^         entity.name.tag.block-node.generic.begin
!                   ^  entity.name.tag.block-node.generic.end

  [list Lorem]
! ^^^^^         entity.name.tag.block-node.generic.begin
!            ^  entity.name.tag.block-node.generic.end

  [monospace Lorem]
! ^^^^^^^^^^         entity.name.tag.block-node.generic.begin
!                 ^  entity.name.tag.block-node.generic.end

  [note Lorem]
! ^^^^^         entity.name.tag.block-node.generic.begin
!            ^  entity.name.tag.block-node.generic.end

  [table Lorem]
! ^^^^^^         entity.name.tag.block-node.generic.begin
!             ^  entity.name.tag.block-node.generic.end

  [table_data Lorem]
! ^^^^^^^^^^^         entity.name.tag.block-node.generic.begin
!                  ^  entity.name.tag.block-node.generic.end

  [tc Lorem]
! ^^^         entity.name.tag.block-node.generic.begin
!          ^  entity.name.tag.block-node.generic.end

  [tfooter Lorem]
! ^^^^^^^^         entity.name.tag.block-node.generic.begin
!               ^  entity.name.tag.block-node.generic.end

  [theader Lorem]
! ^^^^^^^^         entity.name.tag.block-node.generic.begin
!               ^  entity.name.tag.block-node.generic.end

  [tr Lorem]
! ^^^         entity.name.tag.block-node.generic.begin
!          ^  entity.name.tag.block-node.generic.end

  [video Lorem]
! ^^^^^^         entity.name.tag.block-node.generic.begin
!             ^  entity.name.tag.block-node.generic.end

  [youtube_video Lorem]
! ^^^^^^^^^^^^^^         entity.name.tag.block-node.generic.begin
!                     ^  entity.name.tag.block-node.generic.end

[- doc end -]
]
