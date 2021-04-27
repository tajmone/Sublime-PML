# PML Syntax Status

Info about the PML syntax elements currently implemented in Sublime PML, and their roadmap.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Syntax Elements](#syntax-elements)

<!-- /MarkdownTOC -->

-----

# Syntax Elements

Task-list of the PML syntax elements that will ultimately be supported.

> **NOTE** — Attributes will eventually be added to the list, on a per-node basis.

- [ ] **Miscellanea**
    + [x] Inline paramters (e.g. `<<my_param>>`):
        * [x] Scoping and enlistment in local symbols list.
        * [x] __Goto Definition__ (<kbd>F12</kbd>) jumps to parameter's `[const` definition.
    + [ ] _more to come…_
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
        * [ ] Paragraph
        * [x] Chapter — `[ch`:
            - [x] Tag scoping.
            - [ ] Attributes:
                + [x] `title`
                    * [x] Title strings are added to Symbol Index (local) after string clean-up (removal of enclosing quotes, quotes escapes) and addition of a leading `= `.
                    * [x] smart auto-completion.
                + [x] `id` (shared with other nodes)
                    * [x] smart auto-completion.
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
        * [ ] Source Code
        * [ ] Insert Source Code
        * [ ] Input
        * [ ] Output
- [ ] **[Inline Nodes]**:
    + [ ] Font
        * [x] Bold Text — `[b`:
            - [x] Tag scoping.
            - [ ] Keyboard shortcut <kbd>Alt</kbd> <kbd>b</kbd>.
        * [x] Italic Text — `[i`:
            - [x] Tag scoping.
            - [ ] Keyboard shortcut <kbd>Alt</kbd> <kbd>i</kbd>.
        * [ ] Inline Source Code
    + [ ] URL Link
    + [ ] Verbatim Text
    + [ ] Cross-Reference
    + [ ] Span
    + [x] New Line — `[nl`:
        * [x] Tag scoping.
        * [x] smart auto-completion (`nl`), globally available.
        * [x] Keyboard shortcut: <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>Enter</kbd> (PML files only, and not if a cursor is inside `[html` node).
    + [ ] Space Character — `[sp`:
        * [x] Tag scoping.
        * [x] smart auto-completion (`nbsp`), globally available.
        * [ ] Keyboard shortcut?
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
- [ ] **Shared Attributes** — i.e. which are not specific to a particular node only:
    + [ ] `id`:
        * [x] attribute scoping.
        * [x] Assignment operator (`=`) scoping.
        * [x] Valid ID name.
            - [ ] Can contain parameter.
            - [x] ID name gets enlisted in local symbols list.
        * [x] Malformed ID name (as `invalid.illegal.attribute-name.id.pml`).


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[PML Reference Manual]: https://www.pml-lang.dev/docs/reference_manual/index.html

[Block Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__2 "PML Reference Manual » Block Nodes"
[Inline Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__9 "PML Reference Manual » Inline Nodes"
[Text Processing Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__11 "PML Reference Manual » Text Processing Nodes"

<!-- EOF -->
