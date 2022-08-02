! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Chapter Title Sub-nodes]


[-  *******************
    Inline Nodes » Font
    ******************* -]

    [ch [title Title With [b Bold ] Text ]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^      meta.toc-list.heading
!                           ^^^^^^            markup.bold
!                         ^^                  entity.name.tag.inline-node.bold.begin
!                                 ^           entity.name.tag.inline-node.bold.end

    [ch [title Title With [i Italic ] Text ]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.toc-list.heading
!                           ^^^^^^^^            markup.italic
!                         ^^                    entity.name.tag.inline-node.italic.begin
!                                   ^           entity.name.tag.inline-node.italic.end


    [ch [title Title With [c Inline Code ] Text ]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.toc-list.heading
!                           ^^^^^^^^^^^^^            markup.raw.inline
!                         ^^                         entity.name.tag.inline-node.code.begin
!                                        ^           entity.name.tag.inline-node.code.end

    [ch [title Title With [sub Subscript ] Text ]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.toc-list.heading
!                             ^^^^^^^^^^^            markup.subscript
!                         ^^^^                       entity.name.tag.inline-node.subscript.begin
!                                        ^           entity.name.tag.inline-node.subscript.end

    [ch [title Title With [sup Superscript ] Text ]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.toc-list.heading
!                             ^^^^^^^^^^^^^            markup.superscript
!                         ^^^^                         entity.name.tag.inline-node.superscript.begin
!                                          ^           entity.name.tag.inline-node.superscript.end

    [ch [title Title With [strike Strikethrough ] Text ]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.toc-list.heading
!                                ^^^^^^^^^^^^^^^            markup.strikethrough
!                         ^^^^^^^                           entity.name.tag.inline-node.strikethrough.begin
!                                               ^           entity.name.tag.inline-node.strikethrough.end



[-  ********************
    Inline Nodes » Other
    ******************** -]

    [ch [title Title With [span (html_style=color:red) Span ] Node ]]
    [ch [title Title With [link url=https://www.pml-lang.org text=Linked ] Text ]]
    [ch [title Title With [verbatim Verbatim ] Contents ]]
    [ch [title Title With [xref node_id=InlineNodes ] XRef ]]



[-  *********************
    Text-Processing Nodes
    ********************* -]

    [ch [title Title With [- some -] Comment ]]

    [ch [title Title With [nl] Newline and [sp] Nodes ]]

    [u:set MyParam = "Custom Defined"]
    [ch [title Title With [u:get MyParam] Parameter ]]



[-  *************
    Unknown Nodes
    ************* -]

    [ch [title Title With [xyzzy Unknown] Node ]]
!              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.toc-list.heading
!                               ^^^^^^^^            entity.name.tag.unknown.contents
!                         ^^^^^^                    entity.name.tag.unknown.begin
!                                       ^           entity.name.tag.unknown.end


]
!<- entity.name.tag.block-node.document.end
