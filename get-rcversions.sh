(cd 4.18-rc && git fetch --tags) > /dev/null
#for i in `echo 4.4-rc 4.9-rc 4.14-rc 4.18-rc`; do (cd $i; git reset --hard HEAD~1000; git clean -dfx; git pull --ff-only > /dev/null; make kernelversion; git describe); done
for i in `echo 4.4.y 4.9.y 4.14.y 4.18.y`; do
    (
        cd 4.18-rc
        D=$(git describe stable-rc/linux-$i)
        S=$(git show -s --pretty="%cr" stable-rc/linux-$i)
        echo "${D} ${S}"
    );
done
