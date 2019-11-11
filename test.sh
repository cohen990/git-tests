if git merge-base --is-ancestor master HEAD;
then
    printf 'Your branch is a child of master. Deploying new changes'
    exit 0
elif git merge-base --is-ancestor HEAD master;
then
    printf 'Your branch is an ancestor of master. Deploying rollback'
    exit 0
fi
printf 'Your branch must be ahead of master to deploy, or behind master to rollback';
exit 1
