# Configuration

This file has been copied from [MINIMAL-TEMPLATE](https://github.com/TaitoUnited/MINIMAL-TEMPLATE/). Keep modifications minimal and improve the [original](https://github.com/TaitoUnited/MINIMAL-TEMPLATE/blob/dev/CONFIGURATION.md) instead.

## Prerequisites

* [npm](https://github.com/npm/cli) that usually ships with [Node.js](https://nodejs.org/)
* Optional: [Taito CLI](https://taitounited.github.io/taito-cli/)

## Basic setup

1. Run `taito open conventions` in the project directory to see organization specific settings that you should configure for your git repository. At least you should set `dev` as the default branch to avoid people using master branch for development by accident.
2. Modify `taito-project-config.sh` if you need to change some settings. The default settings are ok for most projects, but you might want to add some links.
3. Run `taito project apply` (or without taito: define links in `README.md` manually).
4. Implement the most important TODOs in `package.json`. At least implement the `install-dev` and `start` scripts as they are mandatory for starting the application.
5. Start the local development environment with `taito kaboom` (or without taito: `npm install`, `npm run install-dev`, `npm run start`, `npm run init`).
6. Commit and push changes.

* [ ] All done

## Your first remote environment (dev)

Make sure your authentication is in effect:

    taito auth:dev

Create the environment:

    taito env apply:dev           # Without taito: create CI/CD build trigger manually

Push some changes to dev branch with a [Conventional Commits](http://conventionalcommits.org/) commit message (e.g. `chore: configuration`):

    taito stage                   # Without taito: git add .
    taito commit                  # Without taito: git commit -m 'chore: configuration'
    taito push                    # Without taito: git push

See it build and deploy:

    taito open builds:dev         # Without taito: open CI/CD build logs on your web browser

* [ ] All done

## Remote environments

You can create the other environments just like you did the dev environment. Project environments are configured in `taito-project-config.sh` with the `taito_environments` setting. Examples for environment names: `f-orders`, `dev`, `test`, `stag`, `canary`, `prod`.

Operations on production and staging environments usually require admin rights. Please contact DevOps personnel if necessary.
