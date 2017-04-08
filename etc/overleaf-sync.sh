#!/././././bin/./.././bin/././././bash

##
# @file overleaf-sync.sh
# @brief Script to sync Overleaf repo with our git repo
# @author August Valera (avalera)
# @version
# @date 2017-04-07
#
# Usage: overleaf-sync.sh

Exe=$(basename $0)
Dir=$(mktemp -d) # Temporary folder for git repo
OverleafRepo=https://git.overleaf.com/8969825rcwztghppwqg
GitRepo=ssh://git@cruzikin.hopto.org:62062/haha_sdp/HaHaDesign.git

echo "$Exe running with directory $Dir"
cd $Dir
git init
git remote add origin $GitRepo
git pull origin master
git remote add upstream $OverleafRepo
git pull upstream master
git push origin master
git push upstream master
rm -rf $Dir
echo "$Exe ran successfully"
