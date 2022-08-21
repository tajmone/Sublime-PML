# Sublime PML Changelog

Users are strongly advised to regularly check this changelog in order to keep up with the latest package features.
Due to the package being installed directly from its GitHub repository, update notifications within Sublime Text are not available, therefore all package updates will happen silently in the background.

Although we initially tried versioning the package and using tagged releases, when we discovered that these were not beneficial in providing package updates notifications we stopped versioning the package and creating releases.

Updates will be logged according to their date, without a [Semantic Versioning] scheme for the entire duration of the Alpha stage of the package.
This approach considerably slims down the development and maintenance work, allowing for more frequent package updates.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [2022-08-21](#2022-08-21)
    - [PML 3.0.0](#pml-300)
    - [PML Dark: Switch to Relaxed Theme](#pml-dark-switch-to-relaxed-theme)
- [2022-08-12](#2022-08-12)
    - [Shared Title Node](#shared-title-node)
    - [New Changelog Menu](#new-changelog-menu)
    - [Drop Versioning and Releases](#drop-versioning-and-releases)
- [2022-08-03](#2022-08-03)
    - [Sublime PML User Guide](#sublime-pml-user-guide)
    - [Title Formatting](#title-formatting)
- [2022-07-19](#2022-07-19)
    - [PML 2.3.0](#pml-230)

<!-- /MarkdownTOC -->

-----

# 2022-08-21

    PML 3.0.0 | ST 4134

## PML 3.0.0

Package updated to new PML 3.0.0 release.

In terms of breaking changes, this update currently only affected the package build systems, since the PML Companion command line opinions underwent radical changed.

## PML Dark: Switch to Relaxed Theme

In the **[PML Dark]** default scheme, stop using the old **[Base16 Railcasts]** colour scheme and replace it with the **[Relaxed Theme]** by [Michael Kühnel]

Update the **PML Dark** definitions to make the most out of the new scheme, improving previously covered syntax elements and adding missing elements.

The resulting syntax colouring experience is now more pleasant to the eye, and its overall consistence has been greatly improved.

<!---------------------------------------------------------------------------->

# 2022-08-12

    PML 2.3.0 | ST 4134

## Shared Title Node

Tweak the syntax definition to use a commonly shared context for `[title` between `[doc` and `[ch` (see [Discussion #35][#35]).

The separate contexts were a left over feature from PML 1.5.0 when title was a node attribute instead of a node in its own right.

A shared `[title` implementation reduced maintenance efforts and simplifies the upcoming implementation of `[subtitle`.
From the end users perspective, the only difference is that now document titles are being indexed along with chapter titles.

## New Changelog Menu

Added new menu to quickly open in the browser the package CHANGELOG:

- Tools > PML > Sublime PML Changelog

## Drop Versioning and Releases

Because we realized that tagged releases were not affecting package updates as we expected, i.e. that the installation from GitHub prevents updates from occurring only at tagged releases, and package update messages are not being shown to end users after an update, we stopped versioning the package and creating tagged releases on GitHub.

The package is now simply updated whenever new commits are present in `main` branch, and since we don't have to prepare a release for each update this allows us to simplify development and offer updates more frequently.

The _Sublime PML User Guide_ no longer tracks the package version number (there isn't a version number any longer). Updates are now tracked by their date, i.e. when they were merged into `main`.

<!---------------------------------------------------------------------------->

# 2022-08-03

    PML 2.3.0 | ST 4134

## Sublime PML User Guide

Sublime PML has now an official online [user guide], hosted at the repository website.

A new menu has been added to easily open the guide in the default browser:

- Tools > PML > Sublime PML User Guide


## Title Formatting

Add support for inline nodes within a `[title` (document and chapter titles).

Before indexing, chapter headings are also stripped from any font-formatting tags, newline sequences and redundant spaces, to beautify lookup operations in the **Goto Symbol** panel.

<!---------------------------------------------------------------------------->

# 2022-07-19

    PML 2.3.0 | ST 4134

## PML 2.3.0

This is the first **Sublime PML** public release which can be installed directly from its GitHub repository via Sublime Text's native Package manager.

The package offers decent PML syntax support by implementing the most important nodes and capturing all other nodes as "generic nodes". Thanks to smart symbols indexing, Goto Definition functionality, completions and snippets, keyboard shortcuts and a dedicated color scheme, users can already use this package in production, even though it's still in its early stages.

Being in Alpha stage, the package is still experimental can be subject to frequent changes in its scoping conventions or any other features, if better approaches to handling the PML syntax are discovered.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Semantic Versioning]: https://semver.org "Semantic Versioning 2.0.0 website"

[user guide]: https://tajmone.github.io/Sublime-PML "View Sublime PML User Guide"

<!-- colour schemes -->

[PML Dark]: ./schemes/PML%20Dark.sublime-color-scheme "View PML Dark colour scheme source file"

[Base16 Railcasts]: https://htmlpreview.github.io/?https://github.com/chriskempson/base16-html-previews/blob/master/previews/base16-railscasts.html "Live HTML Preview of the Base16 Railcasts color scheme"
[Relaxed Theme]: https://github.com/Relaxed-Theme/about "Visit the Relaxed Theme info repository"

<!-- Issues and Discussions -->

[#35]: https://github.com/tajmone/Sublime-PML/discussions/35 "Discussion #35 — Doc vs Chapter Titles"

<!-- people -->

[Michael Kühnel]: https://github.com/mischah "View Michael Kühnel's GitHub profile"

<!-- EOF -->
