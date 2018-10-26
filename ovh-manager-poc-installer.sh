FOLDER="ovh-manager-poc"

rm -rf $FOLDER && mkdir $FOLDER && cd $FOLDER

# Clone projects

git clone https://github.com/jleveugle/ovh-manager.git
git clone https://github.com/jleveugle/ovh-utils-angular.git
git clone https://github.com/jleveugle/ovh-angular-http.git
git clone https://github.com/jleveugle/ovh-angular-sso-auth.git
git clone https://github.com/jleveugle/ovh-angular-sidebar-menu.git
git clone https://github.com/jleveugle/ovh-angular-actions-menu.git
git clone https://github.com/jleveugle/ovh-angular-responsive-popover.git

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

# Install OVH Manager

cd ovh-manager
yarn install

yarn link @ovh-ux/ovh-utils-angular
yarn link ovh-angular-http
yarn link ovh-angular-sso-auth
yarn link ovh-angular-sidebar-menu
yarn link ovh-angular-actions-menu

cd ..

echo "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"

echo "INSTALLATION FINISHED ᕙ༼*◕_◕*༽ᕤ\n"

echo "To start the one-manager, please use the following command:"
echo "cd $FOLDER/ovh-manager && yarn start\n"

echo "See you! (｡♥‿♥｡)"

echo "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
