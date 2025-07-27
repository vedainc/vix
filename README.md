# vix

`vix` -- a thin wrapper for interacting with the Nix CLI ecosystem.

## Usage

``` shell
vix [global-options] [<command>] [command-options] [arguments ...]
```

## Options

`vix` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit
  -v, --verbose  verbosity [default: 0]

```

## Sub Commands

`vix` provides the following sub commands:

``` shell
  install, i            add a package into a profile
  uninstall, u          remove packages from a profile
  upgrade, up           upgrade packages using their most recent flake
  list, l               list the installed packages
  rollback, a           roll back to a previous version of a profile
  history, h            show all versions of a profile
  wipe-history, wh      delete non-current versions of a profile
  flake, f              flake commands
  develop, d            run a dev shell
  make                  run `make' inside a dev shell
  command, exec         execute a command inside a dev shell
  rebuild, rb           rebuild the system configuration from a flake
  search                search for packages
  find, /               search for packages in the `nixpkgs' flake
  run                   run a Nix application
  repl                  start an interactive environment for evaluating Nix expressions
  registry, r           manipulate the Nix registry
  store, o              manipulate the Nix store
  eval, e               evaluate a Nix expression
  shell, sh             run a shell in which the specified packages are available
  build                 build a derivation or fetch a store path
  bundle                bundle an application so that it works outside of the Nix store
  copy                  start an interactive environment for evaluating Nix expressions
  edit                  open the Nix expression of a Nix package in $EDITOR
  daemon                daemon to perform store operations on behalf of non-root clients
  config, conf          manage the Nix settings
  hash                  compute and convert cryptographic hashes
  key                   generate and convert Nix signing keys
  nar                   create or inspect nar files
  fmt, format           reformat your code in the standard style
  path-info             query information about store paths
  derivation, drv       work with derivations
  why-depends, wd       show why a package has another package in its closure
  print-dev-env, pde    print shell code of derivation
  realisation           manipulate a Nix realisation
  upgrade-nix, un       upgrade Nix to the latest stable version
  collect-garbage, g    run the garbage collector
  zsh-completions, zsh  generate the Zsh completion script
  print-doc, doc, pd    print the documentation

```

# vix install

`vix install` -- add a package into a profile

## Usage

``` shell
vix install <package>...
```

## Options

`vix install` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Install a package from Nixpkgs:

``` shell
vix i n#hello
```

Install a package from a specific Nixpkgs revision:

``` shell
vix i nixpkgs/d734#hello
```

# vix uninstall

`vix uninstall` -- remove packages from a profile

## Usage

``` shell
vix uninstall <package>...
```

## Options

`vix uninstall` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Uninstall a package by name:

``` shell
vix u hello
```

Remove all packages:

``` shell
vix u -- --all
```

# vix upgrade

`vix upgrade` -- upgrade packages using their most recent flake

## Usage

``` shell
vix upgrade <package>...
```

## Options

`vix upgrade` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Upgrade a specific package by name:

``` shell
vix up hello
```

# vix list

`vix list` -- list the installed packages

## Usage

``` shell
vix list 
```

## Options

`vix list` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

List packages installed in the default profile:

``` shell
vix l
```

# vix rollback

`vix rollback` -- roll back to a previous version of a profile

## Usage

``` shell
vix rollback 
```

## Options

`vix rollback` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Roll back your default profile to the previous version:

``` shell
vix b
```

Roll back your default profile to version 500:

``` shell
vix b -- --to 500
```

# vix history

`vix history` -- show all versions of a profile

## Usage

``` shell
vix history 
```

## Options

`vix history` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show the changes between each version of your default profile:

``` shell
vix h
```

# vix wipe-history

`vix wipe-history` -- delete non-current versions of a profile

## Usage

``` shell
vix wipe-history 
```

## Options

`vix wipe-history` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Delete all versions of the default profile older than 30 days:

``` shell
vix wh -- --profile /tmp/profile --older-than 30d
```

# vix flake

`vix flake` -- flake commands

## Usage

``` shell
vix flake <command>
```

## Options

`vix flake` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Sub Commands

`vix flake` provides the following sub commands:

``` shell
  init, i      create a flake in the current directory
  metadata, m  show flake metadata
  show, s      show the outputs provided by a flake
  update, u    update flake lock file
  new, n       create a flake in the specified directory from a template
  clone, c     clone flake repository
  check, k     check whether the flake evaluates and run its tests
  archive, a   copy a flake and all its inputs to a store
  prefetch, p  download the flake source tree into the Nix store

