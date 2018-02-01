API_URL = $1
# install dependencies
apt-get --yes --force-yes install npm
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs
npm install

# set api url
sed -i "s/SOMETHING_TO_BE_REPLACED_IN_BUILD/$API_URL/g" index.html
# run
nodejs index.js &&
