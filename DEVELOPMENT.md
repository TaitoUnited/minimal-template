# Development

Table of contents:

* [Prerequisites](#prerequisites)
* [Quick start](#quick-start)
* [Code structure](#code-structure)
* [Version control](#version-control)
* [Configuration](#configuration)

## Prerequisites

* [npm](https://github.com/npm/cli) that usually ships with [Node.js](https://nodejs.org/)
* TODO: Define additional prerequisites here
* Optional: [Taito CLI](https://taitounited.github.io/taito-cli/)

## Quick start (without Taito CLI)

* `npm install`: Install all libraries
* `npm run install-dev`: Install additional libraries required for linting/autocompletion on code editor
* `npm run start`: Start the application
* `npm run stop`: Stop the application
* `npm run init`: Initialize resources (e.g. database)
* Open application running on http://localhost:8080
* `npm run info`: Show information required for logging in
* `npm run unit`: Run unit tests
* `npm run test`: Run e2e and integration tests
* `npm run check-code`: Check code quality
* `npm run check-size`: Check build bundle size
* `npm run clean`: Clean everything

Run `npm run` to show more available npm commands.

## Quick start (Taito CLI)

> TIP: Start application in a cleaned and initialized local environment with a single command: `taito kaboom`. This is essentially the same thing as running `taito env apply --clean`, `taito start --clean`, and `taito init`. If the application fails to start, run `taito trouble` to see troubleshooting.

Create local environment by installing some libraries and generating secrets (add `--clean` to recreate clean environment):

    taito env apply

Start containers (add `--clean` to make a clean rebuild and to discard all data, add `--init` to run `taito init` automatically after start):

    taito start

Make sure that everything has been initialized (e.g database) (add `--clean` to make a clean reinit):

    taito init

Open client GUI in browser:

    taito open client

Show user accounts and other information that you can use to log in:

    taito info

Run tests:

    taito unit                              # run all unit tests
    taito unit:server                       # run unit tests of server
    taito unit:server formatters            # run the 'formatters' unit test of server

    taito test                              # run all integration and end-to-end tests
    taito test:server - posts               # run the 'posts' test of server default test suite
    taito test:server jest cars             # run the 'cars' test of server jest test suite
    taito test:client                       # run all integration and end-to-end tests of client
    taito test:client - posts               # run the 'posts' test of client default test suite
    taito test:client cypress 'car*'        # run all 'car*' tests of client cypress test suite

List all project related links and open one of them in browser:

    taito open -h
    taito open NAME

Check code quality:

    taito check code

Check build size:

    taito check size

Cleaning:

    taito clean                             # Clean everything

Run `taito -h` to get detailed instructions for all commands. Run `taito COMMAND -h` to show command help (e.g `taito env -h`). For troubleshooting run `taito trouble`. See [README.md](README.md) for project specific conventions and documentation.

## Code structure

Project specific conventions are defined in [README.md](README.md#conventions). See [software design](https://taitounited.github.io/taito-cli/tutorial/b-software-design) appendix of the [Taito CLI tutorial](https://taitounited.github.io/taito-cli/tutorial) for some tips on how to design a modular directory structure.

## Version control

Development is done in `dev` and `feature/*` branches. Hotfixes are done in `hotfix/*` branches. You should not commit changes to any other branch.

All commit messages must be structured according to the [Angular git commit convention](https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#-commit-message-guidelines) (see also [Conventional Commits](http://conventionalcommits.org/)). This is because application version number and release notes are generated automatically for production release by the [semantic-release](https://github.com/semantic-release/semantic-release) library.

> You can also use `wip` type for such feature branch commits that will be squashed during rebase.

You can manage environment and feature branches using Taito CLI commands. Run `taito env -h`, `taito feat -h`, and `taito hotfix -h` for instructions. If you use git commands or git GUI tools instead, remember to follow the version control conventions defined by `taito conventions`. See [version control](https://taitounited.github.io/taito-cli/tutorial/03-version-control) chapter of the [Taito CLI tutorial](https://taitounited.github.io/taito-cli/tutorial) for some additional information.

## Configuration

See [CONFIGURATION.md](CONFIGURATION.md).
