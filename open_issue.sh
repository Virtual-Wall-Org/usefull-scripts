title=$1
body=$2
gpg_file=${3:-github_token.gpg}
curl -v -H "Authorization: token $(gpg -o - $gpg_file)" -XPOST --data "{\"title\": \"'$title'\", \"body\": \"'$body'\"}" https://api.github.com/repos/Virtual-Wall-Org/virtual-wall/issues 
