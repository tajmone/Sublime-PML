! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Generic Block Node Scoping]

The generic block-node scope supports generic attributes:
ID, HTML Attributes, and unknown attribute.

  [admon ( )]
!         ^^  meta.annotation.node-attributes.generic

  [admon ( id=AnID )]
!         ^^^^^^^^^   meta.annotation.node-attributes.generic
!          ^^         entity.other.attribute-name.id
!            ^        keyword.operator.assignment
!             ^^^^    string.unquoted.id meta.toc-list.id
!             ^^^^    meta.toc-list.id

  [admon ( html_style = "text-align: right" )]
!          ^^^^^^^^^^                          entity.other.attribute-name.html
!                       ^^^^^^^^^^^^^^^^^^^    string.quoted.double

  [admon ( xyz=some )]
!          ^^^           entity.other.attribute-name.unknown
!             ^          keyword.operator.assignment


Attributes spread across multiple lines:

  [admon (
    id=AnID) Lorem
!   ^^                entity.other.attribute-name.id
!          ^          punctuation.section.group.end
!^^^^^^^^^^^          meta.annotation.node-attributes.generic
!           ^^^^^^   -meta.annotation.node-attributes.generic
  [admon (
    id=AnID
    html_class="red"
!   ^^^^^^^^^^           entity.other.attribute-name.html
!             ^          keyword.operator.assignment
!              ^^^^^     string.quoted.double
    )]

[- doc end -]
]
