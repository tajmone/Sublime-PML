! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Inline Nodes: Inline Footnote]

  Lorem[fnote  Note text]
!      ^^^^^^              entity.name.tag.inline-node.inline-footnote.begin
!                       ^  entity.name.tag.inline-node.inline-footnote.end
!              ^^^^^^^^^   markup.other.footnote
! ^^^^^^^^^^^^^           -markup.other.footnote

[- NOTE:  Leading space is not scopes as 'markup.other.footnote' when
          there are no attributes! -]

[-  ***************
    HTML Attributes
    *************** -]

  Lorem[fnote (html_class=xnote) Note text]
!                               ^^^^^^^^^^   markup.other.footnote
! ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^            -markup.other.footnote
!             ^                              punctuation.section.group.begin
!                              ^             punctuation.section.group.end
!              ^^^^^^^^^^                    meta.group.node-attributes.inline-footnote
!              ^^^^^^^^^^                    entity.other.attribute-name.html
!                        ^                   keyword.operator.assignment
!                         ^^^^^              string.unquoted
!      ^^^^^^                                entity.name.tag.inline-node.inline-footnote.begin
!                                         ^  entity.name.tag.inline-node.inline-footnote.end


  Lorem[fnote
        (html_class="xnote") Note text]
!                   ^^^^^^^              string.quoted.double
!                   ^                    punctuation.definition.string.begin
!                         ^              punctuation.definition.string.end

]
