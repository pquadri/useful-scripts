# Use to remove files added to gitignore but that were already included in the remote 
git rm -r --cached .
git add .
git commit -m ".gitignore fix"


# unzip and copy content to subfolder with archive name
for i in `ls`; 
    do unzip $i
    mkdir ${i%.*}
    mv *.bmp ${i%.*}/; 
done

# connect from ssh through tunnel, needs netcat configuration in .ssh/config for worker01 and bastion
sshfs worker01:/data ~/Desktop/test -ovolname=NAME