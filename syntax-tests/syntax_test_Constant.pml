! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Text Processing Nodes: Constant Parameter

    [const baseURL = http://www.example.com]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.tag.constant
!   ^^^^^^                                     entity.name.tag.inline-node.constant.begin
!          ^^^^^^^                             entity.name.function
!                                          ^   entity.name.tag.inline-node.constant.end
!                  ^                           keyword.operator.assignment
!                    ^^^^^^^^^^^^^^^^^^^^^^    string.unquoted

    Outside \[const now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant


    [const dqAttr = "I'm a \"Quoted\" string" ]
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

    Outside \[const now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant

    [const unqAttr =   Unquoted "string"! ]
!                      ^^^^^^^^^^^^^^^^^^     string.unquoted
!                   ^^^                      -string.unquoted
!                                        ^   -string.unquoted

    Outside \[const now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant


    Some constant parameters usage examples:

    [link url=<<baseURL>>/ex1.html text=example 1]
!             ^^^^^^^^^^^                            meta.function-call
!               ^^^^^^^                              support.function.call
!             ^^                                     punctuation.definition.generic.begin
!                      ^^                            punctuation.definition.generic.end

    dqAttr: <<dqAttr>>!
!           ^^^^^^^^^^    meta.function-call
!             ^^^^^^      support.function.call
!           ^^            punctuation.definition.generic.begin
!                   ^^    punctuation.definition.generic.end

[-  ==================================
    TEST CONSTANTS IN VARIOUS CONTEXTS
    ==================================-]

[-  CHAPTER TITLES  -]

[ch title = "PML v<<PMLVer>>" ]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.chapter
!           ^^^^^^^^^^^^^^^^^   entity.name.section.quoted
!           ^^^^^^^^^^^^^^^^^   markup.heading meta.toc-list.heading
!                 ^^^^^^^^^^    meta.function-call
!                   ^^^^^^      support.function.call
!                 ^^            punctuation.definition.generic.begin
!                         ^^    punctuation.definition.generic.end

[ch title = PPL v<<PPLVer>> ]
!   ^^^^^^^^^^^^^^^^^^^^^^^     meta.annotation.node-attributes.chapter
!           ^^^^^^^^^^^^^^^     entity.name.section.unquoted
!           ^^^^^^^^^^^^^^^     markup.heading meta.toc-list.heading
!                ^^^^^^^^^^     meta.function-call
!                  ^^^^^^       support.function.call
!                ^^             punctuation.definition.generic.begin
!                        ^^     punctuation.definition.generic.end
!                          ^   -entity.name.section.unquoted
!                          ^   -markup.heading meta.toc-list.heading

]
