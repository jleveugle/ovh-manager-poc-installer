FOLDER="ovh-manager-poc"

rm -rf $FOLDER && mkdir $FOLDER && cd $FOLDER

# Clone projects

git clone git@github.com:jleveugle/ovh-manager.git
git clone git@github.com:jleveugle/ovh-utils-angular.git
git clone git@github.com:jleveugle/ovh-angular-http.git
git clone git@github.com:jleveugle/ovh-angular-sso-auth.git
git clone git@github.com:jleveugle/ovh-angular-sidebar-menu.git

# Install @ovh-ux/ovh-utils-angular

cd ovh-utils-angular
yarn install
yarn link
cd ..

# Install ovh-angular-http

cd ovh-angular-http
yarn install
yarn link
cd ..

# Install ovh-angular-sso-auth

cd ovh-angular-sso-auth
yarn install
yarn link
cd ..

# Install ovh-angular-sidebar-menu

cd ovh-angular-sidebar-menu
git checkout refacto
yarn install
yarn link
cd ..

# Install OVH Manager

cd ovh-manager
yarn install

yarn link @ovh-ux/ovh-utils-angular
yarn link ovh-angular-http
yarn link ovh-angular-sso-auth
yarn link ovh-angular-sidebar-menu

cd ..

echo "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"

echo "INSTALLATION FINISHED ᕙ༼*◕_◕*༽ᕤ\n"

echo "To start the one-manager, please use the following command:"
echo "cd $FOLDER/ovh-manager && yarn start\n"

echo "See you! (｡♥‿♥｡)"

echo "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"