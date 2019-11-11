if git merge-base --is-ancestor master HEAD;
then
    printf 'Your branch is a child of master. Deploying new changes'
    break   
elif git merge-base --is-ancestor HEAD master;
then
    printf 'Your branch is an ancestor of master. Deploying rollback'
    break
else
    printf 'Your branch must be ahead of master to deploy, or behind master to rollback';
    exit 1
fi

printf '\nscript completed successfully';
