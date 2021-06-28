! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Raw HTML Blocks

    [html html]
!   ^^^^^         entity.name.tag.block-node.raw.html.begin.pml
!         ^^^^^   entity.name.tag.block-node.raw.html.end.pml

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
!<- entity.name.tag.block-node.document.end
