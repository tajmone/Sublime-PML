! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Text Processing Nodes: Constant Parameter

    [const baseURL = http://www.example.com]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.tag.constant
!   ^^^^^^                                     entity.name.tag.constant.begin
!                                          ^   entity.name.tag.constant.end
!                  ^                           keyword.operator.assignment
!                    ^^^^^^^^^^^^^^^^^^^^^^    string.unquoted

    Outside \[const now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant


    [constant dqAttr = "I'm a \"Quoted\" string" ]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.tag.constant
!   ^^^^^^^^^                                        entity.name.tag.constant.begin
!                                                ^   entity.name.tag.constant.end
!                    ^                               keyword.operator.assignment
!                      ^^^^^^^^^^^^^^^^^^^^^^^^^     string.quoted.double
!                                               ^^  -string.quoted.double
!                             ^^                     constant.character.escape
!                                     ^^             constant.character.escape
!                      ^                             punctuation.definition.string.begin
!                                              ^     punctuation.definition.string.end

    Outside \[const now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant

    [const unqAttr =   Unquoted "string"! ]
!                      ^^^^^^^^^^^^^^^^^^     string.unquoted
!                   ^^^                      -string.unquoted
!                                        ^   -string.unquoted

    Outside \[const now!
!   ^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant


    Here are two examples:
!   ^^^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant


    [link url=<<baseURL>>/ex1.html text=example 1]

    [link url=<<baseURL>>/ex2.html text=example 2].

]
