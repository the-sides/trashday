# trashday

Sweep your macOS Desktop into `~/Documents/Archive/Desktop` with one command.
Files and folders are moved, including hidden items; `.DS_Store` and `.localized`
are left alone. Existing archive names get a timestamp suffix.

## Install

```sh
git clone https://github.com/the-sides/trashday.git
cd trashday
./install.sh
```

The installer links `trashday` into `~/.local/bin`. Keep the checkout in place
and include that directory in your `PATH`. In jOS, run this folder's installer
directly. Requires macOS's built-in Bash; no third-party packages.

## Use

```sh
trashday -n # preview without moving anything
trashday    # archive Desktop contents
```

Nothing runs on a schedule. To undo a move, move the items back from the archive.
To uninstall the command, remove the `trashday` symlink from `~/.local/bin`.
