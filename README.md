# git_automation_script
a basic git command automation shell script.


#try to automate the basic git mmands by using shell script.

#function created 

git_install() -check git install or not. if git is already install. it run command "git --verson" and print git version.

git_ini() - it will check local repository has .git folder if not it will run command "git init".

git_commit() - it will check and update pending commits.

git_remote_dir() - it will check remote directory exist or not. if exists it will prcess otherwise it ask to provide path of remote dir.

git_push() - it will push the code to github.

main() - call all the function in main.


