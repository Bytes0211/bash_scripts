#!/bin/bash

# testing capturing pipenv path

#pipenv shell
sleep 3
if [2 -eq 2]
then
    #echo "PIPENV PATH: ${PEPATH}"
    #pipenv --rm
    echo "PIPENV REMOVED"
else 
    echo "PIPENV ENVIRONMENT WAS NOT CREATED"
fi


