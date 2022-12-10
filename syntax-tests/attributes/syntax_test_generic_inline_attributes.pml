! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Generic Block Node Scoping]

The generic inline-node scope supports generic attributes:
HTML Attributes, and unknown attribute.

  [fnote ( )]
!         ^^  meta.annotation.node-attributes.generic

  [fnote ( xyz=some )]
!         ^^^^^^^^^   meta.annotation.node-attributes.generic
!          ^^^        entity.other.attribute-name.unknown
!             ^       keyword.operator.assignment

  [fnote ( html_style = "text-align: right" )]
!          ^^^^^^^^^^                          entity.other.attribute-name.html
!                       ^^^^^^^^^^^^^^^^^^^    string.quoted.double

Attributes spread across multiple lines:

  [fnote (
    xyz=some) Lorem]
!   ^^^                entity.other.attribute-name.unknown
!      ^               keyword.operator.assignment
!           ^          punctuation.section.group.end
!^^^^^^^^^^^^          meta.annotation.node-attributes.generic
!            ^^^^^^   -meta.annotation.node-attributes.generic
!                  ^   entity.name.tag.inline-node.generic.end
  [fnote (
    xyz=some
    html_class="red"
!   ^^^^^^^^^^           entity.other.attribute-name.html
!             ^          keyword.operator.assignment
!              ^^^^^     string.quoted.double
    )]

[- doc end -]
]
