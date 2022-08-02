[doc [title Chapter Title Indexing Examples]

This document provides examples of [b Sublime PML]'s smart Symbols-Indexing capabilities,
and also serves as a test file for this feature, although it requires visually inspecting
the results "manually" rather than automated testing.

To visually inspect the examples, while this PML source document is selected
open up Sublime Text's [b Goto Symbol ] panel by pressing
[c Ctrl]+[c R] ([c ⌘]+[c R] on Mac)
and compare how Chapter titles are in the source document vs their indexed version,
where the latter has undergone some cosmetic transformations.

[-  To simplify comparisons, when the expected result within the inline-code
    requires escaping, an unescaped version is provided within comments, for
    the sake of source consultation. -]

All Chapter titles are prefixed by a [c = ] (equal + space) to allow quick filtering the
indexed symbols to just Chapter titles by typing a [c =] symbol in the fuzzy search
field.


[ch [title  Spurios    Whitespace
            Handling]

    Multiple spaces and newline sequences are collapsed into single spaces, mimicking
    how title will look in the final document.

    The above title will be indexed as: [c = Spurios Whitespace Handling]


][ch [title Font Formatting Removal]

    Any inline text-formatting nodes — i.e.
    [c \[b], [c \[i], [c \[c], [c \[sub], [c \[sup] and [c \[strike] —
    will be stripped away from the indexed symbols.

    Here are some examples:

    [ch [title Font Test [b Bold ] Text]

    The above title will be indexed as: [c = Font Test Bold Text]

    ]
    [ch [title Font Test [c Code ] Text]

    The above title will be indexed as: [c = Font Test Code Text]

    ]

    etc. with the other "Font" nodes.

    [ch [title Font Multi-Test [c Bold ] [i Italic + [c Code]] Example ]

    The above title will be indexed as: [c = Font Multi-Test Bold Italic + Code Example]

    ]

][ch [title False Positives Prevention]

    Escaped brackets are not treated as node-delimiters and therefore
    are not stripped away from indexed symbols:

    [ch [title Escaped \[b Node \] Example]

    The above title will be indexed as: [c = Escaped \\\[b Node \\\] Example]
                                        [- = Escaped \[b Node \] Example   -]

    i.e. without stripping away the brackets and their escape backslashes.

    ][ch [title Escaped \[b Node \] + [b Bold Text ] Example]

    The above title will be indexed as: [c = Escaped \\\[b Node \\\] + Bold Text Example]
                                        [- = Escaped \[b Node \] + Bold Text Example   -]

    And here are some complex combination for edge testing...

    ][ch [title Escaped Complex: [b Bold /w \[escape ] Inside ]

    indexed as: [c = Escaped Complex: Bold /w \\\[escape Inside]
                [- = Escaped Complex: Bold /w \[escape Inside -]
    ]


][ch [title About Other Inline Nodes ]

    Although any inline node is valid inside titles, currently only the text
    formatting nodes of the "Font" group are supported, since they are the
    most likely candidates to be found in daily use, but also because these
    nodes don't support any kind of attributes, which would make them harder
    to handle.

    E.g. the [c \[span] node support HTML attributes, and it would be hard to
    strip away the node delimiters [i and ] the (optional) attributes group
    while leaving the node text intact — not impossible, but hard, and probably
    not worth the effort since its occurrence in titles is uncommon.

    Comments are also allowed in titles, and can be potentially encountered
    in real use (e.g. to temporarily remove a word from the title).
    In future update, comments stripping might be added, although nested
    comments might lead to unexpected results (although these are unlikely
    to be encountered within titles).

    Stripping nodes like [c \[sp\]] and [c \[nl\]] is not yet implemented,
    and probably won't since they are short and worth preserving.

    All other inline nodes will be simply shown in the indexed titles like
    they appear in the source code. Since their occurrence in titles is rare,
    this shouldn't be a problem.

]

]
