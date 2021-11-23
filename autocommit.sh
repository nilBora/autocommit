pathRepository=$1
echo $pathRepository
cd $pathRepository
regex='nothing to commit, working tree clean'
echo "Start Script"
status=`git status`

if [[ $status =~ $regex ]]; then
    echo "Nothing Changes"
    exit
fi

userSshAgent=$2
if [[ -n "${userSshAgent:-}" ]]; then
    echo $2 
    ssh-agent bash -c $2
fi

NOW=$(date +"%m-%d-%Y %T")
echo "Date $NOW"
git add --all
git commit -m "autoCommit $NOW"
git push
exit
