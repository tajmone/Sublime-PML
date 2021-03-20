! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Fundamental Nodes: Chapter

    [chapter title = H1 title
!   ^^^^^^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^^^^^^                   meta.block.chapter punctuation.definition.section.block.chapter.begin
!            ^^^^^             entity.other.attribute-name.title
!                  ^           keyword.operator.assignment
!                    ^^^^^^^^  entity.name.section markup.heading meta.toc-list
    ]
!   ^                          meta.block.chapter punctuation.definition.section.block.chapter.end

    outside chapter
!   ^^^^^^^^^^^^^^^^         - meta.block.chapter

    [chapter title = "my \"title\""
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.block.chapter
!   ^^^^^^^^                         punctuation.definition.section.block.chapter.begin
!            ^^^^^                   entity.other.attribute-name.title
!                  ^                 keyword.operator.assignment
!                    ^^^^^^^^^^^^^^  entity.name.section markup.heading meta.toc-list
!                    ^               punctuation.definition.string.begin
!                                 ^  punctuation.definition.string.end
!                        ^^          constant.character.escape.pml
    ]
!   ^                                punctuation.definition.section.block.chapter.end
