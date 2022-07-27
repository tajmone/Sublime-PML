# Sublime PML Changelog



-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Alpha 0.7.1 \(2022/08/03\)](#alpha-071-20220803)
- [Alpha 0.7.0 \(2022/07/19\)](#alpha-070-20220719)

<!-- /MarkdownTOC -->

-----

# Alpha 0.7.1 (2022/08/03)

    PML 2.3.0 | ST 4134

* New menu "Tools > PML > Sublime PML User Guide" to open in the browser the new [online manual](https://tajmone.github.io/Sublime-PML "View Sublime PML User Manual") hosted at the repository website.
* Add support for inline nodes within a `[title` (document and chapter titles).
    - Before indexing, chapter headings are also stripped from any font-formatting tags, newline sequences and redundant spaces, to beautify lookup operations in the **Goto Symbol** panel.



# Alpha 0.7.0 (2022/07/19)

    PML 2.3.0 | ST 4134

This is the first **Sublime PML** public release which can be installed directly from its GitHub repository via Sublime Text's native Package manager.

The package offers decent PML syntax support by implementing the most important nodes and capturing all other nodes as "generic nodes". Thanks to smart symbols indexing, Goto Definition functionality, completions and snippets, keyboard shortcuts and a dedicated color scheme, users can already use this package in production, even though it's still in its early stages.

Being in Alpha stage, the package is still experimental can be subject to frequent changes in its scoping conventions or any other features, if better approaches to handling the PML syntax are discovered.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>



<!-- EOF -->
