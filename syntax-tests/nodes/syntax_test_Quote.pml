! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

[doc [title Test Quote Node]

    [quote (source=Thomas Szasz, The Untamed Tongue)
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  -markup.quote
!   ^^^^^^                                             entity.name.tag.block-node.quote.begin
!   ^^^^^^                                            -meta.annotation.node-attributes.quote
!          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.quote

!<-                                                    markup.quote
!<-                                                   -meta.annotation.node-attributes
        The FDA calls certain substances 'controlled'.
        But there are no controlled substances;
        there are only controlled persons.
!       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^             markup.quote
!       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^            -meta.annotation.node-attributes.quote
    ]
!   ^                                                  entity.name.tag.block-node.quote.end

    [quote (xxx = yyy)

!<-  markup.quote
    ]
!^^^             -markup.quote

[-  ************
    Empty Quotes
    ************ -]

    [quote ( ) ]
!   ^^^^^^^^^^^^  -markup.quote


    [quote ( )

<-               markup.quote
    ]
!^^^^           -markup.quote

[-  ****************
    Quote Attributes
    **************** -]

    [quote ( ) ]
!          ^       punctuation.section.group.begin
!          ^^^     meta.annotation.node-attributes.quote
!            ^     punctuation.section.group.end

[-  --------------
    ID -> Valid ID
    -------------- -]

    [quote ( id = quote666 ) ]
!          ^                     punctuation.section.group.begin
!          ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.quote
!                          ^     punctuation.section.group.end
!            ^^                  entity.other.attribute-name.id
!               ^                keyword.operator.assignment
!                 ^^^^^^^^       string.unquoted.id
!                 ^^^^^^^^       meta.toc-list.id
!                            ^   entity.name.tag.block-node.quote.end

[-  ---------------
    ID -> Malformed
    --------------- -]

    [quote (id = $$$$$$$$) ]
!          ^                   punctuation.section.group.begin
!          ^^^^^^^^^^^^^^^     meta.annotation.node-attributes.quote
!                        ^     punctuation.section.group.end
!           ^^                 entity.other.attribute-name.id
!              ^               keyword.operator.assignment
!                ^^^^^^^^      invalid.illegal.id
!                          ^   entity.name.tag.block-node.quote.end


    [quote ( id = àààààààà ) ]
!          ^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.quote
!                          ^     punctuation.section.group.end
!                 ^^^^^^^^       invalid.illegal.id

[-  --------------
    ID -> No Value
    -------------- -]

    [quote ( id = ) ]
!          ^            punctuation.section.group.begin
!          ^^^^^^^^     meta.annotation.node-attributes.quote
!                 ^     punctuation.section.group.end
!            ^^         entity.other.attribute-name.id
!               ^       keyword.operator.assignment
!                ^     -string.unquoted.id
!                ^     -meta.toc-list.id
!                   ^   entity.name.tag.block-node.quote.end

[-  -------------------------------
    HTML ATTRIBUTES -> Quoted Value
    ------------------------------- -]

    [quote (html_style = "color:red;") Lorem ]
!          ^^^^^^^^^^^^^^^^^^^^^^^^^^^           meta.annotation.node-attributes.quote
!           ^^^^^^^^^^                           entity.other.attribute-name.html
!                      ^                         keyword.operator.assignment
!                        ^^^^^^^^^^^^            string.quoted.double
!                        ^                       punctuation.definition.string.begin
!                                   ^            punctuation.definition.string.end
!                                    ^^^^^^^^^  -string.quoted.double
!                                      ^^^^^     markup.quote

[-  ---------------------------------
    HTML ATTRIBUTES -> Unquoted Value
    --------------------------------- -]

    [quote (html_style = color:red ) Lorem ]
!          ^^^^^^^^^^^^^^^^^^^^^^^^^           meta.annotation.node-attributes.quote
!                                  ^           punctuation.section.group.end
!           ^^^^^^^^^^                         entity.other.attribute-name.html
!                      ^                       keyword.operator.assignment
!                        ^^^^^^^^^             string.unquoted
!                                 ^^^^^^^^^^  -string.unquoted
!                                    ^^^^^     markup.quote

[-  ---------------------------
    HTML ATTRIBUTES -> No Value
    --------------------------- -]

    [quote (html_style = ) Lorem ]
!          ^^^^^^^^^^^^^^^           meta.annotation.node-attributes.quote
!                        ^           punctuation.section.group.end
!           ^^^^^^^^^^               entity.other.attribute-name.html
!                      ^             keyword.operator.assignment
!                       ^^^^^^^^^^  -string
!                          ^^^^^     markup.quote

[-  ------------------
    UNKNOWN ATTRIBUTES
    ------------------ -]

    [quote ( xyzzy = zip ) ]
!          ^                   punctuation.section.group.begin
!           ^^^^^^^^^^^^^      meta.annotation.node-attributes.quote
!                        ^     punctuation.section.group.end
!            ^^^^^             entity.other.attribute-name.unknown
!                  ^           keyword.operator.assignment
!                          ^   entity.name.tag.block-node.quote.end


]
