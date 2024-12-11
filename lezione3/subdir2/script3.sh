for file in *; do echo file is ${file};ls -ld ${file}; if(($? != 0));then echo "ls error";fi;done
