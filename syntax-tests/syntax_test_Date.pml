! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [doc title =  date = 2021-12-31 ]
!                 ^^^^                 entity.other.attribute-name.date
!                      ^                    keyword.operator.assignment
!                        ^^^^^^^^^^    string.unquoted.date
!                        ^^^^          constant.numeric.integer.date.year
!                             ^^       constant.numeric.integer.date.month
!                                ^^    constant.numeric.integer.date.day
!   ^^^^                                    keyword.declaration.document.begin
!                                   ^       keyword.declaration.document.end

[---------------------------------------------------------
                    DATE PLACEHOLDERS
---------------------------------------------------------]

Date placeholders "YYYY", "MM" and "DD" are supported:

    [doc title =  date = YYYY-MM-DD ]
!                        ^^^^^^^^^^    string.unquoted.date
!                        ^^^^          constant.other.placeholder.year
!                             ^^       constant.other.placeholder.month
!                                ^^    constant.other.placeholder.day


[---------------------------------------------------------
                    INVALID DATE ENTRIES
---------------------------------------------------------]

Invalid date entries are autodetected and highlighted.

Zero-value entries:

    [doc title =  date = 0000-00-00 ]
!                        ^^^^^^^^^^    string.unquoted.date
!                        ^^^^          invalid.illegal.year

Out-of-range entries (MM > 12 or DD > 31):

    [doc title =  date = 0001-13-32 ]
!                             ^^       invalid.illegal.month
!                                ^^    invalid.illegal.day