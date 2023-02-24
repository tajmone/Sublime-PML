! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Raw HTML Blocks]

[- ** IMPORTANT! ** Keep the '.pml' trailing scope in this doc
                    since we're dealing with embedded HTML. -]

[-  ******************
    Without Attributes
    ****************** -]

    [html </hr> ]
!   ^^^^^           entity.name.tag.block-node.raw.html.begin.pml
!               ^   entity.name.tag.block-node.raw.html.end.pml
!        ^         -text.html.basic
!               ^  -text.html.basic
!         ^^^^^^    text.html.basic
!         ^^^^^     meta.tag.block.any.html
!         ^^        punctuation.definition.tag.begin.html
!           ^^      entity.name.tag.block.any.html
!             ^     punctuation.definition.tag.end.html

    [html <!DOCTYPE html>]
!         ^^^^^^^^^^^^^^^    text.html.basic
!         ^^^^^^^^^^^^^^^    meta.tag.sgml.doctype.html
!                        ^   entity.name.tag.block-node.raw.html.end.pml
!                        ^  -text.html.basic

[-  *********************
    Without HTML Contents
    ********************* -]

    [html()]
!   ^^^^^^^^  -text.html.basic
!   ^^^^^      entity.name.tag.block-node.raw.html.begin.pml
!          ^   entity.name.tag.block-node.raw.html.end.pml
!        ^^    meta.annotation.node-attributes.html.pml

    [html ( ) ]
!   ^^^^^^^^^^^   -text.html.basic
!   ^^^^^          entity.name.tag.block-node.raw.html.begin.pml
!             ^    entity.name.tag.block-node.raw.html.end.pml
!            ^    -meta.annotation.node-attributes.html.pml
!         ^^^      meta.annotation.node-attributes.html.pml
!         ^        punctuation.section.group.begin.pml
!           ^      punctuation.section.group.end.pml

[-  ************************************
    Without Attributes nor HTML Contents
    ************************************ -]

    [html]
!   ^^^^^^  -text.html.basic
!   ^^^^^    entity.name.tag.block-node.raw.html.begin.pml
!        ^   entity.name.tag.block-node.raw.html.end.pml

    [html ]
!   ^^^^^^^  -text.html.basic
!   ^^^^^     entity.name.tag.block-node.raw.html.begin.pml
!         ^   entity.name.tag.block-node.raw.html.end.pml

[-  *********************
    HTML Block Attributes
    ********************* -]

    [html ( )</hr>]
!         ^           punctuation.section.group.begin.pml
!         ^^^         meta.annotation.node-attributes.html.pml
!           ^         punctuation.section.group.end.pml
!            ^^^^^    text.html.basic
!                 ^   entity.name.tag.block-node.raw.html.end.pml
!                 ^  -text.html.basic

[-  --------------
    ID -> Valid ID
    -------------- -]

    [html (id = attr_newline)</hr>]
!         ^^^^^^^^^^^^^^^^^^^         meta.annotation.node-attributes.html.pml
!         ^                           punctuation.section.group.begin.pml
!                           ^         punctuation.section.group.end.pml
!          ^^                         entity.other.attribute-name.id.pml
!             ^                       keyword.operator.assignment.pml
!               ^^^^^^^^^^^^          string.unquoted.id.pml
!               ^^^^^^^^^^^^          meta.toc-list.id.pml
!   ^^^^^^                           -meta.annotation.node-attributes.html.pml
!   ^^^^^                             entity.name.tag.block-node.raw.html.begin.pml


    [html
    (id = attr_newline)<p>]
!   ^^^^^^^^^^^^^^^^^^^       meta.annotation.node-attributes.html.pml
!    ^^                       entity.other.attribute-name.id.pml
!       ^                     keyword.operator.assignment.pml
!         ^^^^^^^^^^^^        string.unquoted.id.pml
!         ^^^^^^^^^^^^        meta.toc-list.id.pml
!                         ^   entity.name.tag.block-node.raw.html.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [html (id = $$$$$$$$)<p>]
!               ^^^^^^^^        invalid.illegal.id.pml
!                       ^      -invalid.illegal.id.pml
!         ^^^^^^^^^^^^^^^       meta.annotation.node-attributes.html.pml
!   ^^^^^^                     -meta.annotation.node-attributes.html.pml
!         ^                     punctuation.section.group.begin.pml
!                       ^       punctuation.section.group.end.pml
!   ^^^^^                       entity.name.tag.block-node.raw.html.begin.pml

    [html ( id = àààààààà )<p>]
!                ^^^^^^^^        invalid.illegal.id.pml
!                        ^^     -invalid.illegal.id.pml
!          ^^^^^^^^^^^^^^^^      meta.annotation.node-attributes.html.pml
!                         ^      punctuation.section.group.end.pml

[-  --------------
    ID -> No Value
    -------------- -]

    [html (id = )<p>]
!          ^^           entity.other.attribute-name.id.pml
!         ^             punctuation.section.group.begin.pml
!         ^^^^^^^       meta.annotation.node-attributes.html.pml
!               ^       punctuation.section.group.end.pml
!             ^         keyword.operator.assignment.pml
!              ^       -string.unquoted.id.pml
!              ^       -meta.toc-list.id.pml

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [html (html_style = "color:red;")<p>]
!         ^^^^^^^^^^^^^^^^^^^^^^^^^^       meta.annotation.node-attributes.html.pml
!          ^^^^^^^^^^                      entity.other.attribute-name.html.pml
!                     ^                    keyword.operator.assignment.pml
!                       ^^^^^^^^^^^^       string.quoted.double.pml
!                       ^                  punctuation.definition.string.begin.pml
!                                  ^       punctuation.definition.string.end.pml
!                                   ^     -string.quoted.double.pml


[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [html (html_style = color:red )<p>]
!          ^^^^^^^^^^^^^^^^^^^^^^^^      meta.annotation.node-attributes.html.pml
!                                 ^      punctuation.section.group.end.pml
!          ^^^^^^^^^^                    entity.other.attribute-name.html.pml
!                     ^                  keyword.operator.assignment.pml
!                       ^^^^^^^^^        string.unquoted.pml
!                                ^^     -string.unquoted.pml


[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [html (html_style = )<p>]
!          ^^^^^^^^^^^^^^       meta.annotation.node-attributes.html.pml
!                       ^       punctuation.section.group.end.pml
!           ^^^^^^^^^           entity.other.attribute-name.html.pml
!                     ^         keyword.operator.assignment.pml
!                      ^^      -string

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [html ( xyzzy = zip )<p>]
!         ^                     punctuation.section.group.begin.pml
!         ^^^^^^^^^^^^^^^       meta.annotation.node-attributes.html.pml
!                       ^       punctuation.section.group.end.pml
!           ^^^^^               entity.other.attribute-name.unknown.pml
!                 ^             keyword.operator.assignment.pml


]
!<- entity.name.tag.block-node.document.end
