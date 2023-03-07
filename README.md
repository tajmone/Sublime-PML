# Sublime PML

![Package Status][Package badge]&nbsp;
[![PML Version][PML badge]][Get PML]&nbsp;
[![ST Version][ST badge]][ST Link]&nbsp;
[![MIT License][License badge]][MIT License]&nbsp;
[![Build Status][Travis badge]][Travis link]

![Sublime PML banner][banner img]

[Sublime Text 4] syntax support for [PML]  (Practical Markup Language).

- https://github.com/tajmone/Sublime-PML — source repository.
- https://tajmone.github.io/Sublime-PML — online user guide.


Created by [Tristano Ajmone] in March, 2021; released under [MIT License].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About PML](#about-pml)
- [Installation Instructions](#installation-instructions)
    - [System Requirements](#system-requirements)
- [Package Status](#package-status)
- [Package Features](#package-features)
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

PML was designed by [Christian Neumanns] around 2019, and since February 2021 the full source code of the PML conversion tool is available on GitHub under GPLv2 license:

- https://github.com/pml-lang/pml-companion

Precompiled binaries of the PML converter for Windows and Linux [can be downloaded from the official website][Get PML].

For more information on how PML was born, and its advantages over other lightweight markup languages, see Christian Neumanns's article [_We need a new document markup language — here is why_][2019article].


# Installation Instructions

Currently there are no plans to submit this package to the official [Package Control] channel, so you'll need [Git] on you machine in order to install it and keep it updated.

The following instructions will allow you to install this package from GitHub using Sublime Text's native Package Control tool even though the package is not listed at the [Package Control] website/channel.

1. Open the Command Palette by pressing <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> (Windows and Linux) or <kbd>&#8984;</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> (Mac).

2. Select the **Package Control: Add Repository** command (by clicking it with the mouse or pressing <kbd>enter</kbd>).
    + You'll see an input box appear at the bottom of the editor interface, next to a label stating "GitHub, GitLab or BitBucket Web URL...". Copy and paste in the input box the URL of this repository:

            https://github.com/tajmone/Sublime-PML

3. Open again the Command Palette and select the **Package Control: Install Package** command.
    + Now the **Sublime-PML** package will be listed among the packages available for installation: find it and select it to proceed with its installation.

After installation, the **Sublime-PML** package will be automatically updated whenever a new release is available.


## System Requirements

In order to use this package, you'll need the following tools:

- __[Sublime Text 4]__ — older versions of Sublime Text will not be supported, this package will make use of the new features added in ST4.
- __[Git]__ — required to install this package and keep it updated (i.e. until it's submitted to [Package Control]).
- __[PML binaries]__ — required if you want to benefit from the package's build systems, and other features which depend on `pmlc` being available on the System PATH.
In any case, why would anyone want to install the PML package if he/she doesn't have the PML tools in the first place?

    > **MAC USERS WARNING** — At the time of this writing, precompiled PML binaries for the macOS are not yet available.
    > Refer to the [pml-lang/pml-companion] source repository to compile them yourself.


# Package Status

This package is still a work-in-progress Alpha project, moving toward the Beta stage; syntax scopes and features might be subject to frequent changes, as everything is still experimental right now.
Other than that, the package is fully usable in production and offers decent support for PML editing and syntax highlighting.

For detailed info about the PML syntax elements implementation status and their roadmap, see [`PACKAGE_STATUS.md`][PACKAGE_STATUS.md].

There are no guarantees that this package will ever be completed, and no plans to submit it to [Package Control]'s official channel.


# Package Features

For the full list of features currently available in __Sublime PML__ see the online user guide:

- https://tajmone.github.io/Sublime-PML


# License

- [`LICENSE`][LICENSE]

```
MIT License

Copyright (c) 2021-2023 Tristano Ajmone

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

- __[Relaxed Theme]__ colour scheme, by [Michael Kühnel] [(see `schemes/README.md`](./schemes/README.md#base16-railcast) for full credits).


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
    + [pml-lang/pml-companion] — source code repository of the PML to HTML Converter tool.
    + [pml-lang/pml-userman] — [PML Reference Manual] source repository.

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

[PML Language Server]: https://github.com/pml-lang/pml-companion/discussions/categories/language-server "See 'Language Server' Discussions at PML official repository "

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

[@pml-lang]: https://github.com/pml-lang "View GitHub profile of the Practical Markup Language organization"
[pml-lang/pml-companion]: https://github.com/pml-lang/pml-companion "Visit repository on GitHub"
[pml-lang/pml-userman]: https://github.com/pml-lang/pml-userman "Visit repository on GitHub"

<!-- project files -->

[.editorconfig]: ./.editorconfig "View EditorConfig settings file"
[.gitattributes]: ./.gitattributes "View Git attributes settings file"
[.gitignore]: ./.gitignore "View Git ignore settings file"
[.travis.yml]: ./.travis.yml "View Travis CI settings file"
[CONTRIBUTING.md]: ./CONTRIBUTING.md "Read the Contributors' Guidelines"
[LICENSE]: ./LICENSE "View MIT License file"
[PACKAGE_STATUS.md]: ./PACKAGE_STATUS.md "View document"
[validate.sh]: ./validate.sh "View source script for code style validation"

<!-- badges -->

[License badge]: https://img.shields.io/badge/License-MIT-blue
[Package badge]: https://img.shields.io/badge/status-alpha-orange "Sublime PML is currently in Alpha stage"
[PML badge]: https://img.shields.io/badge/PML-4.0.0-yellow "Supported PML version (click for PML download page)"
[ST badge]: https://img.shields.io/badge/Sublime%20Text-4147-yellow?logo=sublime-text&logoColor=FF9800 "Sublime Text version (click to visit download page)"
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

[Git]: https://git-scm.com "Visit Git website"
[Language Server Protocol]: https://microsoft.github.io/language-server-protocol/ "Visit the Language Server Protocol website"
[VSCode]: https://code.visualstudio.com "Visit Visual Studio Code website"
[Relaxed Theme]: https://github.com/Relaxed-Theme/about "Visit the Relaxed Theme info repository"

<!-- images -->

[banner img]: ./img/sublime-pml-banner.png

<!-- people -->

[Christian Neumanns]: https://github.com/pml-lang "View Christian Neumanns's GitHub profile"
[Michael Kühnel]: https://github.com/mischah "View Michael Kühnel's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
