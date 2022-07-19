! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc (TOC_title=TOC)
!     ^^^^^^^^^^^^^   meta.annotation.node-attributes.document
!     ^^^^^^^^^       entity.other.attribute-name.unknown
!    ^                punctuation.section.group.begin
!                  ^  punctuation.section.group.end
!              ^      keyword.operator.assignment
[title Unknown Attributes Test]

[ch [title Unimplemented Attributes]

These are temporary scopes, to cover the unimplemented attributes.
When these attributes are implemented on their nodes, the tests will
need to be fixed accordingly.

    [xyzzy (source=img/smile.jpg) ]
!   ^^^^^^                           entity.name.tag.unknown.begin
!          ^                         punctuation.section.group.begin
!                               ^    punctuation.section.group.end
!                                 ^  entity.name.tag.unknown.end
!           ^^^^^^^^^^^^^^^^^^^^     meta.group.node-attributes.unknown

    [abc

    (def=15)]
!    ^^^^^^     meta.group.node-attributes.unknown
!   ^           punctuation.section.group.begin
!          ^    punctuation.section.group.end


]]
!<-  entity.name.tag.block-node.chapter.end
!^   entity.name.tag.block-node.document.end
