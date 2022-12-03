! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Quoted ID Attribute]

Quoted ID edge cases...

The user has accidentally split the ID by pressing enter
before the closing quote:

    [ch [title ( id = "valid-ID
!                      ^^^^^^^^       invalid.illegal.id
!                     ^               punctuation.definition.string.begin
    " ) ]]

NOTE: Something is not right in the way it recovers from error,
it should wait for the closing ')' before treating the text as
title content. Seems an issue related to context popping, I need
to define a clear strategy to handle popping out of attributes
groups!

[- ********************************************************************* -]

Leading and trailing spaces...

NOTE: Although these should be invalid IDs by definition, PMLC 3.1.0
actually accepts spaces within an ID, probably a bug.
See: pml-companion#96

    [ch [title ( id = "valid-ID ") Hello]]
!                      ^^^^^^^^^      invalid.illegal.id
!                     ^               punctuation.definition.string.begin
!                               ^     punctuation.definition.string.end

    [ch [title ( id = " valid-ID") Hello]]
!                      ^^^^^^^^^      invalid.illegal.id
!                     ^               punctuation.definition.string.begin
!                               ^     punctuation.definition.string.end


    [ch [title ( id = "bad ID") Hello]]
!                      ^^^^^^         invalid.illegal.id
!                     ^               punctuation.definition.string.begin
!                            ^        punctuation.definition.string.end


]
!<- entity.name.tag.block-node.document.end
