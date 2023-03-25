! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Footnotes Placeholder]


  [fnotes]
! ^^^^^^^^   meta.block-node.footnotes-placeholder
! ^^^^^^^    entity.name.tag.block-node.footnotes-placeholder.begin
!        ^   entity.name.tag.block-node.footnotes-placeholder.end

  [fnotes  ]
! ^^^^^^^^^^   meta.block-node.footnotes-placeholder
! ^^^^^^^      entity.name.tag.block-node.footnotes-placeholder.begin
!          ^   entity.name.tag.block-node.footnotes-placeholder.end


[-  *************************
    Attributes in Parentheses
    ************************* -]

[-  --------------
    ID -> Valid ID
    -------------- -]

  [fnotes (id=fns_1)]
!         ^^^^^^^^^^    meta.annotation.node-attributes.footnotes-placeholder
!         ^             punctuation.section.group.begin
!                  ^    punctuation.section.group.end
!          ^^           entity.other.attribute-name.id
!            ^          keyword.operator.assignment
!             ^^^^^     string.unquoted.id
!             ^^^^^     meta.toc-list.id
!                   ^   entity.name.tag.block-node.footnotes-placeholder.end

  [fnotes (id="fns_2")]
!              ^^^^^      string.quoted.id
!              ^^^^^      meta.toc-list.id
!             ^           punctuation.definition.string.begin
!                   ^     punctuation.definition.string.end

[-  ---------------
    HTML ATTRIBUTES
    --------------- -]

  [fnotes (html_class=fnotes)]
!         ^                      punctuation.section.group.begin
!                           ^    punctuation.section.group.end
!          ^^^^^^^^^^            entity.other.attribute-name.html
!                    ^           keyword.operator.assignment
!                     ^^^^^^     string.unquoted
!                            ^   entity.name.tag.block-node.footnotes-placeholder.end

  [fnotes (html_class="fnotes")]
!                     ^            punctuation.definition.string.begin
!                            ^     punctuation.definition.string.end
!                     ^^^^^^^^     string.quoted.double


[-  ******************
    Attributes Lenient
    ****************** -]

[-  --------------
    ID -> Valid ID
    -------------- -]

  [fnotes id=fns_3]
!         ^^          entity.other.attribute-name.id
!           ^         keyword.operator.assignment
!             ^^^^    string.unquoted.id
!             ^^^^    meta.toc-list.id
!                 ^   entity.name.tag.block-node.footnotes-placeholder.end

  [fnotes id="fns_4"]
!             ^^^^^     string.quoted.id
!             ^^^^^     meta.toc-list.id
!            ^          punctuation.definition.string.begin
!                  ^    punctuation.definition.string.end

[-  ---------------
    HTML ATTRIBUTES
    --------------- -]

  [fnotes html_class=fnotes]
!         ^^^^^^^^^^           entity.other.attribute-name.html
!                   ^          keyword.operator.assignment
!                    ^^^^^^    string.unquoted
!                          ^   entity.name.tag.block-node.footnotes-placeholder.end

  [fnotes html_class="fnotes"]
!                    ^            punctuation.definition.string.begin
!                           ^     punctuation.definition.string.end
!                    ^^^^^^^^     string.quoted.double

]
!<- entity.name.tag.block-node.document.end
