# Use to remove files added to gitignore but that were already included in the remote 
git rm -r --cached .
git add .
git commit -m ".gitignore fix"