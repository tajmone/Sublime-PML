! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [doc title = Title Unquoted ]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.block.document
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.document
!                               ^  -meta.annotation.node-attributes.document
!                               ^   keyword.declaration.document.end


    [doc title = Doc Title \
!   ^^^^^^^^^^^^^^^^^^^^^^^^   meta.block.document meta.annotation.node-attributes.document
!                          ^   punctuation.separator.continuation
!              ^               keyword.operator.assignment
    Lorem Ipsum.
!   ^^^^^^^^^^^^              -meta.annotation.node-attributes.document meta.block.document
    ]
!   ^  keyword.declaration.document.end

    [doc title = Document Title \
        date = 2021-03-05
!       ^^^^                entity.other.attribute-name.date
!            ^              keyword.operator.assignment
!              ^^^^^^^^^^   constant.numeric.date
!              ^^^^         constant.numeric.year
!                   ^^      constant.numeric.month
!                      ^^   constant.numeric.day
    ]
!   ^  keyword.declaration.document.end
