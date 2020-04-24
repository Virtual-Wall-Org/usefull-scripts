curl -s -H "Accept: application/vnd.github.inertia-preview+json" https://api.github.com/orgs/Virtual-Wall-Org/repos | jq -r .[].name
