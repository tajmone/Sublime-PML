# Symbols Indexing

The contents of this folder deal with PML symbols, their transformation and indexing.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Files Description](#files-description)
- [Symbols Indexing Notes](#symbols-indexing-notes)
- [References](#references)

<!-- /MarkdownTOC -->

-----

# Files Description

- [`Symbol Attribute ID.tmPreferences`][ID] — Manipulates `id` attributes (`entity.other.attribute-name.id`) for better symbol indexing:
    1. Add leading `#` (like HTML anchors).
- [`Symbol Chapter Title Quoted.tmPreferences`][Ch Title Quoted] — Manipulates quoted chapter titles (headings) for better symbol indexing:
    1. Remove leading double-quote.
    2. Remove trailing double-quote.
    3. Remove backslashes from escaped double-quotes.
    4. Add leading `= `.
- [`Symbol Chapter Title Unquoted.tmPreferences`][Ch Title Unquoted] — Manipulates unquoted chapter titles (headings) for better symbol indexing:
    1. Add leading `= `.
- [`Symbol Parameter Definition.tmPreferences`][Param Def] — Enables local indexing of `[const` parameters definitions (`entity.name.function`) supporting __Goto Definition__ functionality.
- [`Symbol Parameter Occurrence.tmPreferences`][Param] — Enables local indexing of parameters occurrences (`support.function.call`).


# Symbols Indexing Notes

- __Chapter titles__ are automatically indexed (locally) because they are scoped as `meta.toc-list.heading`.
- __Constant parameters__ had to be scoped as functions because Sublime Text's __Goto Definition__ functionality is hard-coded and only available for functions and classes.
- __Identifier__ attributes (`id`) are indexed (locally) because they are scoped as `meta.toc-list.id`.


# References

- [Sublime Text Community Documentation]:
    + [Reference]:
        * [Symbols]
- [ST3 Official Documentation]:
    + [Scope Naming]
    + [Syntax Definitions]
    + [Selectors]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files -->

[Ch Title Quoted]: ./Symbol%20Chapter%20Title%20Quoted.tmPreferences "View source file"
[Ch Title Unquoted]: ./Symbol%20Chapter%20Title%20Unquoted.tmPreferences "View source file"
[ID]: ./Symbol%20Attribute%20ID.tmPreferences "View source file"
[Param Def]: ./Symbol%20Parameter%20Definition.tmPreferences "View source file"
[Param]: ./Symbol%20Parameter%20Occurrence.tmPreferences "View source file"

<!-- ST3 Official Docs -->

[ST3 Official Documentation]: https://www.sublimetext.com/docs/3/
[Scope Naming]: https://www.sublimetext.com/docs/3/scope_naming.html
[Syntax Definitions]: https://www.sublimetext.com/docs/3/syntax.html
[Selectors]: https://www.sublimetext.com/docs/3/selectors.html

<!-- ST3 Community Docs -->

[Sublime Text Community Documentation]: https://docs.sublimetext.io/

[Reference]: https://docs.sublimetext.io/reference/
[Symbols]: https://docs.sublimetext.io/reference/symbols.html

<!-- EOF -->
