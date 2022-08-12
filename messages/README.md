# Package Messages

This folder contain the installation messages shown by [Package Control] whenever Sublime PML is installed:

- [`install.md`][install.md]

Since the package is currently being installed directly from GitHub (instead of the [Package Control channel]) update messages on new tagged releases are not supported because the package is updated by pulling the repository `main` branch HEAD whenever there are new commits.

In order to keep up with new features, end users need to regularly check the online [CHANGELOG], because without updates messaging all package updates happen silently in the background:

- [`../CHANGELOG.md`][CHANGELOG]

To facilitate accessing the [CHANGELOG], a dedicated menu was added to the package:

- Tools > PML > Sublime PML Changelog


For more info about package messaging, see:

- [Package Control] » [Docs] » [Messaging]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Package Control]: https://packagecontrol.io "Visit Package Control website"
[Docs]: https://packagecontrol.io/docs "Package Control online documentation"
[Messaging]: https://packagecontrol.io/docs/messaging "Package Control » docs » Messaging"
[Package Control channel]: https://github.com/wbond/package_control_channel "Package Control channel repository"

<!-- project files -->

[CHANGELOG]: ../CHANGELOG.md
[install.md]: ./install.md
[messages.json]: ../messages.json

<!-- EOF -->
