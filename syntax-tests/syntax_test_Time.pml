! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [doc time = 23:59 ]
!        ^^^^            entity.other.attribute-name.time
!             ^               keyword.operator.assignment
!               ^^^^^    string.unquoted.time
!               ^^       constant.numeric.integer.time.hour
!                  ^^    constant.numeric.integer.time.minutes
!   ^^^^                      keyword.declaration.document.begin
!                     ^       keyword.declaration.document.end

    [doc time=00:00]
!        ^^^^         entity.other.attribute-name.time
!            ^             keyword.operator.assignment
!             ^^^^^   string.unquoted.time

    [doc    time = 12:30 \
            time = 13:35
!           ^^^^            entity.other.attribute-name.time
!                  ^^^^^    string.unquoted.time
    ]
!   ^                         keyword.declaration.document.end


[---------------------------------------------------------
                    TIME PLACEHOLDERS
---------------------------------------------------------]

Time placeholders "hh" and "mm" are supported:

    [doc time = hh:mm ]
!               ^^^^^    string.unquoted.time
!               ^^       constant.other.placeholder.hour
!                  ^^    constant.other.placeholder.minutes


[---------------------------------------------------------
                    INVALID TIME ENTRIES
---------------------------------------------------------]

Invalid time entries are autodetected and highlighted.

Out-of-range entries (hh > 23 or mm > 59):

    [doc time = 24:60 ]
!               ^^       invalid.illegal.hour
!                  ^^    invalid.illegal.minutes