```

# vix flake init

`vix flake init` -- create a flake in the current directory

## Usage

``` shell
vix flake init 
```

## Options

`vix flake init` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Create a flake using the default template:

``` shell
vix f i
```

# vix flake metadata

`vix flake metadata` -- show flake metadata

## Usage

``` shell
vix flake metadata 
```

## Options

`vix flake metadata` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show flake metadata:

``` shell
vix f m
```

# vix flake show

`vix flake show` -- show the outputs provided by a flake

## Usage

``` shell
vix flake show 
```

## Options

`vix flake show` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show the output attributes provided by the CWD flake:

``` shell
vix f s
```

List available templates:

``` shell
vix f s templates
```

# vix flake update

`vix flake update` -- update flake lock file

## Usage

``` shell
vix flake update 
```

## Options

`vix flake update` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Update all inputs:

``` shell
vix f u
```

# vix flake new

`vix flake new` -- create a flake in the specified directory from a template

## Usage

``` shell
vix flake new <directory>
```

## Options

`vix flake new` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Create a flake in the directory `hello':

``` shell
vix f n hello
```

Create a flake in the directory `hello' using the template `haskell-hello':

``` shell
vix f n hello -t templates#haskell-hello
```

# vix flake clone

`vix flake clone` -- clone flake repository

## Usage

``` shell
vix flake clone <flake>
```

## Options

`vix flake clone` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Check out the source code of the dwarffs flake:

``` shell
vix f c dwarffs -- --dest dwarffs
```

# vix flake check

`vix flake check` -- check whether the flake evaluates and run its tests

## Usage

``` shell
vix flake check 
```

## Options

`vix flake check` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Evaluate the flake in the current directory, and build its checks:

``` shell
vix f k
```

# vix flake archive

`vix flake archive` -- copy a flake and all its inputs to a store

## Usage

``` shell
vix flake archive 
```

## Options

`vix flake archive` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Fetch the dwarffs flake to the local Nix store:

``` shell
vix f a dwarffs
```

# vix flake prefetch

`vix flake prefetch` -- download the flake source tree into the Nix store

## Usage

``` shell
vix flake prefetch 
```

## Options

`vix flake prefetch` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Download the dwarffs flake:

``` shell
vix f p dwarffs
```

# vix develop

`vix develop` -- run a dev shell

## Usage

``` shell
vix develop [<argument>...|<option>...]
```

## Options

`vix develop` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Run a dev shell:

``` shell
vix d
```

Run a dev shell and run `htop' inside:

``` shell
vix d -- -c htop
```

# vix make

`vix make` -- run `make' inside a dev shell

## Usage

``` shell
vix make [<argument>...|<option>...]
```

## Options

`vix make` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Run `make' inside a dev shell:

``` shell
vix make
```

# vix command

`vix command` -- execute a command inside a dev shell

## Usage

``` shell
vix command command...
```

## Options

`vix command` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Run `ncdu' inside a dev shell:

``` shell
vix exec ncdu
```

# vix rebuild

`vix rebuild` -- rebuild the system configuration from a flake

## Usage

``` shell
vix rebuild [-f <flake>] [-s] [-u]
```

## Options

`vix rebuild` accepts the following options:

``` shell
      --help           display usage information and exit
      --version        display version and exit
  -f, --flake <VALUE>  specify flake to use [default: /Users/ebzzry/etc/nix/]
  -s, --switch         switch to profile after rebuild [default: TRUE]
  -u, --upgrade        upgrade to latest version [default: FALSE]

```

## Examples

Rebuild the system from the flake specified in `~/src/system/':

``` shell
vix rb -f ~/src/system -s
```

Rebuild the system from the default flake and switch to it:

``` shell
vix rb -s
```

# vix search

`vix search` -- search for packages

## Usage

``` shell
vix search [-n|<flake>] <package>...
```

## Options

`vix search` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Search in `nixpkgs' flake for packages named `firefox':

``` shell
vix search nixpkgs firefox
```

# vix find

`vix find` -- search for packages in the `nixpkgs' flake

## Usage

``` shell
vix find <package>...
```

## Options

`vix find` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Search in `nixpkgs' flake for packages named `firefox':

``` shell
vix / firefox
```

# vix run

`vix run` -- run a Nix application

