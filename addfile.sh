=======Add file into a repository======

GITHUB_USER="*****"
REPO="Github"
FILE_PATH="testfile.txt"  # File name
BRANCH="main"             # Change if needed
GITHUB_TOKEN="********"

# File content in Base64 encoding
CONTENT=$(echo "This is a test file" | base64)

# API request to create the file
curl -X PUT -H "Authorization: Bearer $GITHUB_TOKEN" \
     -H "Accept: application/vnd.github.v3+json" \
     -d "{\"message\": \"Create $FILE_PATH\", \"content\": \"$CONTENT\", \"branch\": \"$BRANCH\"}" \
     "https://api.github.com/repos/$GITHUB_USER/$REPO/contents/$FILE_PATH"

