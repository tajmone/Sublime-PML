# Package Update Notifications

This folder contain the installation and update messages shown by [Package Control] whenever Sublime PML is installed or updated.
Notifications are formatted in Markdown.

All notifications are controlled by the [`../messages.json`][messages.json] file in the repository/package root, by associating the tagged-release version of each update with a specific message file in this folder.

For more info, see:

- [Package Control] » [Docs] » [Messaging]

> **NOTE** — Sublime PML release tags consist in the bare [Semantic Version] number of the package (i.e. without prefixes like `v`, etc.).
> References to package version numbers inside the [`../messages.json`][messages.json] file must be _identical_ to the actual tag of the release.
> E.g. to associate the message file `messages/0.7.1.md` to release `0.7.1`, the JSON key _must be_ `"0.7.1"` (and not `"v0.7.1"`):
>
> ```json
> {
>   "install": "messages/install.md",
>   "0.7.1": "messages/0.7.1.md"
> }
> ```
>
> For consistency sake, the same criteria will be adopted in the naming convention of update message files, which will be named using the bare version number tag followed by the `.md` extension (i.e. `<tag>.md`).


## Message Files List

- [`install.md`][install.md] — Notification shown at package installation.
- [`0.7.1.md`][0.7.1.md] — Update message for version 0.7.1.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Package Control]: https://packagecontrol.io "Visit Package Control website"
[Docs]: https://packagecontrol.io/docs "Package Control online documentation"
[Messaging]: https://packagecontrol.io/docs/messaging "Package Control » docs » Messaging"

[Semantic Version]: https://semver.org/ "Semantic Versioning 2.0.0 specification"

<!-- project files -->

[messages.json]: ../messages.json


[RELEASES.md]: ./RELEASES.md

[install.md]: ./install.md
[0.7.1.md]: ./0.7.1.md

<!-- EOF -->