## Usage

``` shell
vix run [<argument>...|<option>...]
```

## Options

`vix run` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Run `vim' from the `nixpkgs' flake:

``` shell
vix run n#vim
```

# vix repl

`vix repl` -- start an interactive environment for evaluating Nix expressions

## Usage

``` shell
vix repl [<argument>...|<option>...]
```

## Options

`vix repl` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Evaluate some simple Nix expressions:

``` shell
vix repl
```

# vix registry

`vix registry` -- manipulate the Nix registry

## Usage

``` shell
vix registry <command>
```

## Options

`vix registry` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Sub Commands

`vix registry` provides the following sub commands:

``` shell
  list, l    list available Nix flakes
  add        create a flake in the current directory
  remove, r  remove flake from user flake registry
  pin, p     pin a flake to its current version

```

# vix registry list

`vix registry list` -- list available Nix flakes

## Usage

``` shell
vix registry list 
```

## Options

`vix registry list` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show the contents of all registries:

``` shell
vix r l
```

# vix registry add

`vix registry add` -- create a flake in the current directory

## Usage

``` shell
vix registry add <flake> <location>
```

## Options

`vix registry add` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Set the `nixpkgs' flake identifier to a specific branch of Nixpkgs:

``` shell
vix r a nixpkgs github:NixOS/nixpkgs/nixos-20.03
```

# vix registry remove

`vix registry remove` -- remove flake from user flake registry

## Usage

``` shell
vix registry remove <flake>
```

## Options

`vix registry remove` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Remove the `nixpkgs' flake from the registry:

``` shell
vix r r nixpkgs
```

# vix registry pin

`vix registry pin` -- pin a flake to its current version

## Usage

``` shell
vix registry pin <flake>
```

## Options

`vix registry pin` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Pin the `nixpkgs' flake to its most recent revision:

``` shell
vix r p nixpkgs
```

# vix store

`vix store` -- manipulate the Nix store

## Usage

``` shell
vix store <command>
```

## Options

`vix store` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Sub Commands

`vix store` provides the following sub commands:

``` shell
  add, a                       add a file or directory to the Nix store
  cat, c                       print the contents of a file in the Nix store on stdout
  copy-log, cl                 copy build logs between Nix stores
  copy-sigs, cs                copy store path signatures from substituters
  delete, d                    delete paths from the Nix store
  diff-closures, dc            show what packages and versions were added and removed
  dump-path, dp                serialise a store path to stdout in NAR format
  gc                           perform garbage collection on a Nix store
  info, i                      test whether a store can be accessed
  ls, l                        show information about a path in the Nix store
  make-content-addressed, mka  rewrite a path or closure to content-addressed form
  optimise, o                  replace identical files in the store by hard links
  path-from-hash-part          get a store path from its hash part
  prefetch-file, f             download a file into the Nix store
  repair, r                    repair store paths
  sign                         sign store paths with a local key
  verify                       verify the integrity of store paths

