! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Inline Nodes: Span

    Span [span is useful].
!        ^^^^^^^^^^^^^^^^   markup.span
!        ^^^^^              punctuation.definition.span.begin
!                       ^   punctuation.definition.span.end

    This [span span spans
    across multiple
    lines]
!   ^^^^^    markup.span
!        ^   punctuation.definition.span.end

]
