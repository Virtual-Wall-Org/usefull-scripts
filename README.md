# Usefull script for project management for this org in github

Scripts need :
- jq
- curl
- git

	`sudo apt install jq curl git`

## Work with gpg (https://www.gnupg.org/gph/en/manual/x110.html)
### Encode token
- Create a Github token (https://github.com/settings/tokens)
- echo "mytoken"|gpg -c --out "github_token.gpg";history -d $(history 1)
### Decode token
- gpg -o - github_token.gpg

## TODO
Make some test to ensure API endpoint are ok, and script works.

## Note
Tested under Linux Ubuntu and Windows WSL2 Ubuntu