```

# vix store add

`vix store add` -- add a file or directory to the Nix store

## Usage

``` shell
vix store add <location>
```

## Options

`vix store add` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Add a directory to the store:

``` shell
vix o a ./dir
```

# vix store cat

`vix store cat` -- print the contents of a file in the Nix store on stdout

## Usage

``` shell
vix store cat <location>
```

## Options

`vix store cat` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show the contents of a file in a binary cache:

``` shell
vix o c --store https://cache.nixos.org/ /nix/store/0i2jd68mp5g6h2sa5k9c85rb80sn8hi9-hello-2.10/bin/hello
```

# vix store copy-log

`vix store copy-log` -- copy build logs between Nix stores

## Usage

``` shell
vix store copy-log <location>
```

## Options

`vix store copy-log` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Copy build logs between Nix stores:

``` shell
vix o cl --from https://cache.nixos.org --eval-store auto n#hello
```

# vix store copy-sigs

`vix store copy-sigs` -- copy store path signatures from substituters

## Usage

``` shell
vix store copy-sigs 
```

## Options

`vix store copy-sigs` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Copy sigs:

``` shell
vix o cs
```

# vix store delete

`vix store delete` -- delete paths from the Nix store

## Usage

``` shell
vix store delete <path>...
```

## Options

`vix store delete` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Delete a specific store path:

``` shell
vix o d /nix/store/yb5q57zxv6hgqql42d5r8b5k5mcq6kay-hello-2.10
```

# vix store diff-closures

`vix store diff-closures` -- show what packages and versions were added and removed

## Usage

``` shell
vix store diff-closures <path>...
```

## Options

`vix store diff-closures` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show what got added and removed between two versions of the NixOS system
profile:

``` shell
vix o dc /nix/var/nix/profiles/system-655-link /nix/var/nix/profiles/system-658-link
```

# vix store dump-path

`vix store dump-path` -- serialise a store path to stdout in NAR format

## Usage

``` shell
vix store dump-path <path>
```

## Options

`vix store dump-path` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

To get a NAR from the binary cache https://cache.nixos.org/:

``` shell
vix o dp -- --store https://cache.nixos.org/ /nix/store/7crrmih8c52r8fbnqb933dxrsp44md93-glibc-2.25 > glibc.nar
```

# vix store gc

`vix store gc` -- perform garbage collection on a Nix store

## Usage

``` shell
vix store gc 
```

## Options

`vix store gc` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Delete unreachable paths in the Nix store:

``` shell
vix o gc
```

# vix store info

`vix store info` -- test whether a store can be accessed

## Usage

``` shell
vix store info <path>
```

## Options

`vix store info` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Test whether connecting to a remote Nix store via SSH works:

``` shell
vix o i -- --store ssh://mac1
```

# vix store ls

`vix store ls` -- show information about a path in the Nix store

## Usage

``` shell
vix store ls <path>
```

## Options

`vix store ls` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

To list the contents of a store path in a binary cache:

``` shell
vix o l -- --store https://cache.nixos.org/ --long --recursive /nix/store/0i2jd68mp5g6h2sa5k9c85rb80sn8hi9-hello-2.10
```

# vix store make-content-addressed

`vix store make-content-addressed` -- rewrite a path or closure to content-addressed form

## Usage

``` shell
vix store make-content-addressed <path>
```

## Options

`vix store make-content-addressed` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Create a content-addressed representation of the closure of `hello':

``` shell
vix o mka n#hello
```

# vix store optimise

`vix store optimise` -- replace identical files in the store by hard links

## Usage

``` shell
vix store optimise 
```

## Options

`vix store optimise` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Optimise the Nix store:

``` shell
vix o o
```

# vix store path-from-hash-part

`vix store path-from-hash-part` -- get a store path from its hash part

## Usage

``` shell
vix store path-from-hash-part <path>
```

## Options

`vix store path-from-hash-part` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Return the full store path with the given hash part:

``` shell
vix o h --store https://cache.nixos.org/ 0i2jd68mp5g6h2sa5k9c85rb80sn8hi9
```

# vix store prefetch-file

`vix store prefetch-file` -- download a file into the Nix store

## Usage

``` shell
vix store prefetch-file <loca>tion
```

## Options

`vix store prefetch-file` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Download a file to the Nix store:

``` shell
vix o f https://releases.nixos.org/nix/nix-2.3.10/nix-2.3.10.tar.xz
```

# vix store repair

`vix store repair` -- repair store paths

## Usage

``` shell
vix store repair <path>
```

## Options

`vix store repair` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Repair a store path, after determining that it is corrupt:

``` shell
vix o r /nix/store/yb5q57zxv6hgqql42d5r8b5k5mcq6kay-hello-2.10
```

# vix store sign

`vix store sign` -- sign store paths with a local key

## Usage

``` shell
vix store sign 
```

## Options

`vix store sign` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Sign store:

``` shell
vix o sign
```

# vix store verify

`vix store verify` -- verify the integrity of store paths

## Usage

``` shell
vix store verify 
```

## Options

`vix store verify` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Verify the entire Nix store:

``` shell
vix o verify -- --all
```

# vix eval

`vix eval` -- evaluate a Nix expression

## Usage

``` shell
vix eval [<argument>...|<option>...]
```

## Options

`vix eval` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Evaluate a Nix expression given on the command line:

``` shell
vix e -- --expr '1 + 2'
```

Print the store path of the `hello' package:

``` shell
vix e -- --raw n#hello
```

# vix shell

`vix shell` -- run a shell in which the specified packages are available

## Usage

``` shell
vix shell [<argument>...|<option>...]
```

## Options

`vix shell` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Start a shell providing `yt-dlp' from the `nixpkgs' flake:

``` shell
vix sh n#yt-dlp
```

# vix build

`vix build` -- build a derivation or fetch a store path

## Usage

