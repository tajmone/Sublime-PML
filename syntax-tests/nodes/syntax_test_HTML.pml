! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Raw HTML Blocks]

[- ** IMPORTANT! ** Keep the '.pml' trailing scope in this doc
                    since we're dealing with embedded HTML. -]

[-  ******************
    Without Attributes
    ****************** -]

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

[-  *********************
    HTML Block Attributes
    ********************* -]

    [html ( ) html]
!         ^           punctuation.section.group.begin.pml
!         ^^^         meta.annotation.node-attributes.html.pml
!           ^         punctuation.section.group.end.pml

[-  --------------
    ID -> Valid ID
    -------------- -]

    [html (id = attr_newline) html]
!         ^^^^^^^^^^^^^^^^^^^         meta.annotation.node-attributes.html.pml
!         ^                           punctuation.section.group.begin.pml
!                           ^         punctuation.section.group.end.pml
!          ^^                         entity.other.attribute-name.id.pml
!             ^                       keyword.operator.assignment.pml
!               ^^^^^^^^^^^^          string.unquoted.id.pml
!               ^^^^^^^^^^^^          meta.toc-list.id.pml
!   ^^^^^^                           -meta.annotation.node-attributes.html.pml
!                            ^^^^^^  -meta.annotation.node-attributes.html.pml
!                            ^        text.html.basic
!   ^^^^^                             entity.name.tag.block-node.raw.html.begin.pml
!                             ^^^^^   entity.name.tag.block-node.raw.html.end.pml


    [html
    (id = attr_newline)
!   ^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.html.pml
!    ^^                   entity.other.attribute-name.id.pml
!       ^                 keyword.operator.assignment.pml
!         ^^^^^^^^^^^^    string.unquoted.id.pml
!         ^^^^^^^^^^^^    meta.toc-list.id.pml
    <p>Lorem</p>
!   ^^^^^^^^^^^^          text.html.basic
!   ^^^                   meta.tag.block.any.html
!            ^^^          meta.tag.block.any.html
    html]
!   ^^^^^                 entity.name.tag.block-node.raw.html.end.pml

[-  ---------------
    ID -> Malformed
    --------------- -]

    [html (id = $$$$$$$$) html]
!               ^^^^^^^^          invalid.illegal.id.pml
!                       ^^^^^^^  -invalid.illegal.id.pml
!         ^^^^^^^^^^^^^^^         meta.annotation.node-attributes.html.pml
!   ^^^^^^                       -meta.annotation.node-attributes.html.pml
!                        ^^^^^^  -meta.annotation.node-attributes.html.pml
!                        ^        text.html.basic
!         ^                       punctuation.section.group.begin.pml
!                       ^         punctuation.section.group.end.pml
!   ^^^^^                         entity.name.tag.block-node.raw.html.begin.pml
!                         ^^^^^   entity.name.tag.block-node.raw.html.end.pml

    [html ( id = àààààààà ) html]
!                ^^^^^^^^           invalid.illegal.id.pml
!                        ^^^^^^^^  -invalid.illegal.id.pml
!          ^^^^^^^^^^^^^^^^         meta.annotation.node-attributes.html.pml
!                         ^         punctuation.section.group.end.pml

[-  --------------
    ID -> No Value
    -------------- -]

    [html (id = ) <hr> html]
!          ^^                  entity.other.attribute-name.id.pml
!         ^                    punctuation.section.group.begin.pml
!         ^^^^^^^              meta.annotation.node-attributes.html.pml
!               ^              punctuation.section.group.end.pml
!             ^                keyword.operator.assignment.pml
!              ^              -string.unquoted.id
!              ^              -meta.toc-list.id
!                ^^^^^^        text.html.basic

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [html (html_style = "color:red;") <hr> html]
!         ^^^^^^^^^^^^^^^^^^^^^^^^^^               meta.annotation.node-attributes.html.pml
!          ^^^^^^^^^^                              entity.other.attribute-name.html.pml
!                     ^                            keyword.operator.assignment.pml
!                       ^^^^^^^^^^^^               string.quoted.double.pml
!                       ^                          punctuation.definition.string.begin
!                                  ^               punctuation.definition.string.end
!                                   ^^^^^^^^^^^^  -string.quoted.double.pml
!                                    ^^^^^^        text.html.basic

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [html (html_style = color:red ) <hr> html]
!          ^^^^^^^^^^^^^^^^^^^^^^^^              meta.annotation.node-attributes.html.pml
!                                 ^              punctuation.section.group.end.pml
!          ^^^^^^^^^^                            entity.other.attribute-name.html.pml
!                     ^                          keyword.operator.assignment.pml
!                       ^^^^^^^^^                string.unquoted
!                                ^^^^^^^^^^^^^  -string.unquoted
!                                  ^^^^^         text.html.basic

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [html (html_style = ) <hr> html]
!          ^^^^^^^^^^^^^^              meta.annotation.node-attributes.html.pml
!                       ^              punctuation.section.group.end.pml
!           ^^^^^^^^^                  entity.other.attribute-name.html.pml
!                     ^                keyword.operator.assignment.pml
!                      ^^^^^^^^^^     -string
!                         ^^^^^        text.html.basic

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [html ( xyzzy = zip ) html]
!         ^                       punctuation.section.group.begin
!         ^^^^^^^^^^^^^^^         meta.annotation.node-attributes.html.pml
!                       ^         punctuation.section.group.end.pml
!           ^^^^^                 entity.other.attribute-name.unknown.pml
!                 ^               keyword.operator.assignment.pml
!                         ^^^^^   entity.name.tag.block-node.raw.html.end.pml



]
!<- entity.name.tag.block-node.document.end
