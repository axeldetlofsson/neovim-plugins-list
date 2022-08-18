#!/usr/bin/fish
gh search repos --topic 'neovim-plugin' --limit 10 --json 'createdAt,defaultBranch,description,forksCount,fullName,hasDownloads,hasIssues,hasPages,hasProjects,hasWiki,homepage,id,isArchived,isDisabled,isFork,isPrivate,language,license,name,openIssuesCount,owner,pushedAt,size,stargazersCount,updatedAt,url,visibility,watchersCount' > list.json
git add .
set -l current_date=`date +%Y-%m-%d`
git commit -m "update list.json at $current_date"
git push

