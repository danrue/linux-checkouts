(cd mainline && git fetch --all --tags)
for i in $(find . -maxdepth 1 -type d); do
    (cd $i && git pull)
done
