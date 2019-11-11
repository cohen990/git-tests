if ! git merge-base --is-ancestor master HEAD;
then
    printf 'Your branch must be ahead of master to deploy';
    exit 1;
fi
    printf 'all looks good here'
