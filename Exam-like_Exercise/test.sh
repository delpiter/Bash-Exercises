for name in ` find /usr/include/ -type f -name "*.h" ` ; do
 grep -H '*' ${name} >> test.txt
done

