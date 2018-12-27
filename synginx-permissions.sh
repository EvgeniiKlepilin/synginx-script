#!/bin/bash

# Read symfony project root_dir
echo Please provide absolute path to your Symfony Project Root Directory:
read varname

declare HTTPDUSER=$(ps axo user,comm | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1)

declare -a arr=("sudo setfacl -dR -m u:"$HTTPDUSER":rwX -m u:$(whoami):rwX $varname/var"
    		"sudo setfacl -R -m u:"$HTTPDUSER":rwX -m u:$(whoami):rwX $varname/var"
		)

## now loop through the above array
for i in "${arr[@]}"
do
	echo $i
   	eval "$i"
   # execute strings one by one
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also

