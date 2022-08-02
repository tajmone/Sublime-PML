! SYNTAX TEST "Packages/PML/PML.sublime-syntax"


[-  *******************
    Inline Nodes » Font
    ******************* -]

    [doc [title Title With [b Bold ] Text ]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^      meta.block.title.document
!                            ^^^^^^            markup.bold
!                          ^^                  entity.name.tag.inline-node.bold.begin
!                                  ^           entity.name.tag.inline-node.bold.end

    [doc [title Title With [i Italic ] Text ]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.block.title.document
!                            ^^^^^^^^            markup.italic
!                          ^^                    entity.name.tag.inline-node.italic.begin
!                                    ^           entity.name.tag.inline-node.italic.end


    [doc [title Title With [c Inline Code ] Text ]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.block.title.document
!                            ^^^^^^^^^^^^^            markup.raw.inline
!                          ^^                         entity.name.tag.inline-node.code.begin
!                                         ^           entity.name.tag.inline-node.code.end

    [doc [title Title With [sub Subscript ] Text ]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.block.title.document
!                              ^^^^^^^^^^^            markup.subscript
!                          ^^^^                       entity.name.tag.inline-node.subscript.begin
!                                         ^           entity.name.tag.inline-node.subscript.end

    [doc [title Title With [sup Superscript ] Text ]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.block.title.document
!                              ^^^^^^^^^^^^^            markup.superscript
!                          ^^^^                         entity.name.tag.inline-node.superscript.begin
!                                           ^           entity.name.tag.inline-node.superscript.end

    [doc [title Title With [strike Strikethrough ] Text ]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.block.title.document
!                                 ^^^^^^^^^^^^^^^            markup.strikethrough
!                          ^^^^^^^                           entity.name.tag.inline-node.strikethrough.begin
!                                                ^           entity.name.tag.inline-node.strikethrough.end



[-  ********************
    Inline Nodes » Other
    ******************** -]

    [doc [title Title With [span (html_style=color:red) Span ] Node ]]
    [doc [title Title With [link url=https://www.pml-lang.org text=Linked ] Text ]]
    [doc [title Title With [verbatim Verbatim ] Contents ]]
    [doc [title Title With [xref node_id=InlineNodes ] XRef ]]



[-  *********************
    Text-Processing Nodes
    ********************* -]

    [doc [title Title With [- some -] Comment ]]

    [doc [title Title With [nl] Newline and [sp] Nodes ]]

    [u:set MyParam = "Custom Defined"]
    [doc [title Title With [u:get MyParam] Parameter ]]



[-  *************
    Unknown Nodes
    ************* -]

    [doc [title Title With [xyzzy Unknown] Node ]]
!               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.block.title.document
!                                ^^^^^^^^            entity.name.tag.unknown.contents
!                          ^^^^^^                    entity.name.tag.unknown.begin
!                                        ^           entity.name.tag.unknown.end
