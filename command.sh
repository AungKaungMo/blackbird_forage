#!/bin/bash

# Step 1: Create a new Vite React app
npm create vite@latest

# Step 2: Install project dependencies
npm i

# Step 3: Initialize a Git repository
git init

# Step 4: Add all files to Git
git add .

# Step 5: Add remote GitHub repository (https://github.com/AungKaungMo/blackbird_forage.git)
git remote add origin https://github.com/AungKaungMo/blackbird_forage.git

# Step 6: Push changes to the master branch
git push -u origin master

# Step 7: Create and switch to a new branch 'update_logo'
git branch -m update_logo

# Step 8: Commit changes
git commit -m "Change link and image"

# Step 9: Push 'update_logo' branch to GitHub
git push origin update_logo

# Step 10: Create a pull request from update_logo to master using GitHub CLI:
gh pr create --base master --head update_logo --title "Update Logo" --body "This PR updates the logo."

# Step 11: Check the list of pull requests:
gh pr list

# Step 12: Merge the pull request:
gh pr merge 1 --merge

# REPO_URL <https://github.com/AungKaungMo/blackbird_forage.git>