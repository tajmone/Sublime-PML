! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

[doc [title Test Pargraph Node]

    [p Lorem ipsum.]
!   ^^                  entity.name.tag.block-node.paragraph.begin
!                  ^    entity.name.tag.block-node.paragraph.end
!     ^^^^^^^^^^^^^     markup.paragraph
!   ^^^^^^^^^^^^^^^^   -meta.annotation.node-attributes.paragraph

    [p ( ) Lorem]
!      ^^^          meta.annotation.node-attributes.paragraph
!   ^^^            -meta.annotation.node-attributes.paragraph
!         ^^^^^^^  -meta.annotation.node-attributes.paragraph


[-  ***************
    Empty Paragraph
    *************** -]

    [p ( ) ]
!     ^^^^^    markup.paragraph
!   ^^        -markup.paragraph
!          ^  -markup.paragraph
!      ^^^     meta.annotation.node-attributes.paragraph
!         ^^  -meta.annotation.node-attributes.paragraph



[-  ********************
    Paragraph Attributes
    ******************** -]

    [p ( ) ]
!     ^^^^^    markup.paragraph
!      ^^^     meta.annotation.node-attributes.paragraph
!      ^       punctuation.section.group.begin
!        ^     punctuation.section.group.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [p ( id = par1 ) ]
!      ^                 punctuation.section.group.begin
!      ^^^^^^^^^^^^^     meta.annotation.node-attributes.paragraph
!                  ^     punctuation.section.group.end
!        ^^              entity.other.attribute-name.id
!           ^            keyword.operator.assignment
!             ^^^^       string.unquoted.id
!             ^^^^       meta.toc-list.id
!                    ^   entity.name.tag.block-node.paragraph.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [p (id = $$$$$$$$) ]
!      ^                   punctuation.section.group.begin
!      ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.paragraph
!                    ^     punctuation.section.group.end
!       ^^                 entity.other.attribute-name.id
!          ^               keyword.operator.assignment
!            ^^^^^^^^      invalid.illegal.id
!                      ^   entity.name.tag.block-node.paragraph.end


    [p ( id = àààààààà ) ]
!      ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.paragraph
!                      ^     punctuation.section.group.end
!             ^^^^^^^^       invalid.illegal
[-  --------------
    ID -> No Value
    -------------- -]

    [p ( id = ) ]
!      ^            punctuation.section.group.begin
!      ^^^^^^^^     meta.annotation.node-attributes.paragraph
!             ^     punctuation.section.group.end
!        ^^         entity.other.attribute-name.id
!           ^       keyword.operator.assignment
!            ^     -string.unquoted.id
!            ^     -meta.toc-list.id
!               ^   entity.name.tag.block-node.paragraph.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [p (html_style = "color:red;") Lorem ]
!      ^^^^^^^^^^^^^^^^^^^^^^^^^^^           meta.annotation.node-attributes.paragraph
!       ^^^^^^^^^^                           entity.other.attribute-name.html
!                  ^                         keyword.operator.assignment
!                    ^^^^^^^^^^^^            string.quoted.double
!                    ^                       punctuation.definition.string.begin
!                               ^            punctuation.definition.string.end
!                                ^^^^^^^^^  -string.quoted.double
!                                  ^^^^^     markup.paragraph

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [p (html_style = color:red ) Lorem ]
!      ^^^^^^^^^^^^^^^^^^^^^^^^^           meta.annotation.node-attributes.paragraph
!                              ^           punctuation.section.group.end
!       ^^^^^^^^^^                         entity.other.attribute-name.html
!                  ^                       keyword.operator.assignment
!                    ^^^^^^^^^             string.unquoted
!                             ^^^^^^^^^^  -string.unquoted
!                                ^^^^^     markup.paragraph

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [p (html_style = ) Lorem ]
!      ^^^^^^^^^^^^^^^           meta.annotation.node-attributes.paragraph
!                    ^           punctuation.section.group.end
!       ^^^^^^^^^^               entity.other.attribute-name.html
!                  ^             keyword.operator.assignment
!                   ^^^^^^^^^^  -string
!                      ^^^^^     markup.paragraph

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [p ( xyzzy = zip ) ]
!      ^                   punctuation.section.group.begin
!       ^^^^^^^^^^^^^      meta.annotation.node-attributes.paragraph
!                    ^     punctuation.section.group.end
!        ^^^^^             entity.other.attribute-name.unknown
!              ^           keyword.operator.assignment
!                      ^   entity.name.tag.block-node.paragraph.end


]
