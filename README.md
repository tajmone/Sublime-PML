# Sublime PML

![Package Status][Package badge]&nbsp;
[![PML Version][PML badge]][Get PML]&nbsp;
[![MIT License][License badge]][MIT License]&nbsp;
[![Build Status][Travis badge]][Travis link]

![Sublime PML banner][banner img]

[Sublime Text 3] syntax support for [PML]  (Practical Markup Language).

- https://github.com/tajmone/Sublime-PML

By [Tristano Ajmone], March 2021, [MIT License].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About PML](#about-pml)
- [Installation Instructions](#installation-instructions)
    - [System Requirements](#system-requirements)
- [Package Status](#package-status)
- [Package Features](#package-features)
    - [Build Systems](#build-systems)
    - [Keyboard Shortcuts](#keyboard-shortcuts)
    - [Auto-Completions](#auto-completions)
    - [Snippets](#snippets)
    - [Symbols Indexing](#symbols-indexing)
- [License](#license)
- [Contributing](#contributing)
- [Links](#links)

<!-- /MarkdownTOC -->

-----

# About PML

> The [Practical Markup Language][PML] (PML) is a new, free, advanced document markup language.
>
> PML simplifies the process of writing technical and non-technical web articles and books that look good out-of-the-box and are highly customizable.
>
> PML is still in its early days, but it is well suited for many kinds of web documents.

PML was designed by [Christian Neumanns] around 2019, and since February 2021 the full source code of the PML converter is available on GitHub under GPLv2 license:

- https://github.com/pml-lang/converter

Precompiled binaries of the PML converter for Windows and Linux [can be downloaded from the official website][Get PML].

For more information on how PML was born, and its advantages over other lightweight markup languages, see Christian Neumanns's article [_We need a new document markup language  — here is why_][2019article].


# Installation Instructions

Right now, this repository is not a full-fledged package that can be installed via [Package Control].

You should therefore install it manually, via Git:

1. From your terminal, navigate to your Packages subdirectory under the ST3's data directory:
    * OS X: `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/`
    * Linux: `~/.config/sublime-text-3/Packages/`
    * Windows: `%APPDATA%\Sublime Text 3\Packages\`
    * Windows (Scoop): `%USERPROFILE%/scoop/persist/sublime-text/Data/Packages/`
2. From that directory, invoke Git to clone this repository into the `PML` subdirectory:

        git clone https://github.com/tajmone/Sublime-PML PML

    > **IMPORTANT** — The extra `PML` at the end of the line is _not_ a mistake, it instructs Git to clone the repository into the `PML/` folder (instead of `Sublime-PML`).

3. Restart SublimeText.

Henceforth, Sublime Text will automatically take care of updating the package via Git.
For more info on how this works, see:

- [Package Control Documentation » Customizing Packages » Git/Hg Clone]


## System Requirements

In order to use this package, you'll need the following tools:

- __[Sublime Text 3]__ — older versions of Sublime Text are not supported; I don't know yet if the upcoming new Sublime Text version will support old ST3 packages via backward compatibility.
- __[Git]__ — required to install this package and keep it updated.
- __[PML binaries]__ — required if you want to benefit from the package's build systems, and other features which depend on `pmlc` being available on the System PATH.
In any case, why would anyone want to install the PML package if he/she doesn't have the PML tools in the first place?

    > **MAC USERS WARNING** — At the time of this writing, precompiled PML binaries for the macOS are not yet available.
    > Refer to the [pml-lang/converter] source repository to compile them yourself.


# Package Status

This package is still a work-in-progress project in its early Alpha stages; syntax scopes and features might be subject to frequent changes, as everything is still experimental at the current stage.

For detailed info about the PML syntax elements implementation status and their roadmap, see [`SYNTAX_STATUS.md`][SYNTAX_STATUS.md].

# Package Features

Here's a list of the feature currently available in the __Sublime PML__ package.

## Build Systems

The package provides some built-in basic build systems:

|           name           |                   description                    |               command               |
|--------------------------|--------------------------------------------------|-------------------------------------|
| _default_                | Convert file without options (i.e. to `output/`) | `pmlc <file.pml>`                   |
| Convert to source folder | Convert file to same folder as PML source        | `pmlc convert -f <file.pml> -od ./` |


## Keyboard Shortcuts

Some of the keystrokes combinations indicated below rely on Sublime Text's default settings, and might vary depending on your custom settings, whereas others are explicitly defined by this package.

<!-- MarkdownTOC:excluded -->
### Comments

The two comment shortcuts <kbd>Ctrl</kbd> <kbd>/</kbd> and <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>/</kbd> share some common behavior:

- Selected text is commented out: `[- `&lt;selection&gt;` -]`

Their behavior differs when nothing is selected:

|                  key stroked                  |            effect without selection           |
|-----------------------------------------------|-----------------------------------------------|
| <kbd>Ctrl</kbd> <kbd>/</kbd>                  | Comments out the whole line                   |
| <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>/</kbd> | Inserts comments delimiters under cursor only |

## Auto-Completions

Sublime PML offers smart auto-completion suggestions, based on the scope context under the cursor, thus avoiding completions pollution (i.e. cluttering the suggestions with unrelated elements).

<!-- MarkdownTOC:excluded -->
### Tag Attributes

For nodes that support attributes, context-specific suggestions are available within the editing space where tag attributes are allowed.

|   tag    |    trigger    |           description            |
|----------|---------------|----------------------------------|
| `[ch`    | `id`          | Chapter Identifier               |
| `[ch`    | `title`       | Chapter title                    |
| `[doc`   | `authors`     | Document Author(s)               |
| `[doc`   | `date`        | Publication Date                 |
| `[doc`   | `highlighter` | Syntax Highlighter               |
| `[doc`   | `hljs`        | Syntax Highlighter: highlight.js |
| `[doc`   | `prism`       | Syntax Highlighter: prism        |
| `[doc`   | `time`        | Publication Time                 |
| `[doc`   | `title`       | Document Title                   |
| `[doc`   | `tocposition` | TOC Position                     |
| `[doc`   | `toctitle`    | TOC Title                        |
| `[quote` | `id`          | Quotation Identifier             |
| `[quote` | `source`      | Source of Quotation              |
| `[quote` | `title`       | Quotation Title                  |


## Snippets

The package provides the following snippets:

| trigger  |              description              |
|----------|---------------------------------------|
| `newdoc` | Creates new PML document boilerplate. |


## Symbols Indexing

The following syntax elements are being indexed (local symbol list):

- _[Parameters]_, both their definitions and inline occurrences are indexed after cosmetic transformations:
    + Parameters definitions are prefixed with `[const `.
    + Parameters occurrences are enclosed within angle brackets: `<<param_name>>`.
- _[Chapter]_ titles (i.e. document headings) are indexed after some cosmetic transformations:
    + Quoted-string titles are stripped of:
        * Surrounding quotes.
        * Backslashes `\` escaping double quotes (i.e. `\"` &rarr; `"`).
    + All titles are prefixed with `= `, for easier symbol lookup.
- _Identifier_ attributes (`id`) are indexed with a leading `#`, resembling HTML anchors.

__Goto Definition__ functionality (<kbd>F12</kbd>) is also supported, allowing to quickly jump to the definition of any inline parameter.


# License

- [`LICENSE`][LICENSE]

```
MIT License

Copyright (c) 2021 Tristano Ajmone

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```


# Contributing

- [`CONTRIBUTING.md`][CONTRIBUTING.md]

Contributions to this repository are most welcome, whether in the form of suggestions and bug reports via [Issues] and [Discussions], or as actual repository contents submitted via Git.

All pull requests should be made against the [`dev` branch][dev].
For more information, please refer to our _[Contributors' Guidelines]_.


# Links

- [www.pml-lang.dev] — PML website:
    + [PML Reference Manual]
    + [PML User Manual]

<!-- MarkdownTOC:excluded -->
## Articles

Articles by [Christian Neumanns]:

- [_We need a new document markup language  — here is why_][2019article]
- _[The advantages of Document Markup Languages vs WYSIWYG editors]_

<!-- MarkdownTOC:excluded -->
## PML on GitHub

- [@pml-lang] — __PML Lang__ organization:
    + [pml-lang/converter] — source code repository of the PML to HTML Converter tool.
    + [pml-lang/user-manual] — [PML Reference Manual] source repository.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[MIT License]: ./LICENSE "View MIT License file"

[Sublime Text 3]: https://www.sublimetext.com "Visit Sublime Text website"

[Package Control]: https://packagecontrol.io
[Package Control Documentation » Customizing Packages » Git/Hg Clone]: https://packagecontrol.io/docs/customizing_packages#Git-Hg_Clone "Read Package Control documentation on 'Customizing Packages' via Git"

[Git]: https://git-scm.com "Visit Git website"

<!-- PML -->

[www.pml-lang.dev]: https://www.pml-lang.dev "Visit PML website"
[PML]: https://www.pml-lang.dev "Visit PML website"
[Get PML]: https://www.pml-lang.dev/downloads/install.html "Go to the PML download page"
[PML binaries]: https://www.pml-lang.dev/downloads/install.html "Download precompiled PML binaries"

[2019article]: https://www.freecodecamp.org/news/we-need-a-new-document-markup-language-c22e0ec44e15/ "Read full article at freeCodeCamp"
[The advantages of Document Markup Languages vs WYSIWYG editors]: https://www.pml-lang.dev/docs/articles/advantages-markup-language-vs-word-processor/index.html "Read full article at PMl website"

<!-- PML Reference Manual -->

[PML Reference Manual]: https://www.pml-lang.dev/docs/reference_manual/index.html "Read the online PML Reference Manual"

[Block Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__2 "PML Reference Manual » Block Nodes"
[Inline Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__9 "PML Reference Manual » Inline Nodes"
[Text Processing Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__11 "PML Reference Manual » Text Processing Nodes"
[Chapter]: https://www.pml-lang.dev/docs/reference_manual/index.html#node_chapter "PML Reference Manual » Fundamental Nodes » Chapter"

<!-- PML User Manual -->

[PML User Manual]: https://www.pml-lang.dev/docs/user_manual/index.html "Read the online PML User Manual"

[parameters]: https://www.pml-lang.dev/docs/user_manual/index.html#ch__11 "PML User Manual » Text Processing » Parameters"

<!-- PML GitHub -->

[@practical-markup-language]: https://github.com/practical-markup-language "View GitHub profile of the Practical Markup Language organization"

[@pml-lang]: https://github.com/pml-lang "View GitHub profile of the Practical Markup Language organization"
[pml-lang/converter]: https://github.com/pml-lang/converter "Visit repository on GitHub"
[pml-lang/user-manual]: https://github.com/pml-lang/user-manual "Visit repository on GitHub"

<!-- project files -->

[.editorconfig]: ./.editorconfig "View EditorConfig settings file"
[.gitattributes]: ./.gitattributes "View Git attributes settings file"
[.gitignore]: ./.gitignore "View Git ignore settings file"
[.travis.yml]: ./.travis.yml "View Travis CI settings file"
[CONTRIBUTING.md]: ./CONTRIBUTING.md "Read the Contributors' Guidelines"
[LICENSE]: ./LICENSE "View MIT License file"
[SYNTAX_STATUS.md]: ./SYNTAX_STATUS.md "View document"
[validate.sh]: ./validate.sh "View source script for code style validation"

<!-- badges -->

[License badge]: https://img.shields.io/badge/License-MIT-blue
[Package badge]: https://img.shields.io/badge/status-WIP-orange "Sublime PML is currently in Alpha stage"
[PML badge]: https://img.shields.io/badge/PML-1.4.0-yellow "Supported PML version (click for PML download page)"
[Travis badge]: https://travis-ci.com/tajmone/Sublime-PML.svg?branch=main
[Travis link]: https://travis-ci.com/tajmone/Sublime-PML "Travis CI: EditorConfig validation status"

<!-- repo links -->

[Issues]: https://github.com/tajmone/Sublime-PML/issues "View the current repository Issues or submit a new Issue"
[Discussions]: https://github.com/tajmone/Sublime-PML/discussions "Visit the Discussions area of Sublime PML"
[dev]: https://github.com/tajmone/Sublime-PML/tree/dev "View the 'dev' branch"

[Contributors' Guidelines]: ./CONTRIBUTING.md "Read the Contributors' Guidelines"

<!-- images -->

[banner img]: ./img/sublime-pml-banner.png

<!-- people -->

[Christian Neumanns]: https://github.com/pml-lang "View Christian Neumanns's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
