gpg_file=${1:-github_token.gpg}
curl -s -H "Authorization: token $(gpg -o - $gpg_file)" https://api.github.com/user