``` shell
vix build [<argument>...|<option>...]
```

## Options

`vix build` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Build the default package from the flake in the current directory:

``` shell
vix build
```

Build `hello' and `cowsay' from `nixpkgs' flake, leaving two result symlinks:

``` shell
vix build n#hello n#cowsay
```

# vix bundle

`vix bundle` -- bundle an application so that it works outside of the Nix store

## Usage

``` shell
vix bundle [<argument>...|<option>...]
```

## Options

`vix bundle` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Bundle `hello':

``` shell
vix bundle n#vim
```

# vix copy

`vix copy` -- start an interactive environment for evaluating Nix expressions

## Usage

``` shell
vix copy [<argument>...|<option>...]
```

## Options

`vix copy` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Copy all store paths from a local binary cache:

``` shell
vix copy -- --all --from file:///tmp/cache
```

# vix edit

`vix edit` -- open the Nix expression of a Nix package in $EDITOR

## Usage

``` shell
vix edit [<argument>...|<option>...]
```

## Options

`vix edit` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Open the Nix expression of the `hello' package:

``` shell
vix edit n#hello
```

# vix daemon

`vix daemon` -- daemon to perform store operations on behalf of non-root clients

## Usage

``` shell
vix daemon [<argument>...|<option>...]
```

## Options

`vix daemon` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Run the daemon:

``` shell
vix daemon
```

Run the daemon and force all connections to be trusted:

``` shell
vix daemon -- --force-trusted
```

# vix config

`vix config` -- manage the Nix settings

## Usage

``` shell
vix config <command>
```

## Options

`vix config` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Sub Commands

`vix config` provides the following sub commands:

``` shell
  show   show the Nix configuration or the value of a specific setting
  check  check your system for potential problems

```

# vix config show

`vix config show` -- show the Nix configuration or the value of a specific setting

## Usage

``` shell
vix config show 
```

## Options

`vix config show` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show configuration:

``` shell
vix conf show
```

# vix config check

`vix config check` -- check your system for potential problems

## Usage

``` shell
vix config check 
```

## Options

`vix config check` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Check for problems:

``` shell
vix conf k
```

# vix hash

`vix hash` -- compute and convert cryptographic hashes

## Usage

``` shell
vix hash <command>
```

## Options

`vix hash` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Sub Commands

`vix hash` provides the following sub commands:

``` shell
  file, f     print hash of a regular file
  path, p     print hash of the NAR serialisation of a path
  convert, c  convert between hash formats

```

# vix hash file

`vix hash file` -- print hash of a regular file

## Usage

``` shell
vix hash file <file>
```

## Options

`vix hash file` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Print hash of `file.txt':

``` shell
vix hash f file.txt
```

# vix hash path

`vix hash path` -- print hash of the NAR serialisation of a path

## Usage

``` shell
vix hash path <path>
```

## Options

`vix hash path` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Print hash of path `/foo/bar/':

``` shell
vix hash p /foo/bar/
```

# vix hash convert

`vix hash convert` -- convert between hash formats

## Usage

``` shell
vix hash convert <path>
```

## Options

`vix hash convert` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Convert a hash:

``` shell
vix hash c -- --hash-algo sha1 800d59cfcd3c05e900cb4e214be48f6b886a08df
```

# vix key

`vix key` -- generate and convert Nix signing keys

## Usage

``` shell
vix key <command>
```

## Options

`vix key` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Sub Commands

`vix key` provides the following sub commands:

``` shell
  convert, con   generate a public key for verifying store paths
  generate, gen  generate a secret key for signing store paths

```

# vix key convert

`vix key convert` -- generate a public key for verifying store paths

## Usage

``` shell
vix key convert <key>
```

## Options

`vix key convert` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Convert a secret key to a public key:

``` shell
vix key con foo
```

# vix key generate

`vix key generate` -- generate a secret key for signing store paths

## Usage

``` shell
vix key generate 
```

## Options

`vix key generate` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Generate a new secret key:

``` shell
vix key gen -- --key-name cache.example.org-1 > ./secret-key
```

# vix nar

`vix nar` -- create or inspect nar files

## Usage

``` shell
vix nar <command>
```

## Options

`vix nar` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Sub Commands

`vix nar` provides the following sub commands:

``` shell
  cat, c        print the contents of a file inside a NAR file on stdout
  dump-path, d  serialise a path to stdout in NAR format
  ls, l         show information about a path inside a NAR file

```

