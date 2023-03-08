#!/usr/bin/fish
# get location of this file
set -l script_dir (dirname (status -f))
cd $script_dir
gh search repos --topic 'neovim-plugin' --limit 1000 --json 'createdAt,defaultBranch,description,forksCount,fullName,hasDownloads,hasIssues,hasPages,hasProjects,hasWiki,homepage,id,isArchived,isDisabled,isFork,isPrivate,language,license,name,openIssuesCount,owner,pushedAt,size,stargazersCount,updatedAt,url,visibility,watchersCount' > list.json
prettier --write list.json
git add .
set -l current_date (date +%Y-%m-%d-%H-%M)
git commit -m "update list.json at $current_date"
git push

