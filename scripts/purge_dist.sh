CWD=$(pwd)

if [[ "$CWD" == *postman/scripts ]]
then
    echo Moving up to root folder.
    cd ..
else
    echo Already at root folder.
fi

rm -r dist