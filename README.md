# CS20 Unit 4 MakeCode Arcade Skillmap - first test build

This repository package converts the supplied TEALS Unit 4 sequence into a MakeCode Arcade skillmap-style student experience.

## What is included

Core path:
1. Functions: define, call, reuse, and refactor
2. Parameters and arguments
3. Return values
4. Sequential search in an array
5. Unit 4 build challenge

Optional extension:
- Binary search

The sequence is based on the private Unit 4 materials supplied by the teacher, but the student tutorial text is rewritten and condensed for the MakeCode in-editor tutorial format rather than copied verbatim.

## Before publishing

The skillmap contains placeholder GitHub paths:

- `REPLACE_OWNER`
- `REPLACE_REPO`

After creating the destination GitHub repository, run:

```bash
./configure_repo.sh YOUR_GITHUB_USERNAME YOUR_REPOSITORY_NAME
```

or manually replace both placeholders in `skillmap.md`.

## Open the skillmap

After the files are committed to GitHub, open:

```text
https://arcade.makecode.com/--skillmap#github:YOUR_GITHUB_USERNAME/YOUR_REPOSITORY_NAME/skillmap
```

MakeCode's skillmap loader supports GitHub-hosted skillmaps with this URL format.

## Testing notes

1. Test the skillmap yourself before distributing it.
2. Test each tutorial in Blocks mode and make sure every suggested block appears correctly.
3. Use an Incognito / InPrivate window while iterating because MakeCode caches tutorial content.
4. When GitHub changes do not appear, create a release through MakeCode's GitHub integration to refresh MakeCode's cached version.
5. Students should sign in to MakeCode if you want their skillmap/project progress saved to their cloud account.

## Copyright / access note

This test package is derived from curriculum files that were provided to ChatGPT by an authorized teacher user. Before placing this derivative package in a public GitHub repository, verify that your permission or the curriculum repository's license allows public redistribution. If it does not, keep the material in an access-controlled workflow and do not publish it publicly.

## First-pass limitations

This is intentionally a first test build. It has not yet been run through the live MakeCode Tutorial Tool or a classroom pilot. The Markdown structure follows Microsoft's current tutorial and skillmap documentation, but the next step is to load it in MakeCode and correct any block-rendering or pacing problems that appear.
