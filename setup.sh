
echo "Please enter the library name of the store in PascalCase (The name this store will be imported under): "
read NAME
echo "Please enter the CyFramework registration name of the store in snake_case (The name of the store as it appears on the state tree): "
read REGISTRATION
echo "Please enter a one line description of this store: "
read DESCRIPTION
echo "Please enter the author's name: "
read AUTHOR

sed "s/CyStore/$NAME/g" package.json > p.new
mv p.new package.json

sed "s/CyStore/$NAME/g" webpack.config.js > w.new
mv w.new webpack.config.js

sed "s/CyStore/$NAME/g" src/CyStore.js > c.new
mv c.new src/CyStore.js

sed "s/sample_name/$REGISTRATION/g" src/CyStore.js > c.new
mv c.new src/CyStore.js

mv src/CyStore.js src/${NAME}.js

mv ../CyStoreScaffold ../$NAME

sed "s/DESCRIPTION/$DESCRIPTION/g" package.json > p.new
mv p.new package.json

sed "s/AUTHOR/$AUTHOR/g" package.json > p.new
mv p.new package.json

echo "Removing git source control for this repo..."
echo ""
echo "Please run | npm install | to install dependancies. You can can then build your store"
echo "with | npm run build | (You will need to install npm globally for both of these."
echo "The build target is build/${NAME}.js"

rm -rf .git

rm -- "$0"
