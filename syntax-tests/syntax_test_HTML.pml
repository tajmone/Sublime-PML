! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Raw HTML Blocks

    [HTML HTML]
!   ^^^^^         punctuation.definition.section.block.html.begin.pml
!         ^^^^^   punctuation.definition.section.block.html.end.pml

    [html
        <!DOCTYPE html>
!       ^^^^^^^^^^^^^^^  text.html.basic  meta.tag.sgml.doctype.html
        <html>
            <body>
!           ^^^^^^  text.html.basic  meta.tag.structure.any.html

                <h1>The PML Philosophy</h1>

                <p>It should be easy for everybody to quickly create
                beautiful web articles and books</p>

                <a href="https://www.pml-lang.dev/">Visit PML Website</a>

            </body>
        </html>
    html]
!   ^^^^^  -text.html.basic


]
!<- keyword.declaration.document.end
