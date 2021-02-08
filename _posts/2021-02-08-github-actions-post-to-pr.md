---
title: Tool Highlight - Github Actions Post to PR
tags: [ToolHighlight, GithubActions, GithubActionsPostToPR]
style: fill
color: primary
description: Series that highlights developer tools (Github Actions Post to PR)
---

## Github Actions Post to PR

![Github Actions Post to PR Image](https://user-images.githubusercontent.com/7506174/107294786-1a7e5100-6a3c-11eb-8fd9-2e161d007cf6.png){:align="right" style="max-width: 50%"}


[Github Actions Post to PR](https://github.com/EliLillyCo/github-actions-post-to-pr) is a Github Action I wrote & OpenSourced in my job at Lilly.
The idea for this tool is to make the developer workflow reviwing pull request test / code quality metrics simpler & more readily available in the PR process.
This both reduces developer effort and encourages developers to pay attention to test / code qualtiy metrics.

It accomplishes this by posting current revision metrics alongside main branch metrics into the pull request thread.

It can be used with any language as all it needs is a text file you configure as an input.  The input will be posted to the PR if runnning in a PR & saved as an artifact in GitHub 
Actions for future comparisons if running on a branch.

The text displayed in the PR can be further modified by using a bash command to filter the text from the input file.  I often use ```grep``` to filter out
text I don't want to display or include only specific lines.

[See the project Github repo](https://github.com/EliLillyCo/github-actions-post-to-pr) for a full description of the features / examples


