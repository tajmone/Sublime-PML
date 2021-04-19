# Contributors' Guidelines

A few basic guidelines for contributing to the [Sublime PML] project.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Issues and Discussions](#issues-and-discussions)
- [Submitting Code and Contents](#submitting-code-and-contents)
    - [Code Styles Convention](#code-styles-convention)
    - [EditorConfig Validation via Travis CI](#editorconfig-validation-via-travis-ci)
    - [Validating Commits via EClint](#validating-commits-via-eclint)

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

## Code Styles Convention

This repository adopts [EditorConfig] to enforce consistent code styles in the repository contents and across different editors and IDEs.

If you're using an [editor or IDE that natively supports EditorConfig], code styling should be handled auto-magically in the background.
If not, check if there's an [EditorConfig plug-in/package] for your editor/IDE that you can install.

## EditorConfig Validation via Travis CI

Each PR and commit is tested on GitHub for code styles consistency via Travis CI, using the [EClint] validator for [EditorConfig].

Travis CI validation is performed by the [`validate.sh`][validate.sh] script found in the repository root; you can run the script locally to check the integrity status of your repository folder (the script will check all files, including unstaged and ignored ones).

## Validating Commits via EClint

You're strongly advised to install [EClint] and our pre-commit [Git hook] to validate your changes for code consistency at commit time:

- [`git-hook-install.sh`][git-hook-install.sh] — installs the pre-commit hook.
- [`git-hook-remove.sh`][git-hook-remove.sh] — removes the pre-commit hook.

Once installed the pre-commit hook, every time you carry out a commit operation the staged files will be first checked via [EClint] to ensure that they meet the code styles settings in [`.editorconfig`][.editorconfig], and if they don't the commit will fail with an error listing the files that didn't pass the validation test.

> **NOTE** — You can always bypass the pre-commit hook via the `--no-verify` option, e.g.:
>
> ```
> git commit --no-verify
> ```

The advantage of using this hook instead of the [`validate.sh`][validate.sh] script is that the hook will test only the staged files involved in the actual commit, whereas the script will test _every_ file in the repository folder, including ignored and unstaged files, which is more time consuming and not focused on the specific commit changes.

The [`git-hook-install.sh`][git-hook-install.sh] script will create the following files inside the repository:

- `.git/hooks/pre-commit-validate.sh` — the commit validation script.
- `.git/hooks/pre-commit` — the pre-commit hook that launches the validation script.

You can uninstall the Git hook at any time, by executing:

- [`git-hook-remove.sh`][git-hook-remove.sh]

The hook installer and uninstaller scripts are designed to coexist with other pre-commit hooks you might have added to the repository, without disrupting them.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Sublime PML]: https://github.com/tajmone/Sublime-PML "Visit the Sublime PML repository"

[Git hook]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks "Learn more about Git hooks"

<!-- tools and services -->

[EClint]: https://www.npmjs.com/package/eclint "EClint page at NPM"
[EditorConfig]: https://editorconfig.org "Learn more about EditorConfig on its official website"
[Node.js]: https://nodejs.org "Visit Node.js website"

[editor or IDE that natively supports EditorConfig]: https://editorconfig.org/#pre-installed "Check if your editor/IDE supports EditorConfig"
[EditorConfig plug-in/package]: https://editorconfig.org/#download "List of EditorConfig plug-ins for various editors and IDEs"

<!-- project files -->

[.editorconfig]: ./.editorconfig "View EditorConfig settings"
[git-hook-install.sh]: ./git-hook-install.sh "View Git hook installer script"
[git-hook-remove.sh]: ./git-hook-remove.sh "View Git hook uninstaller script"
[validate.sh]: ./validate.sh "View source script for code style validation"

<!-- repo links -->

[Issues]: https://github.com/tajmone/Sublime-PML/issues "View the current repository Issues or submit a new Issue"
[Discussions]: https://github.com/tajmone/Sublime-PML/discussions "Visit the Discussions area of Sublime PML"
[dev]: https://github.com/tajmone/Sublime-PML/tree/dev "View the 'dev' branch"

<!-- EOF -->
