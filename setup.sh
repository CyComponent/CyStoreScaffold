
echo "Please enter the library name of the store in PascalCase (The name this store will be imported under): "
read NAME
echo "Please enter the CyFramework registration name of the store in snake_case (The name of the store as it appears on the state tree): "
read REGISTRATION
echo "Please enter a one line description of this store: "
read DESCRIPTION
echo "Please enter the author's name: "
read AUTHOR

sed -i -e "s/CyStore/$NAME/g" package.json webpack.config.js src/CyStore.js

sed -i -e "s/sample_name/$REGISTRATION/g" src/CyStore.js

mv src/CyStore.js src/${NAME}.js

mv ../CyStoreScaffold ../$NAME

sed -i -e "s/DESCRIPTION/$DESCRIPTION/g" package.json

sed -i -e "s/AUTHOR/$AUTHOR/g" package.json

echo "Removing git source control for this repo..."
echo ""
echo "Please run | npm install | to install dependancies. You can can then build your store"
echo "with | npm run build | (You will need to install npm globally for both of these."
echo "The build target is build/${NAME}.js"

rm -rf .git

rm -- "$0"
