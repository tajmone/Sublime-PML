! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

{doc title = Escape Characters

    File path \= C:\\tests\\example.txt
!             ^^                          constant.character.escape.pml
!                  ^^                     constant.character.escape.pml
!                         ^^              constant.character.escape.pml

    Instead of \\, write \\\\
!              ^^                constant.character.escape.pml
!                        ^^      constant.character.escape.pml
!                          ^^    constant.character.escape.pml

    Instead of \{, write \\\{
!              ^^                constant.character.escape.pml
!                        ^^^^    constant.character.escape.pml


}
