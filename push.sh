#!/bin/bash

# Prompt for the version tag
echo "Enter the version tag you want to create (e.g., v1.0.1): "
read VERSION_TAG

# Stage all modified files
git add .

# Commit with a prompt for your message
echo "Enter your commit message: "
read COMMIT_MESSAGE
git commit -m "$COMMIT_MESSAGE"

# Create an annotated Git tag
git tag -a "$VERSION_TAG" -m "Release $VERSION_TAG"

# Push your commit and tags to the remote branch
git push origin "$(git branch --show-current)" --tags

echo "Changes committed and tagged as $VERSION_TAG. Pushed to origin."
