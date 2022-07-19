! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Text Processing Nodes: Constant Parameter]

    [u:set baseURL = http://www.example.com]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.tag.constant
!   ^^^^^^                                     entity.name.tag.inline-node.constant.begin
!          ^^^^^^^                             entity.name.function
!                                          ^   entity.name.tag.inline-node.constant.end
!                  ^                           keyword.operator.assignment
!                    ^^^^^^^^^^^^^^^^^^^^^^    string.unquoted

    Outside \[u:set now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant


    [u:set dqAttr = "I'm a \"Quoted\" string" ]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.tag.constant
!   ^^^^^^                                        entity.name.tag.inline-node.constant.begin
!                                             ^   entity.name.tag.inline-node.constant.end
!                 ^                               keyword.operator.assignment
!                   ^^^^^^^^^^^^^^^^^^^^^^^^^     string.quoted.double
!                                            ^^  -string.quoted.double
!                          ^^                     constant.character.escape
!                                  ^^             constant.character.escape
!                   ^                             punctuation.definition.string.begin
!                                           ^     punctuation.definition.string.end

    Outside \[u:set now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant

    [u:set unqAttr =   Unquoted "string"! ]
!                      ^^^^^^^^^^^^^^^^^^     string.unquoted
!                   ^^^                      -string.unquoted
!                                        ^   -string.unquoted

    Outside \[u:set now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant


    Some constant parameters usage examples:

    [link url=[u:get baseURL]/ex1.html text=example 1]
!             ^^^^^^^^^^^^^^^                            meta.function-call
!                    ^^^^^^^                             support.function.call
!             ^^^^^^                                     punctuation.definition.generic.begin
!                           ^                            punctuation.definition.generic.end

    dqAttr: [u:get dqAttr]!
!           ^^^^^^^^^^^^^^    meta.function-call
!                  ^^^^^^     support.function.call
!           ^^^^^^            punctuation.definition.generic.begin
!                        ^    punctuation.definition.generic.end

[-  ==================================
    TEST CONSTANTS IN VARIOUS CONTEXTS
    ==================================-]

[-  CHAPTER TITLES  -]

    [u:set PMLver = 2.0.0]

    [ch [title PML v[u:get PMlver] Changes]]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.block.chapter
!                   ^^^^^^^^^^^^^^             meta.function-call


]
