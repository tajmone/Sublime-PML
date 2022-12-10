! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

Unknown nodes are handled via a generic catch-all scope meant
to ensure that the syntax will somehow handle new nodes that
are not yet covered, or custom defined nodes.


    [whatever ]
!   ^^^^^^^^^     entity.name.tag.unknown.begin
!             ^   entity.name.tag.unknown.end

    [unknown
!   ^^^^^^^^   entity.name.tag.unknown.begin
    ]
!   ^          entity.name.tag.unknown.end

    [unknown
!   ^^^^^^^^   entity.name.tag.unknown.begin

    Lorem ipsum dolor sit amet.

    (just text, not attributes)
!    ^^^^^^^^^^^^^^^^^^^^^^^^^   -meta.group.node-attributes.unknown
!   ^                            -punctuation.section.group.begin
!                             ^  -punctuation.section.group.end

    ]
!   ^          entity.name.tag.unknown.end



The generic unknown-node scope supports generic attributes:
ID, HTML Attributes, and unknown attribute.

  [whatever (id=someID) ]
!            ^^^^^^^^^      meta.group.node-attributes.unknown
!            ^^             entity.other.attribute-name.id
!              ^            keyword.operator.assignment
!                ^^^^^      string.unquoted.id
!                ^^^^^      meta.toc-list.id

  [whatever (html_class="red") ]
!            ^^^^^^^^^^^^^^^^     meta.group.node-attributes.unknown
!            ^^^^^^^^^^           entity.other.attribute-name.html
!                      ^          keyword.operator.assignment
!                       ^^^^^     string.quoted.double
!                       ^         punctuation.definition.string.begin
!                            ^    entity.name.tag.unknown.contents punctuation.section.group.end

  [whatever (xyz=xyzzy) ]
!            ^^^^^^^^^            meta.group.node-attributes.unknown
!            ^^^                  entity.other.attribute-name.unknown
!               ^                 keyword.operator.assignment
