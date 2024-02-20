# Fetch the contents of the directory using GitHub's REST API
curl -s -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/iam-veeramalla/aws-devops-zero-to-hero/contents/day-14/simple-python-app | \
# Extract the download URLs for all files
jq -r '.[].download_url' | \
# Download each file using curl
xargs -n 1 curl -O -L

