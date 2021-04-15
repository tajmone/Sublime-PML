# Contributors' Guidelines

A few basic guidelines for contributing to the [Sublime PML] project.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Issues and Discussions](#issues-and-discussions)
- [Submitting Code and Contents](#submitting-code-and-contents)

<!-- /MarkdownTOC -->

-----

# Issues and Discussions

The repository offers two different areas for interacting with its maintainers: [Issues] and [Discussions].

[Issues] are intended for any communications directly relating to the repository development, such as:

- Bug reports.
- New feature requests.
- Anything that directly translates into a coding task, with no further ado.

[Discussions], on the other hand, can be used to discuss anything relating to the [Sublime PML] package, from ideas, proposal to comparison with other packages and general talk.
Unlike [Issues], [Discussions] threads allow nested posts, i.e. commenting on the main post or other comments in a tree-structured manner, and in some cases (depending on the setting of each category) also pose questions and then select the correct answer from the various replies.


# Submitting Code and Contents

Contributions to the repository should be submitted via Pull Requests (PRs) on the [`dev` branch][dev].

Each PR and commit is tested for code styles consistency on Travis CI, using the [EClint] validator for [EditorConfig].
If you're using an [editor or IDE that natively supports EditorConfig], code styling should be handled auto-magically in the background.
If not, check if there's an [EditorConfig plug-in/package] for your editor/IDE that you can install.

You're advised to validate your changes via the [`validate.sh`][validate.sh] script, provided you've installed [EClint] ([Node.js]), on your local machine, before submitting a PR, but it's not mandatory (every commit will be validated on GitHub).

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Sublime PML]: https://github.com/tajmone/Sublime-PML "Visit the Sublime PML repository"

<!-- tools and services -->

[EClint]: https://www.npmjs.com/package/eclint "EClint page at NPM"
[EditorConfig]: https://editorconfig.org "Learn more about EditorConfig on its official website"
[Node.js]: https://nodejs.org "Visit Node.js website"

[editor or IDE that natively supports EditorConfig]: https://editorconfig.org/#pre-installed "Check if your editor/IDE supports EditorConfig"
[EditorConfig plug-in/package]: https://editorconfig.org/#download "List of EditorConfig plug-ins for various editors and IDEs"

<!-- project files -->

[validate.sh]: ./validate.sh "View source script for code style validation"

<!-- repo links -->

[Issues]: https://github.com/tajmone/Sublime-PML/issues "View the current repository Issues or submit a new Issue"
[Discussions]: https://github.com/tajmone/Sublime-PML/discussions "Visit the Discussions area of Sublime PML"
[dev]: https://github.com/tajmone/Sublime-PML/tree/dev "View the 'dev' branch"

<!-- EOF -->
