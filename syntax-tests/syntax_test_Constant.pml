! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc title = Text Processing Nodes: Constant Parameter

    [const baseURL = http://www.example.com]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.tag.constant
!   ^^^^^^                                     entity.name.tag.constant.begin
!                                          ^   entity.name.tag.constant.end
!                  ^                           keyword.operator.assignment
!                    ^^^^^^^^^^^^^^^^^^^^^^    string.unquoted

    Here are two examples:
!   ^^^^^^^^^^^^^^^^^^^^^^  -meta.tag.constant


    [link url=<<baseURL>>/ex1.html text=example 1]

    [link url=<<baseURL>>/ex2.html text=example 2].

]
