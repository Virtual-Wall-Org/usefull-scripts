#/bin/bash
set -eu
# Be carefull, API is experimental, can break at anytime (https://developer.github.com/v3/repos/#create-an-organization-repository)
name=$1
desc=$2
gpg_file=${3:-github_token.gpg}
curl -s -H "Accept: application/vnd.github.inertia-preview+json" -H "Authorization: token $(gpg -o - $gpg_file)" -XPOST --data "{\"name\": \"$name\", \"description\": \"$desc\",\"private\": false}" https://api.github.com/orgs/Virtual-Wall-Org/repos | jq -j .clone_url > .tmp_giturl
git init
git add README.md
git commit -m "first commit"
git remote add origin $(cat .tmp_giturl)
git push -u origin master
rm .tmp_giturl
