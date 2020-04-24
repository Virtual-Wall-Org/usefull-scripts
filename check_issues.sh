curl -s https://api.github.com/repos/Virtual-Wall-Org/virtual-wall/issues|jq '.[] | select(.state=="open") | .title'
