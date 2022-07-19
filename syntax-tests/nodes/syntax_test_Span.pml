! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Inline Nodes: Span]

    Span [span is useful].
!        ^^^^^^^^^^^^^^^^   markup.span
!        ^^^^^              entity.name.tag.inline-node.span.begin
!                       ^   entity.name.tag.inline-node.span.end

    This [span span spans
    across multiple
    lines]
!   ^^^^^    markup.span
!        ^   entity.name.tag.inline-node.span.end

]
