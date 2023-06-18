#!/bin/bash

#set -x


git_install(){
	echo "checking for git Install in your system..."
	if ! git --version >/dev/null
	then
		echo "git is not install in your system"
		echo "Please install git"
	else
		echo "$(git --version)"
	fi
}



git_init(){
	echo "checking for git init ..."
	sleep 04
	if ! git status>/dev/null          #we can also use if [ -d .git ]
	then
		echo "git is not initialise"
		echo "Wait for initalising git into your dir"
		git init
		sleep 04
		echo "git initialise succecfully"
	fi
}

# git_add(){
# 	git add .

# }


git_commit(){
	echo "checking for git commit..."
	sleep 04	
	if ! git commit -m "update commit" 2>/dev/null
	then
		echo "Author identity unknown"
		read -p "please provide your github email : " email
		read -p "please provide your name : " name
		echo "please wait we authenticating your identity..."
	    git config --global user.email "$email"
       	git config --global user.name "$name"			       
		echo "user identify succesfully"

	fi
}

git_remote_dir(){
	echo "checking for remote repositry..."
	sleep 05
	if ! git remote -v | grep -q "origin"
	then
		echo "Remote repository 'origin' does not exist."
		read -p "Enter the repo path : " repo
		git remote add origin "$repo"
		echo "remote origin added sucessfully"

	fi	
}

git_push(){
	echo "please wait we push your code on gtihub repositry..."
	if git push origin master 2>/dev/null
	then
		echo "your code sucessfully push on github"
	else 
		echo "somme files are not matched"
	fi
}




main(){
echo "Welcome to git Automation script"
git_install
git_init
git add .
git_commit
git branch -M master
git_remote_dir
git_push

}
main


