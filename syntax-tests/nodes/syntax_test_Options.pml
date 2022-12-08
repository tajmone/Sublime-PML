! SYNTAX TEST "Packages/PML/PML.sublime-syntax"
[doc [title Options Node]

  [options ]
! ^^^^^^^^     entity.name.tag.block-node.options.begin
!          ^   entity.name.tag.block-node.options.end
!         ^    meta.block.options
! ^^^^^^^^    -meta.block.options
!          ^  -meta.block.options

[-  *****************************
    Unknown/Unimplemented Options
    ***************************** -]

  [options
    [XY_zzy blah blah]
!   ^^^^^^^              entity.name.tag.option-node.unknown.begin
!                    ^   entity.name.tag.option-node.unknown.end
!          ^^^^^^^^^^    meta.annotation.option.unknown
!   ^^^^^^^             -meta.annotation.option.unknown
!                    ^  -meta.annotation.option.unknown
  ]

[-  ***********
    ToC Options
    *********** -]

  [options
    [TOC_max_level 4]
!   ^^^^^^^^^^^^^^      entity.name.tag.option-node.toc-level.begin
!                   ^   entity.name.tag.option-node.toc-level.end
!                 ^^    meta.annotation.option.toc-level
!   ^^^^^^^^^^^^^^     -meta.annotation.option.toc-level
!                   ^  -meta.annotation.option.toc-level
    [TOC_position top]
!   ^^^^^^^^^^^^^        entity.name.tag.option-node.toc-position.begin
!                    ^   entity.name.tag.option-node.toc-position.end
!                ^^^^    meta.annotation.option.toc-position
!   ^^^^^^^^^^^^^       -meta.annotation.option.toc-position
!                    ^  -meta.annotation.option.toc-position
    [TOC_title ToC]
!   ^^^^^^^^^^        entity.name.tag.option-node.toc-title.begin
!                 ^   entity.name.tag.option-node.toc-title.end
!             ^^^^    meta.annotation.option.toc-title
!   ^^^^^^^^^^       -meta.annotation.option.toc-title
!                 ^  -meta.annotation.option.toc-title
  ]
[-  ----------------------
    ToC Position -> Values
    ---------------------- -]

  [options
    [TOC_position top]
!                 ^^^    string.unquoted
    [TOC_position TOP]
!                 ^^^    string.unquoted
    [TOC_position left]
!                 ^^^^    string.unquoted
    [TOC_position LEFT]
!                 ^^^^    string.unquoted
    [TOC_position none]
!                 ^^^^    string.unquoted
    [TOC_position NONE]
!                 ^^^^    string.unquoted
    [TOC_position bad]
!                 ^^^   invalid.option-value
    [TOC_position 1]
!                 ^     invalid.option-value
  ]

[-  ------------------------------------
    ToC Position -> Constants & Comments
    ------------------------------------ -]
  [u:set tocpos=left]
  [options
    [TOC_position [u:get tocpos]]
!                 ^^^^^^^^^^^^^^   meta.function-call
    [TOC_position [- comment -]]
!                 ^^^^^^^^^^^^^    comment.block
  ]
[-  -------------------
    ToC Level -> Values
    ------------------- -]

  [options
    [TOC_max_level 1]
!                  ^     -invalid.option-value
    [TOC_max_level abc]
!                  ^^^    invalid.option-value
    [TOC_max_level []
!                  ^      invalid.option-value
    [TOC_max_level @$!]
!                  ^^^    invalid.option-value
  ]

[-  ---------------------------------
    ToC Level -> Constants & Comments
    --------------------------------- -]

  [u:set toclevel = 4]
  [options
    [TOC_max_level [u:get toclevel]]
!                  ^^^^^^^^^^^^^^^^   meta.function-call
    [TOC_max_level [- a comment -]]
!                  ^^^^^^^^^^^^^^^    comment.block
  ]


[-  ----------------------------------
    ToC Options -> Wrong Letter Casing
    ---------------------------------- -]
  [options
    [TOC_MAX_LEVEL 4]
!   ^^^^^^^^^^^^^^      invalid.option-node.begin
!                   ^   invalid.option-node.end
    [toc_max_level 4]
!   ^^^^^^^^^^^^^^      invalid.option-node
    [TOC_POSITION top]
!   ^^^^^^^^^^^^^       invalid.option-node
!                    ^  invalid.option-node
    [toc_title ToC]
!   ^^^^^^^^^^          invalid.option-node
!                 ^     invalid.option-node
  ]

[-  *******************
    Highlighter Options
    ******************* -]

  [options
    [highlighter ]
!   ^^^^^^^^^^^^     entity.name.tag.option-node.highlighter.begin
!                ^   entity.name.tag.option-node.highlighter.end
!               ^    meta.annotation.option.highlighter
!   ^^^^^^^^^^^^    -meta.annotation.option.highlighter
!                ^  -meta.annotation.option.highlighter

    [highlighter highlightjs]
!                ^^^^^^^^^^^   string.unquoted
!               ^             -string.unquoted
    [highlighter HIGHLIGHTJS]
!                ^^^^^^^^^^^   string.unquoted
    [highlighter prism]
!                ^^^^^         string.unquoted
    [highlighter none]
!                ^^^^          string.unquoted
    [highlighter bad-txt_666]
!                ^^^^^^^^^^^   invalid.option-value
  ]

[-  -------------------------------------------
    Highlighter Options -> Constants & Comments
    ------------------------------------------- -]

  [options
    [highlighter [u:get someconst]]
!                ^^^^^^^^^^^^^^^^^   meta.function-call
    [highlighter [- a comment-]]
!                ^^^^^^^^^^^^^^      comment.block
  ]

[-  ------------------------------------------
    Highlighter Options -> Wrong Letter Casing
    ------------------------------------------ -]
  [options
    [HIGHLIGHTER ]
!   ^^^^^^^^^^^^          invalid.option-node.begin
!                ^        invalid.option-node.end
    [HigHLighteR prism]
!   ^^^^^^^^^^^^          invalid.option-node.begin
!                     ^   invalid.option-node.end
  ]

[- doc end -]
]
