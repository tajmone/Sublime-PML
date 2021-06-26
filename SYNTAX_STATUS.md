# PML Syntax Status

Info about the PML syntax elements currently implemented in Sublime PML, and their roadmap.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Syntax Elements](#syntax-elements)
    - [Miscellanea](#miscellanea)
    - [Block Nodes](#block-nodes)
    - [Inline Nodes](#inline-nodes)
    - [Text Processing Nodes](#text-processing-nodes)
    - [Shared Attributes](#shared-attributes)

<!-- /MarkdownTOC -->

-----

# Syntax Elements

Task-list of the PML syntax elements that will ultimately be supported.

> **NOTE** — Attributes will eventually be added to the list, on a per-node basis.

## Miscellanea

- [ ] **Miscellanea**
    + [x] Inline paramters (e.g. `<<my_param>>`):
        * [x] Scoping and enlistment in local symbols list.
        * [x] __Goto Definition__ (<kbd>F12</kbd>) jumps to parameter's `[const` definition.
    + [ ] _more to come…_

## Block Nodes

- [ ] **[Block Nodes]**:
    + [ ] _Fundamental Nodes_:
        * [x] Document — `[doc`:
            - [x] Tag scoping.
            - [ ] Attributes:
                + [ ] `title`
                    * [x] smart auto-completion.
                + [ ] `authors`
                    * [x] smart auto-completion.
                + [x] `date`
                    * [x] smart auto-completion.
                    * [x] Date validation (invalid entries marked as `invalid.illegal`)
                    * [x] Placeholders supported (`YYYY`/`MM`/`DD`).
                + [x] `time`
                    * [x] smart auto-completion.
                    * [x] Time validation (invalid entries marked as `invalid.illegal`)
                    * [x] Placeholders supported (`hh`/`mm`).
                + [ ] `highlighter`
                    * [x] smart auto-completion:
                        - [ ] `highlighter` — Syntax Highlighter
                        - [ ] `hljs` — Syntax Highlighter: highlight.js
                        - [ ] `prism` — Syntax Highlighter: prism
                + [ ] `tocposition`
                    * [x] smart auto-completion:
                + [ ] `toctitle`
                    * [x] smart auto-completion.
            - [x] Snippet: `newdoc`.
        * [ ] Paragraph
        * [x] Chapter — `[ch`:
            - [x] Tag scoping.
            - [ ] Attributes:
                + [x] `title`
                    * [x] Title strings are added to Symbol Index (local) after string clean-up (removal of enclosing quotes, quotes escapes) and addition of a leading `= `.
                    * [x] smart auto-completion.
                + [x] `id` (shared with other nodes)
                    * [x] smart auto-completion.
                + [ ] HTML attributes.
            - [x] Snippet: `newch`.
    + [ ] _Common Nodes_:
        * [ ] List
        * [ ] Table
        * [ ] Admonition
        * [ ] Note
        * [x] Quote — `[quote`:
            - [x] Tag scoping.
            - [ ] Attributes:
                + [x] `id` (shared with other nodes)
                    * [x] smart auto-completion.
                + [ ] `source`
                    * [x] smart auto-completion.
                + [ ] `title`
                    * [x] smart auto-completion.
            - [ ] Snippet: `quote`?
        * [ ] Caption
        * [ ] Monospace
        * [ ] Division
        * [x] HTML Code — `[html`...`html]` — the whole block is passed to the native HTML syntax that ships with Sublime Text.
    + [ ] _Media_:
        * [ ] Image
        * [ ] Audio (Sound)
        * [ ] Video
        * [ ] Embedded Youtube Video
    + [ ] _Software Development_:
        * [ ] Source Code — `[code` .. `code]`:
            - [x] Tag scoping — **_not working entirely as expected!!!_** (See [#19]).
            - [ ] Snippet (???).
        * [ ] Insert Source Code
        * [ ] Input
        * [ ] Output

## Inline Nodes

- [ ] **[Inline Nodes]**:
    + [x] Font
        * [x] Bold Text — `[b`:
            - [x] Tag scoping.
            - [x] Keyboard shortcut <kbd>Alt</kbd> <kbd>b</kbd>.
        * [x] Italic Text — `[i`:
            - [x] Tag scoping.
            - [x] Keyboard shortcut <kbd>Alt</kbd> <kbd>i</kbd>.
        * [x] Subscript — `[sub`:
            - [x] Tag scoping.
            - [ ] Keyboard shortcut?
        * [x] Superscript — `[sup`:
            - [x] Tag scoping.
            - [ ] Keyboard shortcut?
        * [x] Strikethrough — `[strike`:
            - [x] Tag scoping.
            - [ ] Keyboard shortcut?
        * [x] Inline Source Code — `[c`:
            - [x] Tag scoping.
            - [ ] Keyboard shortcut (???).
    + [ ] URL Link
    + [ ] Verbatim Text
    + [ ] Cross-Reference
    + [x] Span
        * [x] Tag scoping.
        * [ ] Keyboard shortcut (???).
    + [x] New Line — `[nl`:
        * [x] Tag scoping.
        * [x] smart auto-completion (`nl`), globally available.
        * [x] Keyboard shortcut: <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>Enter</kbd> (PML files only, and not if a cursor is inside `[html` node).
    + [ ] Space Character — `[sp`:
        * [x] Tag scoping.
        * [x] smart auto-completion (`nbsp`), globally available.
        * [ ] Keyboard shortcut?

## Text Processing Nodes

- [ ] **[Text Processing Nodes]**:
    + [x] Comments — `[-` … `-]`:
        * [x] Nestable comments.
        * [x] Keyboard shortcuts:
            - [x] <kbd>Ctrl</kbd> <kbd>/</kbd>
            - [x] <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>/</kbd>
    + [ ] Insert File
    + [x] Constant Parameter — `[const`:
        * [x] Tag scoping.
        * [x] Assignment operator (`=`) scoping.
        * [x] Parameter identifier scoping.
        * [x] Parameter identifier gets enlisted in local symbols list (__Goto Definition__ supported).

## Shared Attributes

- [ ] **Shared Attributes** — i.e. which are not specific to a particular node only:
    + [ ] `id`:
        * [x] Attribute scoping.
        * [x] Assignment operator (`=`) scoping.
        * [x] Valid ID name.
            - [ ] Can contain parameter.
            - [x] ID name gets enlisted in local symbols list.
        * [x] Malformed ID name (as `invalid.illegal.attribute-name.id.pml`).
    + [ ] `html_` attributes:
        * [x] Attribute key scoping.
        * [x] Assignment operator (`=`) scoping:
        * [x] Attribute value scoping, as either:
            - [x] Quoted string.
            - [x] Unquoted string.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[PML Reference Manual]: https://www.pml-lang.dev/docs/reference_manual/index.html

[Block Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__2 "PML Reference Manual » Block Nodes"
[Inline Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__9 "PML Reference Manual » Inline Nodes"
[Text Processing Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__11 "PML Reference Manual » Text Processing Nodes"

<!-- Issues -->

[#19]: https://github.com/tajmone/Sublime-PML/issues/19 "View Issue on Sublime PML repository"

<!-- EOF -->
