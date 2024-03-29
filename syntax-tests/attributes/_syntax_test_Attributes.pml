! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Attributes Test

    [ch title = Unimplemented Nodes & Attributes

    These are temporary scopes, to cover the unimplemented nodes and attributes.
    When these nodes and their attributes are implemented, the tests will need
    to be fixed accordingly.

    [image src=img/smile.jpg ]
!   ^^^^^^                      entity.name.tag.unknown.begin
!                            ^  entity.name.tag.unknown.end
!          ^^^                  entity.other.attribute-name.unknown
!             ^                 keyword.operator.assignment

    [image src=img/smile.jpg \
        link = https://example.com]
!       ^^^^                         entity.other.attribute-name.unknown
!            ^                       keyword.operator.assignment
!                                 ^  entity.name.tag.unknown.end

    [image src=img/smile.jpg \
[- !                         ^ punctuation.separator.continuation
-]         link = https://example.com]
!          ^^^^                         entity.other.attribute-name.unknown
!               ^                       keyword.operator.assignment
!                                    ^  entity.name.tag.unknown.end


    ]
!   ^ entity.name.tag.block-node.section.end

]
!<-  entity.name.tag.block-node.document.end

[- PENDING TASKS:

    * [ ] Remove line-continuations.

-]
