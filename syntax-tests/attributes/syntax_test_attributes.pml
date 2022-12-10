! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Attributes Tests]

Check that attributes are parsed properly when split
across multiple lines:

[ch (
  id=ch_1)[title Some Chapter]]
! ^^            entity.other.attribute-name.id
!   ^           keyword.operator.assignment
!    ^^^^       string.unquoted.id
!    ^^^^       meta.toc-list.id
!        ^      punctuation.section.group.end
!^^^^^^^^^      meta.annotation.node-attributes.chapter
!         ^^^^ -meta.annotation.node-attributes.chapter

[quote (id=ch2
  html_class=red) Lorem]
! ^^^^^^^^^^             entity.other.attribute-name.html
!           ^            keyword.operator.assignment
!            ^^^         string.unquoted
!^^^^^^^^^^^^^^^^        meta.annotation.node-attributes.quote
!                ^^^^^^ -meta.annotation.node-attributes.quote



[- doc end -]
]
!<-  entity.name.tag.block-node.document.end
