# Sublime PML Package Status

Info about the package status in terms of PML syntax elements and features currently implemented and those awaiting implementation.

> **WARNING** — The list of pending tasks might not be 100% accurate due to breaking changes across PML v2.x and 3.x. Although I've tried to keep the list up to date with the latest changes, chances are that details have been overlooked. Always double check against the latest generated JSON tags file and official docs.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Syntax Elements](#syntax-elements)
    - [Block Nodes](#block-nodes)
        - [Fundamental Nodes](#fundamental-nodes)
        - [Common Nodes](#common-nodes)
        - [Media](#media)
        - [Software Development](#software-development)
    - [Inline Nodes](#inline-nodes)
        - [Font Nodes](#font-nodes)
    - [Footnotes](#footnotes)
    - [Text Processing Nodes](#text-processing-nodes)

<!-- /MarkdownTOC -->

-----

# Syntax Elements

Info about the status of PML nodes and other syntax-related elements currently implemented in Sublime PML, and their roadmap.

Syntax elements with a ticked checkbox are ready to use, even though some features might still be pending implementation (unticked checkbox).

To simplify consultation, nodes are organized into sub-sections like in the PML _[PML Reference Manual]_ and presented in the same order, and syntax elements and their categories link back to their descriptions in the _[Reference][PML Reference Manual]_ and _[User][PML User Manual]_ manuals.


## Block Nodes

> See: [PML Reference Manual] » [Block Nodes].

### Fundamental Nodes

> See: [PML Reference Manual] » [Block Nodes] » [Fundamental Nodes].

- [x] Options — `[options` node.
    - [ ] Supports all (most?) CLI options as sub-nodes:
        + [x] `[highlighter` — `highlightjs`, `prism`, `none`.
        + [x] `[TOC_max_level` — _integer_.
        + [x] `[TOC_position` — `left`, `top`, `none`.
        + [x] `[TOC_title` — _string_.
        + [ ] `[HTML_page_footer` — file path.
        + [ ] `[HTML_page_header` — file path.
        + [ ] `[resources` — path(s).
        + [ ] `[CSS_files` — path(s).
        + [ ] `[omit_CSS` — `yes`, `no`, `true`, `false`.
    + [ ] Attributes completions:
        * [x] `highlighter` &rarr; `[highlighter ${1:highlightjs}]\n$0`
        * [x] `hljs` &rarr; `[highlighter highlightjs]\n$0`
        * [x] `prism` &rarr; `[highlighter prism]\n$0`
        * [x] `tocposition` &rarr; `[TOC_position ${1:top}]\n$0`
        * [x] `toctitle` &rarr; `[TOC_title ${1:Contents}]\n$0`
        * [ ] ... _more_ ...
- [x] Document — `[doc` .. `]`
    + [x] Tag scoping.
    + [x] Attributes:
        * [x] `id`
        * [x] HTML attributes
    + [ ] Attributes completions (most attributes now moved to `[options`):
        * [ ] HTML attributes
    + [x] Snippet: `newdoc`.
- [x] Paragraph — `[p` .. `]`.
    + [x] Tag scoping.
    + [x] Attributes:
        * [x] `id`
        * [x] HTML attributes
    + [ ] Attributes completions:
        * [ ] `id` &rarr; `id = ${1:identifier} $0`
        * [ ] `html_class` &rarr; `html_class = ${1:some_class} $0`
- [x] Chapter — `[ch` .. `]`:
    + [x] Tag scoping.
    + [x] Attributes:
        * [x] `id`
        * [x] HTML attributes
    + [x] Attributes completions:
        * `id` &rarr; `id = ${1:identifier} $0`
- [x] Title — `[doc [title` and `[ch [title` sub-node:
    + [x] Tag scoping.
    + [x] Attributes:
        * [x] `id`
        * [x] HTML attributes
    + [x] Snippet: `newch`.
    + [ ] Symbol Indexing (local):
        * [ ] Title text is transformed for better lookup:
            - [x] Prefixed with `= `.
            - [x] Surrounding spaces are trimmed.
            - [x] Multi-line titles are shown as a single line with spurious spaces collapsed into a single space.
            - [ ] Strip away from indexed title inline-tag delimiters:
                + [x] Font formatting: `[b` / `[c` / `[i` / `[sub` / `[sup` / `[strike` .. `]`
- [ ] Subtitle — `[ch [title [subtitle` sub-node.

### Common Nodes

> See: [PML Reference Manual] » [Block Nodes] » [Common Nodes].

- [ ] _[List Nodes]_:
    + [ ]  [List] — `[list` .. `]`.
    + [ ]  [List Element] — `[el` .. `]`.
- [ ] _[Table Nodes]_:
    + [ ] Simple Table — `[sim_table` .. `sim_table]`.
    + [ ] Table — `[table` .. `]`.
    + [ ] Table Header — `[theader` .. `]`.
    + [ ] Table Footer — `[tfooter` .. `]`.
    + [ ] Table Row — `[tr` .. `]`.
    + [ ] Table Cell — `[tc` .. `]`.
- [ ] Header — `[header` .. `]`.
- [ ] Caption — `[caption` .. `]`
- [ ] Admonition — `[admon` .. `]`.
- [ ] Note — `[note` .. `]`.
- [x] Quote — `[quote` .. `]`
    + [x] Tag scoping.
    + [x] Attributes:
        * [x] `id`
        * [x] HTML attributes
    + [ ] Attributes completions:
        * [x] `id` &rarr; `id = ${1:identifier} $0`
        * [ ] HTML attributes
    + [x] Quote Source — `[qsource` .. `]`
        * [x] Tag scoping.
        * [x] Attributes:
            - [x] `id`
            - [x] HTML attributes
- [ ] Monospace — `[monospace` .. `]`
- [ ] Division — `[div` .. `]`
- [x] HTML Code — `[html` .. `]`
    + [x] Tag scoping.
    + [x] Support alternative [`raw_text`][raw_text] syntaxes: (See [#40])
        * [x]  [Standard Text Syntax]
        * [x]  [Delimited Text Syntax]
    + [x] Syntax embedding: node contents are passed to the native HTML syntax that ships with Sublime Text.
    + [x] Attributes:
        * [x] `id`
        * [x] HTML attributes
    + [ ] Lenient parsing: Unconstrained attributes.
    + [x] Snippets:
        * [x] `bkhtml`


### Media

> See: [PML Reference Manual] » [Block Nodes] » [Media].

- [ ]  [Image] — `[image` .. `]`
- [ ]  [Audio] (Sound) — `[audio` .. `]`
- [ ]  [Video] — `[video` .. `]`
- [ ]  [Embedded YouTube Video] — `[youtube_video` .. `]`

### Software Development

> See: [PML Reference Manual] » [Block Nodes] » [Software Development].

- [x]  [Source Code] — `[code` .. `]`
    + [x] Tag scoping.
    + [x] Support alternative [`raw_text`][raw_text] syntaxes: (See [#40])
        * [x]  [Standard Text Syntax]
        * [x]  [Delimited Text Syntax]
    + [ ] Attributes:
        * [x] `id`
        * [ ] `highlight`
        * [ ] `lang`
        * [x] HTML attributes
    + [ ] Lenient parsing: Unconstrained attributes.
    + [x] Snippets:
        * [x] `bkcode`
- [ ]  [Insert Source Code] — `[insert_code` .. `]`
- [x]  [Input] — `[input` .. `]`
    + [x] Tag scoping.
    + [x] Support alternative [`raw_text`][raw_text] syntaxes: (See [#40])
        * [x]  [Standard Text Syntax]
        * [x]  [Delimited Text Syntax]
    + [x] Attributes:
        * [x] `id`
        * [x] HTML attributes
    + [ ] Lenient parsing: Unconstrained attributes.
    + [x] Snippets:
        * [x] `bkinput`
- [x]  [Output] — `[output` .. `]`
    + [x] Tag scoping.
    + [x] Support alternative [`raw_text`][raw_text] syntaxes: (See [#40])
        * [x]  [Standard Text Syntax]
        * [x]  [Delimited Text Syntax]
    + [x] Attributes:
        * [x] `id`
        * [x] HTML attributes
    + [ ] Lenient parsing: Unconstrained attributes.
    + [x] Snippets:
        * [x] `bkoutput`


## Inline Nodes

> See: [PML Reference Manual] » [Inline Nodes].

- [ ] URL Link — `[link` .. `]`
- [ ] Verbatim Text — `[verbatim` .. `]`
- [ ] Cross-Reference — `[xref` .. `]`
- [x] [Span] — `[span` .. `]`
    + [x] Tag scoping.
    + [ ] Keyboard shortcut (???).
- [x] New Line — `[nl` .. `]`
    + [x] Tag scoping.
    + [x] smart auto-completion (`nl`), globally available.
    + [x] Keyboard shortcut: <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>Enter</kbd> (PML files only, and not if a cursor is inside `[html` node).
- [x] Space Character — `[sp` .. `]`
    + [x] Tag scoping.
    + [x] smart auto-completion (`nbsp`), globally available.
    + [ ] Keyboard shortcut?
- [ ] Text — `[text` .. `]`

### Font Nodes

> See: [PML Reference Manual] » [Inline Nodes] » [Font].

- [x] Bold Text — `[b` .. `]`
    + [x] Tag scoping.
    + [x] Keyboard shortcut <kbd>Alt</kbd> <kbd>b</kbd>.
- [x] Italic Text — `[i` .. `]`
    + [x] Tag scoping.
    + [x] Keyboard shortcut <kbd>Alt</kbd> <kbd>i</kbd>.
- [x] Subscript — `[sub` .. `]`
    + [x] Tag scoping.
    + [ ] Keyboard shortcut?
- [x] Superscript — `[sup` .. `]`
    + [x] Tag scoping.
    + [ ] Keyboard shortcut?
- [x] Strikethrough — `[strike` .. `]`
    + [x] Tag scoping.
    + [ ] Keyboard shortcut?
- [x] Inline Source Code — `[c` .. `]`
    + [x] Tag scoping.
    + [ ] Keyboard shortcut (???).


## Footnotes

> - See: [PML Reference Manual] »
>     + [Block Nodes » Footnotes].
>     + [Inline Nodes » Footnotes].

- [ ] [Footnotes Placeholder] — `[fnotes]`
    + [ ] Tag scoping.
    + [ ] Attributes:
        * [ ] `id`
        * [ ] HTML attributes
    + [x] Completion: `fnpholder`.
- [ ] [Footnote Definition] — `[fnote_def` .. `]`
    + [ ] Tag scoping.
    + [ ] Attributes:
        * [ ] `id`
        * [ ] HTML attributes
    + [x] Snippet: `fndef`.
- [ ] [Inline Footnote] — `[fnote` .. `]`
    + [ ] Tag scoping.
    + [ ] Attributes:
        * [ ] HTML attributes
    + [x] Snippet: `fnote`.
- [ ] [Footnote Reference] — `[fnote_ref` .. `]`
    + [ ] Tag scoping.
    + [ ] Attributes:
        * [ ] `did`
        * [ ] `text`
        * [ ] HTML attributes
    + [x] Completions:
        * [x] `fnref` — just `did`.
        * [x] `fntref` — `did` + custom `text`.


## Text Processing Nodes

> See: [PML User Manual] » [Text Processing Nodes].


- [x] Comments — `[-` .. `-]`
    + [x] Nestable comments.
    + [x] Keyboard shortcuts:
        * [x] <kbd>Ctrl</kbd> <kbd>/</kbd>
        * [x] <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>/</kbd>
- [ ] [Insert File] — `[u:ins_file path =` .. _file_path_ `]`
- [x] [Parameters] — `[u:set` .. `]` and `[u:get` .. `]`:
    + [x] Basic node scoping.
        * [ ] Need to handle scoping of the `u:` namespace part.
        * [ ] `[u:set`: allow multiple definitions.
    + [x] Indexing in local symbols list:
        * [x] Symbols are transformed by prefixing their `[u:set`/`[u:get` tags for easier lookup and fuzzy searching.
    + [x] __Goto Definition__ (<kbd>F12</kbd>) jumps to parameter's `[u:set` definition.
    + [x] Completions: `pset` and `pget` to quickly define and insert parameters, respectively.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- PML Reference Manual -->

[PML Reference Manual]: https://www.pml-lang.dev/docs/reference_manual/index.html "Read the online PML Reference Manual"

[Block Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__8 "PML Reference Manual » Block Nodes"

[Fundamental Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__2 "PML Reference Manual » Block Nodes » Fundamental Nodes"

[Common Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__5 "PML Reference Manual » Block Nodes » Common Nodes"

[List Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__3 "PML Reference Manual » Block Nodes » Common Nodes » List Nodes"
[List]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_list "PML Reference Manual » List node"
[List Element]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_el "PML Reference Manual » List Element node"

[Table Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__4 "PML Reference Manual » Block Nodes » Common Nodes » Table Nodes"

[Media]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__6 "PML Reference Manual » Block Nodes » Media"
[Image]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_image "PML Reference Manual » Image node"
[Audio]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_audio "PML Reference Manual » Audio node"
[Video]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_video "PML Reference Manual » Video node"
[Embedded YouTube Video]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_youtube_video "PML Reference Manual » Embedded YouTube Video] node"

[Software Development]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__7 "PML Reference Manual » Block Nodes » Software Development"
[Source Code]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_code "PML Reference Manual » Source Code node"
[Insert Source Code]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_insert_code "PML Reference Manual » Insert Source Code node"
[Input]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_input "PML Reference Manual » Input node"
[Output]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_output "PML Reference Manual » Output node"

[Inline Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__10 "PML Reference Manual » Inline Nodes"

[Font]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__9 "PML Reference Manual » Inline Nodes » Font"

[Span]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_span "PML Reference Manual » Span node"


[Block Nodes » Footnotes]: https://www.pml-lang.dev/docs/reference_manual/index.html#footnotes_block "PML Reference Manual » Block Nodes » Footnotes"
[Inline Nodes » Footnotes]: https://www.pml-lang.dev/docs/reference_manual/index.html#footnotes_inline "PML Reference Manual » Inline Nodes » Footnotes"

[Footnotes Placeholder]: https://pml-lang.dev/docs/reference_manual/index.html#node_fnotes"PML "PML Reference Manual » Block Nodes » Footnotes Placeholder"
[Footnote Definition]: https://pml-lang.dev/docs/reference_manual/index.html#node_fnote_def "PML Reference Manual » Block Nodes » Footnotes Definition"
[Inline Footnote]: https://pml-lang.dev/docs/reference_manual/index.html#node_fnote "PML Reference Manual » Block Nodes » Footnotes Footnote"
[Footnote Reference]: https://pml-lang.dev/docs/reference_manual/index.html#node_fnote_ref "PML Reference Manual » Block Nodes » Footnotes Reference"


<!-- PML User Manual -->

[PML User Manual]: https://www.pml-lang.dev/docs/user_manual/index.html "Read the online PML User Manual"

[Text Processing Nodes]:  https://www.pml-lang.dev/docs/user_manual/index.html#text_processing "PML User Manual » Text Processing Nodes"
[Insert File]: https://www.pml-lang.dev/docs/user_manual/index.html#file_splitting "PML User Manual » File Splitting"
[Parameters]: https://www.pml-lang.dev/docs/user_manual/index.html#parameters "PML User Manual » Parameters"

<!-- PDML DOcs -->

[raw_text]: https://pdml-lang.github.io/docs/extensions/reference_manual/index.html#raw_text "PDML Extensions Reference Manual » Types » raw_Text"
[Standard Text Syntax]: https://pdml-lang.github.io/docs/extensions/reference_manual/index.html#raw_text_standard_syntax "PDML Extensions Reference Manual » Types » raw_Text » Standard Text Syntax"
[Text Block Syntax]: https://pdml-lang.github.io/docs/extensions/reference_manual/index.html#raw_text_block_syntax "PDML Extensions Reference Manual » Types » raw_Text » Text Block Syntax"
[Delimited Text Syntax]: https://pdml-lang.github.io/docs/extensions/reference_manual/index.html#raw_text_delimiter_syntax "PDML Extensions Reference Manual » Types » raw_Text » Delimited Text Syntax"

<!-- Issues & Discussions -->

[#40]: https://github.com/tajmone/Sublime-PML/issues/40 "Issue #40 — Fix Raw-Text Nodes: Support Alternative Syntaxes"

<!-- EOF -->
