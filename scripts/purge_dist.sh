CWD=$(pwd)

if [[ "$CWD" == *postman/scripts ]]
then
    echo Moving up to root folder.
    cd ..
else
    echo Already at root folder.
fi


if [ ! -d dist ]
then
    echo The dist folder does not exist.
    exit 1
fi

rm -r dist

echo Removed dist successfully.
