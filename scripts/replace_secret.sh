#!/bin/sh

echo Secret replacement script initiated.
read -p "Enter your password:" PASSWORD

CWD=$(pwd)

if [[ -z "$CWD" ]]; then echo "cwd not found!"; exit 1; fi

echo Current working directory is $CWD.

if [[ "$CWD" == *postman/scripts ]]
then
    echo Moving up to root folder.
    cd ..
else
    echo Already at root folder.
fi

cp -fr ./environments ./dist

declare -A api_keys

IFS='='

function read_secrets_from_file() {
    raw_secret="secrets.crt"

    # if [ -e "$raw_secret" ]; then echo "File does not exist"; exit 1; fi

    while read line; do
        echo $line
        read -a keyValuePair <<< "$line"
        api_key_name="${keyValuePair[0]##*( \n\t)}"
        api_key_value="${keyValuePair[1]##*( \n\t)}"
        api_key_name="${api_key_name%%*( \n\t)}"
        api_key_value="${api_key_value%%*( \n\t)}"
        api_keys["$api_key_name"]=$api_key_value
    done < $raw_secret
}

read_secrets_from_file

unset IFS

function replace_variables_with_value() {
    sed -i "s@<<$1>>@$2@g" dist/*.postman_environment.json
}

for KEY in "${!api_keys[@]}"; do
    echo "Key: $KEY"
    echo "Value: ${api_keys[$KEY]}"

    replace_variables_with_value $KEY ${api_keys[$KEY]}
done

echo Done!