#!/bin/sh

JSDOC=/Users/adamfowler/Documents/marklogic/git/jsdoc/jsdoc

P=../mljs-pages/apidocs
D=./dist/docs
MD=./documentation
rm -rf $D
rm -rf $P
mkdir $P
mkdir $D
mkdir $D/core
mkdir $D/widgets

echo "Generating core documentation..."
$JSDOC -u ./tutorials -c jsdoc-conf.json -d $D/core mljs.js ./lib/basic-wrapper.js ./lib/digest-wrapper.js ./lib/noop.js ./lib/passthrough-wrapper.js core.md
echo "...done."
echo "Generating widget documentation..."
$JSDOC -u ./tutorials -c jsdoc-conf.json -d $D/widgets ./mldbwebtest/src/public/js/mldbtest/mljs-*.js ./mldbwebtest/src/public/js/mldbtest/widget*.js browser.md
echo "...done."

cp -R $D/core $P/
cp -R $D/widgets $P/
mkdir $P/core/images
mkdir $P/widgets/images
cp $MD/*/*.png $P/core/images/
cp $MD/*/*.png $P/widgets/images/

#tar czf jsdoc-core.tar.gz $D/core
#tar czf jsdoc-widgets.tar.gz $D/widgets
#tar czf jsdoc-all.tar.gz $D

echo "Pushing docs to GitHub Pages"
cd ../mljs-pages
git add apidocs
git commit -a -m "link fix"
git push origin gh-pages
cd ../mljs

echo "Done All."
exit 0