# vix nar cat

`vix nar cat` -- print the contents of a file inside a NAR file on stdout

## Usage

``` shell
vix nar cat <file>
```

## Options

`vix nar cat` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

To display a file in a NAR file:

``` shell
vix nar c ./hello.nar /share/man/man1/hello.1.gz | gunzip
```

# vix nar dump-path

`vix nar dump-path` -- serialise a path to stdout in NAR format

## Usage

``` shell
vix nar dump-path <path>
```

## Options

`vix nar dump-path` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

To serialise directory `foo' as a NAR file:

``` shell
vix nar d ./foo > foo.nar
```

# vix nar ls

`vix nar ls` -- show information about a path inside a NAR file

## Usage

``` shell
vix nar ls <path>
```

## Options

`vix nar ls` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

To list a specific file in a NAR file:

``` shell
vix nar l -- --long ./hello.nar /bin/hello
```

# vix fmt

`vix fmt` -- reformat your code in the standard style

## Usage

``` shell
vix fmt [<argument>...|<option>...]
```

## Options

`vix fmt` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Format the current flake:

``` shell
vix fmt
```

# vix path-info

`vix path-info` -- query information about store paths

## Usage

``` shell
vix path-info [<argument>...|<option>...]
```

## Options

`vix path-info` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Print the store path produced by n#hello:

``` shell
vix pi n#hello
```

# vix derivation

`vix derivation` -- work with derivations

## Usage

``` shell
vix derivation <command>
```

## Options

`vix derivation` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Sub Commands

`vix derivation` provides the following sub commands:

``` shell
  add   add a store derivation
  show  show the contents of a store derivation

```

# vix derivation add

`vix derivation add` -- add a store derivation

## Usage

``` shell
vix derivation add <path>
```

## Options

`vix derivation add` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Add a derivation:

``` shell
vix drv dadd path
```

# vix derivation show

`vix derivation show` -- show the contents of a store derivation

## Usage

``` shell
vix derivation show <derivation>
```

## Options

`vix derivation show` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show the `hello' derivation:

``` shell
vix drv dshow n#hello
```

# vix why-depends

`vix why-depends` -- show why a package has another package in its closure

## Usage

``` shell
vix why-depends [<argument>...|<option>...]
```

## Options

`vix why-depends` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show one path through the dependency graph leading from `hello' to `glibc':

``` shell
vix wd n#hello n#glibc
```

# vix print-dev-env

`vix print-dev-env` -- print shell code of derivation

## Usage

``` shell
vix print-dev-env [<argument>...|<option>...]
```

## Options

`vix print-dev-env` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Get the build environment of `hello':

``` shell
vix print-dev-env n#hello
```

# vix realisation

`vix realisation` -- manipulate a Nix realisation

## Usage

``` shell
vix realisation [<argument>...|<option>...]
```

## Options

`vix realisation` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Show some information about the realisation of the package `hello':

``` shell
vix realisation n#hello
```

# vix upgrade-nix

`vix upgrade-nix` -- upgrade Nix to the latest stable version

## Usage

``` shell
vix upgrade-nix 
```

## Options

`vix upgrade-nix` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Upgrade Nix to the stable version declared in `nixpkgs' flake:

``` shell
vix upgrade-nix
```

# vix collect-garbage

`vix collect-garbage` -- run the garbage collector

## Usage

``` shell
vix collect-garbage [<argument>...|<option>...]
```

## Options

`vix collect-garbage` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Garbage collect:

``` shell
vix g
```

Gargage collect and delete old versions:

``` shell
vix g -- -d
```

# vix zsh-completions

`vix zsh-completions` -- generate the Zsh completion script

## Usage

``` shell
vix zsh-completions 
```

## Options

`vix zsh-completions` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Generate the Zsh completions of Vix and enable them:

``` shell
vix zsh-completions > ~/.zsh-completions/_vix
cat >>! ~/.zshenv << EOF
fpath=(~/.zsh-completions $fpath)
autoload -U compinit
compinit
EOF
```

# vix print-doc

`vix print-doc` -- print the documentation

## Usage

``` shell
vix print-doc 
```

## Options

`vix print-doc` accepts the following options:

``` shell
      --help     display usage information and exit
      --version  display version and exit

```

## Examples

Generate the Markdown documentation of Vix and save it to README.md:

``` shell
vix print-doc > README.md
```

