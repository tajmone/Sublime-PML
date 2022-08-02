# Symbols Indexing

The contents of this folder deal with PML symbols, their transformation and indexing.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Files Description](#files-description)
    - [Indexing Definitions](#indexing-definitions)
    - [Indexing Examples](#indexing-examples)
- [Symbols Indexing Notes](#symbols-indexing-notes)
- [Developer Notes](#developer-notes)
    - [XML Escaping Rules](#xml-escaping-rules)
- [References](#references)

<!-- /MarkdownTOC -->

-----

# Files Description

## Indexing Definitions

- [`Symbol Attribute ID.tmPreferences`][ID] — Transforms `id` attributes (`string.unquoted.id`) for better symbol indexing:
    1. Add leading `#` (like HTML anchors).
- [`Symbol Chapter Title.tmPreferences`][Ch Title] Transforms chapter titles (headings) for better symbol indexing:
    1. Strip away font-formatting tags: `[b` / `[c` / `[i` / `[sub` / `[sup` / `[strike` .. `]`
    2. Remove redundant spaces.
    3. Add leading `=` + space.
- [`Symbol Parameter Definition.tmPreferences`][Param Def] — Enables local indexing of parameters definitions (`entity.name.function`) supporting __Goto Definition__ functionality. Transforms parameter symbols:
    1. Add leading `[u:set` + space.
- [`Symbol Parameter Occurrence.tmPreferences`][Param] — Enables local indexing of parameters occurrences (`support.function.call`). Transforms parameter symbols:
    1. Add leading `[u:get` + space.


## Indexing Examples

These PML documents provide commented examples of Symbols Indexing features, and are also used to visually inspect that these are working correctly.

- [`examples_ChapterTitle.pml`][eg Ch Title] — Chapter headings indexing demo/tests.


# Symbols Indexing Notes

- __Chapter titles__ are automatically indexed (locally) because they are scoped as `meta.toc-list.heading`.
- __Constant parameters__ had to be scoped as functions because Sublime Text's __Goto Definition__ functionality is hard-coded and only available for functions and classes.
- __Identifier__ attributes (`id`) are indexed (locally) because they are scoped as `meta.toc-list.id`.


# Developer Notes

## XML Escaping Rules

When writing RegEx definitions in `.tmPreferences` files you'll need to remember that since they are [property list] files (aka _p-list_), they follow the XML-Data escaping rules.

Here's a summary of these escaping rules, adapted from [@kjhughes]'s post on [StackOverflow][SO XML]:


1. **Always** (90% important to remember)
    + Escape `<` as `&lt;` unless `<` is starting a `<tag/>` or other markup.
    + Escape `&` as `&amp;` unless `&` is starting an `&entity;`.
2. **Attribute Values** (9% important to remember)
    + `attr="` — `'`Single quotes`'` are ok within double quotes.`"`
    + `attr='` — `"`Double quotes`"` are ok within single quotes.`'`
    + Escape `"` as `&quot;` and `'` as `&apos;` otherwise.
3. **Comments, CDATA, and Processing Instructions** (0.9% important to remember)
    + `<!--` Within comments `-->` nothing has to be escaped but no `--` strings are allowed.
    + `<![CDATA[` Within CDATA `]]>` nothing has to be escaped, but no `]]>` strings are allowed.
    + `<?PITarget` Within PIs `?>` nothing has to be escaped, but no `?>` strings are allowed.
4. **Esoterica** (0.1% important to remember)
    + Escape control codes in XML 1.1 via Base64 or Numeric Character References.
    + Escape `]]>` as `]]&gt;` unless `]]>` is ending a CDATA section.

More reference links are available in the the [References] section.

-------------------------------------------------------------------------------

# References

- [Sublime Text Community Documentation]:
    + [Reference]:
        * [Symbols]
- [ST3 Official Documentation]:
    + [Scope Naming]
    + [Syntax Definitions]
    + [Selectors]
- Escaping Rules in [p-list][property list] documents:
    + [W3C » XML 1.0 » §2.4] — XML Specification: §2.4 Character Data and Markup
    + [StackOverflow » Simplified XML Escaping][SO XML]
    + [liquid technologies » Escaping XML Data]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files -->

[Ch Title]: ./Symbol%20Chapter%20Title.tmPreferences "View source file"
[ID]: ./Symbol%20Attribute%20ID.tmPreferences "View source file"
[Param Def]: ./Symbol%20Parameter%20Definition.tmPreferences "View source file"
[Param]: ./Symbol%20Parameter%20Occurrence.tmPreferences "View source file"

[eg Ch Title]: ./examples_ChapterTitle.pml "View PML example source"


<!-- ST3 Official Docs -->

[ST3 Official Documentation]: https://www.sublimetext.com/docs/3/
[Scope Naming]: https://www.sublimetext.com/docs/3/scope_naming.html
[Syntax Definitions]: https://www.sublimetext.com/docs/3/syntax.html
[Selectors]: https://www.sublimetext.com/docs/3/selectors.html

<!-- ST3 Community Docs -->

[Sublime Text Community Documentation]: https://docs.sublimetext.io/

[Reference]: https://docs.sublimetext.io/reference/
[Symbols]: https://docs.sublimetext.io/reference/symbols.html

<!-- p-list/XML -->

[property list]: https://en.wikipedia.org/wiki/Property_list "Wikipedia » Property list"
[W3C » XML 1.0 » §2.4]: https://www.w3.org/TR/xml/#syntax "W3C » XML 1.0 » §2.4 Character Data and Markup"
[liquid technologies » Escaping XML Data]: https://www.liquid-technologies.com/XML/EscapingData.aspx
[SO XML]: https://stackoverflow.com/questions/1091945/what-characters-do-i-need-to-escape-in-xml-documents/46637835#46637835 "StackOverflow » Simplified XML Escaping"

<!-- Internal XRefs -->

[References]: #references "Jump to the 'References' section"

<!-- people -->

[@kjhughes]: https://stackoverflow.com/users/290085/kjhughes "View @kjhughes's profile on StackOverflow"

<!-- EOF -->
