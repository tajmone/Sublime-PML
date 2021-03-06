! SYNTAX TEST "Packages/PML/PML.sublime-syntax"

    [doc title = Title Unquoted ]
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   meta.block.document
!   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.annotation.node-attributes.document
!                               ^  -meta.annotation.node-attributes.document
!                               ^   entity.name.tag.block-node.document.end


    [doc title = Doc Title \
!   ^^^^^^^^^^^^^^^^^^^^^^^^   meta.block.document meta.annotation.node-attributes.document
!                          ^   punctuation.separator.continuation
!              ^               keyword.operator.assignment
    Lorem Ipsum.
!   ^^^^^^^^^^^^              -meta.annotation.node-attributes.document meta.block.document
    ]
!   ^  entity.name.tag.block-node.document.end

    [doc title = Document Title \
        date = 2021-03-05
!       ^^^^                entity.other.attribute-name.date
!            ^              keyword.operator.assignment
!              ^^^^^^^^^^   string.unquoted.date
!              ^^^^         constant.numeric.integer.date.year
!                   ^^      constant.numeric.integer.date.month
!                      ^^   constant.numeric.integer.date.day
    ]
!   ^  entity.name.tag.block-node.document.end

    [doc title = Document Title \
        date = 2021-03-05 \
        title = Title Unquoted
!       ^^^^^^^^^^^^^^^^^^^^^^   meta.annotation.node-attributes.document
    ]
