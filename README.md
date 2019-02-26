# [Simon's](https://github.com/sswist) dotfiles

These are the base dotfiles that I start with when I set up a
new environment. For more specific local needs I use the `.local`
files described in the [`Local Settings`](#local-settings) section.


## Setup

To setup the dotfiles just run the following snippet in the
terminal:

(:warning: **DO NOT** run the setup snippet if you don't fully
understand [what it does](setup.sh). Seriously, **DON'T**!)

| OS | Snippet |
|:---:|:---|
| macOS | `bash -c "$(curl -LsS https://raw.github.com/sswist/dotfiles/master/setup.sh)"` |

That's it! :sparkles:

The setup process will:

* Download the dotfiles on your computer (by default it will suggest
  `~/projects/dotfiles`)
* Create some additional [directories](os/create_directories.sh)
* [Symlink](os/create_symbolic_links.sh) the
  [git](git), and
  [shell](shell) files.

* Install applications / command-line tools for
  [macOS](os/os_x/installs/main.sh) /
* Set custom
  [macOS](os/os_x/preferences/main.sh) /
  preferences

<table>
    <tbody>
        <tr><td colspan="2">Setup process in action</tr></td>
        <tr>
            <td>
                <img src="https://cloud.githubusercontent.com/assets/1223565/11821505/91e437be-a372-11e5-9500-025c316fe22c.gif" alt="Setup process on macOS" width="100%">
            </td>
        </tr>
    </tbody>
</table>


## Screenshots


##### Git

<table>
    <tbody>
        <tr><td colspan="2">Output for Git status</tr></td>
        <tr>
            <td>
                <img src="https://cloud.githubusercontent.com/assets/1223565/10561038/f9f11a28-7525-11e5-8e1d-a304ad3557f9.png" alt="Output for Git status on macOS" width="100%">
            </td>
        </tr>
    </tbody>
</table>

<table>
    <tbody>
        <tr><td colspan="2">Output for Git log</tr></td>
        <tr>
            <td>
                <img src="https://cloud.githubusercontent.com/assets/1223565/10560966/e4ec08a6-7523-11e5-8941-4e12f6550a63.png" alt="Output for Git status on macOS" width="100%">
            </td>
        </tr>
    </tbody>
</table>


## Customize

### Local Settings

The dotfiles can be easily extended to suit additional local
requirements by using the following files:

#### `~/.bash.local`

If the `~/.bash.local` file exists, it will be automatically sourced
after all the other [bash related files](shell), thus, allowing its
content to add to or overwrite the existing aliases, settings, PATH,
etc.

Here is a very simple example of a `~/.bash.local` file:

```bash

#!/bin/bash

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set local aliases

alias starwars="telnet towel.blinkenlights.nl"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set PATH additions

PATH="/usr/local/bin:$PATH"
PATH="$PATH:$HOME/projects/dotfiles/bin"

export PATH

```

#### `~/.gitconfig.local`

If the `~/.gitconfig.local` file exists, it will be automatically
included after the configurations from `~/.gitconfig`, thus, allowing
its content to overwrite or add to the existing `git` configurations.

__Note:__ Use `~/.gitconfig.local` to store sensitive information such
as the `git` user credentials, e.g.:

```bash
[user]
    name = Simon Swist
    email = sswist@example.com
```

### Forks

If you decide to fork this project, don't forget to substitute my
username with your own in the [setup snippets](#setup) and [in the
`setup` script](https://github.com/sswist/dotfiles/blob/3d614ac304ad072fba0001111f22202415ad7ffc/setup.sh#L3).


## Update

To update the dotfiles you can either run the [`setup`
script](setup.sh) or, if you want to just update one particular part,
run the appropriate [`os` script](os).


## Acknowledgements

Inspiration and code was taken from many sources, including:

* [Cătălin Mariș](https://github.com/alrra)
  [dotfiles](https://github.com/alrra/dotfiles)
* [Mathias Bynens'](https://github.com/mathiasbynens)
  [dotfiles](https://github.com/mathiasbynens/dotfiles)
* [Nicolas Gallagher's](https://github.com/necolas)
  [dotfiles](https://github.com/necolas/dotfiles)


## License

The code is available under the [MIT license](LICENSE.txt).
