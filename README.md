# Sublime PML

![Package Status][Package badge]&nbsp;
[![PML Version][PML badge]][Get PML]&nbsp;
[![MIT License][License badge]][MIT License]&nbsp;
[![Build Status][Travis badge]][Travis link]

[Sublime Text 3] syntax support for [PML]  (Practical Markup Language).

- https://github.com/tajmone/Sublime-PML

By [Tristano Ajmone], March 2021, [MIT License].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About PML](#about-pml)
- [Package Features and Status](#package-features-and-status)
    - [PML Syntax](#pml-syntax)
    - [Keyboard Shortcuts](#keyboard-shortcuts)
    - [Snippets](#snippets)
- [License](#license)
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


# Package Features and Status

This package is still a work-in-progress in its early stages.

Below are some task-lists indicating the project's roadmap and its current achievements (these lists are themselves a WIP draft, subject to updates as new features are identified and planned).

## PML Syntax

Roadmap of PML syntax elements that will ultimately be supported:

- [ ] **[Block Nodes]**:
    + [ ] _Fundamental Nodes_:
        * [ ] Document
        * [ ] Paragraph
        * [ ] Chapter
    + [ ] _Common Nodes_:
        * [ ] List
        * [ ] Table
        * [ ] Admonition
        * [ ] Note
        * [ ] Quote
        * [ ] Caption
        * [ ] Monospace
        * [ ] Division
        * [ ] HTML Code
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
        * [ ] Bold Text
        * [ ] Italic Text
        * [ ] Inline Source Code
    + [ ] URL Link
    + [ ] Verbatim Text
    + [ ] Cross-Reference
    + [ ] Span
    + [ ] New Line
    + [ ] Space Character
- [ ] **[Text Processing Nodes]**:
    + [x] Comments (nestable).
    + [ ] Insert File
    + [ ] Constant Parameter

## Keyboard Shortcuts

- [x] Comments: <kbd>Ctrl</kbd> <kbd>/</kbd>


## Snippets

The package provides the following snippets:

| trigger  |              description              |
|----------|---------------------------------------|
| `newdoc` | Creates new PML document boilerplate. |


# License

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


# Links

- [PML Reference Manual]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Sublime Text 3]: https://www.sublimetext.com "Visit Sublime Text website"

[MIT License]: ./LICENSE "View MIT License file"

<!-- PML -->

[PML]: https://www.pml-lang.dev "Visit PML website"
[Get PML]: https://www.pml-lang.dev/downloads/install.html "Go to the PML download page"
[2019article]: https://www.freecodecamp.org/news/we-need-a-new-document-markup-language-c22e0ec44e15/ "Read full article at freeCodeCamp"

[PML Reference Manual]: https://www.pml-lang.dev/docs/reference_manual/index.html

[Block Nodes]: https://www.pml-lang.dev/docs/reference_manual/index.html#ch__2 "PML Reference Manual » Block Nodes"
[Inline Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__9 "PML Reference Manual » Inline Nodes"
[Text Processing Nodes]:  https://www.pml-lang.dev/docs/reference_manual/index.html#ch__11 "PML Reference Manual » Text Processing Nodes"

<!-- project files -->

[.editorconfig]: ./.editorconfig "View EditorConfig settings file"
[.gitattributes]: ./.gitattributes "View Git attributes settings file"
[.gitignore]: ./.gitignore "View Git ignore settings file"
[.travis.yml]: ./.travis.yml "View Travis CI settings file"
[LICENSE]: ./LICENSE "View MIT License file"
[validate.sh]: ./validate.sh "View source script for code style validation"

<!-- badges -->

[License badge]: https://img.shields.io/badge/License-MIT-blue
[Package badge]: https://img.shields.io/badge/status-WIP-orange "Sublime PML is currently in Alpha stage"
[PML badge]: https://img.shields.io/badge/PML-1.2.0-yellow "Supported PML version (click for PML download page)"
[Travis badge]: https://travis-ci.com/tajmone/Sublime-PML.svg?branch=main
[Travis link]: https://travis-ci.com/tajmone/Sublime-PML "Travis CI: EditorConfig validation status"

<!-- people -->

[Christian Neumanns]: https://github.com/pml-lang "View Christian Neumanns's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
