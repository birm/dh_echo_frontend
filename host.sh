node_url=$1

sed -i "s/SOMETHING_TO_BE_REPLACED_IN_BUILD/$node_url/g" index.html
node index.js
