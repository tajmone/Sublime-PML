# Sublime PML

![Package Status][Package badge]&nbsp;
[![PML Version][PML badge]][Get PML]&nbsp;
[![ST Version][ST badge]][ST Link]&nbsp;
[![MIT License][License badge]][MIT License]&nbsp;
[![Build Status][Travis badge]][Travis link]

![Sublime PML banner][banner img]

[Sublime Text 4] syntax support for [PML]  (Practical Markup Language).

- https://github.com/tajmone/Sublime-PML

By [Tristano Ajmone], March 2021, [MIT License].

> **WARNING!** — [PML 2.0.0] was released in early September, introducing various syntax changes which are not backward compatible with PML 1.5.0.
>
> Updating the Sublime PML package to PML 2.0 is going to take some time, for it's basically going to require rewriting the whole syntax, and dumping the current syntax tests wholesale and rebuilding them from scratch — i.e. the whole package has to be recreated almost from scratch.
>
> I can't make any guarantees as to when (and _if_) the new version will be available — see [Discussion #28] regarding all the problems regarding making this package usable, and why we'd much prefer to invest energy in creating a syntax for VSCode instead.
>
> Furthermore, _don't submit any PRs until the migration to PML 2.0 is completed_ because I won't be able to merge them.

[PML 2.0.0]: https://github.com/pml-lang/converter/discussions/55 "PML 2.0 announcement"

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About PML](#about-pml)
- [Installation Instructions](#installation-instructions)
    - [System Requirements](#system-requirements)
- [Package Status](#package-status)
- [Package Roadmap](#package-roadmap)
- [Package Features](#package-features)
    - [Colour Schemes](#colour-schemes)
    - [Build Systems](#build-systems)
    - [Keyboard Shortcuts](#keyboard-shortcuts)
    - [Auto-Completions](#auto-completions)
    - [Snippets](#snippets)
    - [Symbols Indexing](#symbols-indexing)
- [License](#license)
- [Credits](#credits)
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

1. From your terminal, navigate to your Packages subdirectory under the ST4's data directory:
    * OS X: `~/Library/Application\ Support/Sublime\ Text\ 4/Packages/`
    * Linux: `~/.config/sublime-text-4/Packages/`
    * Windows: `%APPDATA%\Sublime Text 4\Packages\`
    * Windows (Scoop): `%USERPROFILE%/scoop/persist/sublime-text/Data/Packages/`

    > **NOTE** — If you've upgraded from ST3 to ST4, then the installation folder will be that of ST3 (i.e. the above paths will contain a `3` instead of a `4`).

2. From that directory, invoke Git to clone this repository into the `PML` subdirectory:

        git clone https://github.com/tajmone/Sublime-PML PML

    > **IMPORTANT** — The extra `PML` at the end of the line is _not_ a mistake, it instructs Git to clone the repository into the `PML/` folder (instead of `Sublime-PML`).

3. Restart SublimeText.

> **WARNING** The package thus installed _will not_ be automatically updated!
You'll have to come up with a scripted solution to update __Sublime PML__ by executing `git pull` within the package folder.
>
> For an overview of the problems that are preventing a self-updating package, see [Discussion #28] — where you'll also find the reasons why you shouldn't be using Sublime Text in the first place.

If you intend to contribute to the package, apply the above instructions using the URL of your __Sublime PML__ fork, instead of the official repository.
In this case, to update the package you'll have to pull changes from the upstream repository, and commit them to your fork.

For more info, see:

- [Package Control Documentation » Customizing Packages » Git/Hg Clone]


## System Requirements

In order to use this package, you'll need the following tools:

- __[Sublime Text 4]__ — older versions of Sublime Text will not be supported, this package will make use of the new features added in ST4.
- __[Git]__ — required to install this package and keep it updated (i.e. until it's submitted to [Package Control]).
- __[PML binaries]__ — required if you want to benefit from the package's build systems, and other features which depend on `pmlc` being available on the System PATH.
In any case, why would anyone want to install the PML package if he/she doesn't have the PML tools in the first place?

    > **MAC USERS WARNING** — At the time of this writing, precompiled PML binaries for the macOS are not yet available.
    > Refer to the [pml-lang/converter] source repository to compile them yourself.


# Package Status

This package is still a work-in-progress Alpha project, moving toward the Beta stage; syntax scopes and features might be subject to frequent changes, as everything is still experimental right now.

For detailed info about the PML syntax elements implementation status and their roadmap, see [`SYNTAX_STATUS.md`][SYNTAX_STATUS.md].

There are no guarantees that this package will ever be completed and submitted to [Package Control]'s official channel, for the reasons explained in the _Package Roadmap_ section.

# Package Roadmap

In the nearby future, I'll be investing more energy into creating a PML extension for the free and open source [VSCode] editor.

VSCode has been gaining huge traction lately.
According to [Stack Overflow's 2019 survey] it's the number one editor used by the developers' community, with a 50% score, whereas Sublime Text scored only 23%.

There are probably just as many reasons for _not using_ Sublime Text as there are for _using_ VSCode — from the lack of in-depth official documentation, the new time-limited licensing scheme, to the latest [controversy on how the update to Sublime Text 4 was rolled out] to (i.e. forced upon) ST3 users.
Whatever the reason (features richness, documentation coverage, proprietary vs open source, etc.), many long-time Sublime Text users have already migrated to VSCode — so will I, it's just a matter of reorganizing my workflow.

PML is an open source project, so it comes natural to prioritize open source editors over commercial ones when it comes to providing syntax support for the PML syntax.

Furthermore, VSCode is the editor officially associated with LSP ([Language Server Protocol]), and the ultimate goal for PML is to provide a [PML Language Server] that can be used on all editors and IDEs.

Once a PML Lang Server will be available, it will make little sense to keep investing energy in maintaining editor-specific packages, so a Sublime Text package would simply have to use the official [PML Language Server] — that is, _if_ ST4 will ever fully support LSP, which right now is definitely not the case.
Officially, Sublime Text is _not_ going to natively support LSP, although there are plans to introduce new API functionality that will help in that direction — in other words, they'll expect the community to implement and maintain a package for LSP support, just as they rely on community free-efforts for good documentation and the package manager.

I personally think that LSP is were the future for editor-agnostic syntax support lies, and the current trend for most editors is to offer native support for LSP (Sublime Text being the exception to the rule).

To summarize:

1. Development of PML syntaxes for FOSS editors will take precedence over this package.
2. [VSCode] is soon going to become the main focus for developing a PML syntax.
3. The ultimate goal is to create a [PML Language Server] that can be used by any editor and IDE that supports LSP.
4. When a PML Lang Server will be available, this package will either be refactored to make use of it, or it will be replaced altogether with a new ST package that does so (whichever is more convenient) — that is, _if_ ST4 will eventually fully support LSP.

In the meantime, you can use this package for editing PML documents.
Although still in Alpha stage, it's usable and offers enough features already to make it worth your wile (also, there aren't really any other alternatives right now, are there?).
The only problem right now is that the package won't self-update (see _[Installation Instructions]_).

# Package Features

Here's a list of the feature currently available in the __Sublime PML__ package.

## Colour Schemes

The package ships with a default _PML Dark_ colour scheme, intended to provide an improved editing experience for PML documents.
This scheme is associated to `.pml` source files via the package settings.
You can always override it, and use a scheme of your choice, by editing your syntax-specific User settings for the PML syntax.

> **NOTE** — The colour scheme is still WIP, incomplete and subject to frequent changes.


## Build Systems

The package provides some built-in basic build systems:

|           name           |                   description                    |               command               |
|--------------------------|--------------------------------------------------|-------------------------------------|
| _default_                | Convert file without options (i.e. to `output/`) | `pmlc <file.pml>`                   |
| Convert to source folder | Convert file to same folder as PML source        | `pmlc convert -f <file.pml> -od ./` |


## Keyboard Shortcuts

Some of the keystrokes combinations indicated below rely on Sublime Text's default settings, and might vary depending on your custom settings, whereas others are explicitly defined by this package.


|                    key strokes                    |              result              |                  context                  |
|---------------------------------------------------|----------------------------------|-------------------------------------------|
| <kbd>Alt</kbd> <kbd>B</kbd>                       | Make selection **bold** `[b`…`]` | Anywhere in PML file, except `[html` node |
| <kbd>Alt</kbd> <kbd>I</kbd>                       | Make selection _italic_ `[i`…`]` | Anywhere in PML file, except `[html` node |
| <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>Enter</kbd> | Inserts new line node `[nl]`     | Anywhere in PML file, except `[html` node |


<!-- MarkdownTOC:excluded -->
### Comments

The two comment shortcuts <kbd>Ctrl</kbd> <kbd>/</kbd> and <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>/</kbd> share some common behavior:

- Selected text is commented out: `[- `&lt;selection&gt;` -]`

Their behavior differs when nothing is selected:

|                  key strokes                  |            effect without selection           |
|-----------------------------------------------|-----------------------------------------------|
| <kbd>Ctrl</kbd> <kbd>/</kbd>                  | Comments out the whole line                   |
| <kbd>Ctrl</kbd> <kbd>Shift</kbd> <kbd>/</kbd> | Inserts comments delimiters under cursor only |

## Auto-Completions

Sublime PML offers smart auto-completion suggestions, based on the scope context under the cursor, thus avoiding completions pollution (i.e. cluttering the suggestions with unrelated elements).

<!-- MarkdownTOC:excluded -->
### Nodes

For commonly used nodes, context-specific suggestions are available.

| trigger | output |    description     |
|---------|--------|--------------------|
| `nbsp`  | `[sp]` | Non-Breaking Space |
| `nl`    | `[nl]` | New Line           |

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

| trigger  |                                   description                                    |
|----------|----------------------------------------------------------------------------------|
| `newdoc` | __New PML Document__ boilerplate, with attributes placeholders. Wraps selection. |
| `newch`  | __New Chapter__ template, with attributes placeholders. Wraps selection.         |


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


# Credits

This repository uses the following third party assets:

- __Base16 Railscasts__ colour scheme, by Ryan Bates, taken from the __[Base16 Builder]__ project, MIT License [(see `schemes/README.md`](./schemes/README.md#base16-railcast) for full credits).


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

[Sublime Text 4]: https://www.sublimetext.com "Visit Sublime Text website"

[Package Control]: https://packagecontrol.io
[Package Control Documentation » Customizing Packages » Git/Hg Clone]: https://packagecontrol.io/docs/customizing_packages#Git-Hg_Clone "Read Package Control documentation on 'Customizing Packages' via Git"

[Stack Overflow's 2019 survey]: https://insights.stackoverflow.com/survey/2019#technology-_-most-popular-development-environments "View 2019 survey on Most Popular Development Environments"
[controversy on how the update to Sublime Text 4 was rolled out]: https://forum.sublimetext.com/t/st3-update-now-is-st4/57892 "Sublime Forum » ST3 Update now is ST4"

<!-- PML -->

[www.pml-lang.dev]: https://www.pml-lang.dev "Visit PML website"
[PML]: https://www.pml-lang.dev "Visit PML website"
[Get PML]: https://www.pml-lang.dev/downloads/install.html "Go to the PML download page"
[PML binaries]: https://www.pml-lang.dev/downloads/install.html "Download precompiled PML binaries"

[2019article]: https://www.freecodecamp.org/news/we-need-a-new-document-markup-language-c22e0ec44e15/ "Read full article at freeCodeCamp"
[The advantages of Document Markup Languages vs WYSIWYG editors]: https://www.pml-lang.dev/docs/articles/advantages-markup-language-vs-word-processor/index.html "Read full article at PMl website"

[PML Language Server]: https://github.com/pml-lang/converter/discussions/categories/language-server "See 'Language Server' Discussions at PML official repository "

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
[PML badge]: https://img.shields.io/badge/PML-1.5.0-yellow "Supported PML version (click for PML download page)"
[ST badge]: https://img.shields.io/badge/Sublime%20Text-4109-yellow?logo=sublime-text&logoColor=FF9800 "Supported Sublime Text version (click to visit download page)"
[ST link]: https://www.sublimetext.com/download "Supported Sublime Text version (click to visit download page)"
[Travis badge]: https://img.shields.io/travis/com/tajmone/Sublime-PML/main?logo=travis
[Travis link]: https://travis-ci.com/tajmone/Sublime-PML "Travis CI: EditorConfig validation status"

<!-- repo links -->

[Issues]: https://github.com/tajmone/Sublime-PML/issues "View the current repository Issues or submit a new Issue"
[Discussions]: https://github.com/tajmone/Sublime-PML/discussions "Visit the Discussions area of Sublime PML"
[dev]: https://github.com/tajmone/Sublime-PML/tree/dev "View the 'dev' branch"

[Contributors' Guidelines]: ./CONTRIBUTING.md "Read the Contributors' Guidelines"
[Discussion #28]: https://github.com/tajmone/Sublime-PML/discussions/28#discussioncomment-936924

<!-- Document XRefs -->

[Installation Instructions]: #installation-instructions "Jump to 'Installation Instructions' section"

<!-- 3rd party tools and assets -->

[Base16 Builder]: https://github.com/chriskempson/base16-builder "Visit the Base16 Builder repository on GitHub"
[Git]: https://git-scm.com "Visit Git website"
[Language Server Protocol]: https://microsoft.github.io/language-server-protocol/ "Visit the Language Server Protocol website"
[VSCode]: https://code.visualstudio.com "Visit Visual Studio Code website"

<!-- images -->

[banner img]: ./img/sublime-pml-banner.png

<!-- people -->

[Christian Neumanns]: https://github.com/pml-lang "View Christian Neumanns's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
