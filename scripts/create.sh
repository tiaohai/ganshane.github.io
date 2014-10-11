mkdir target
cd target
wget https://github.com/ganshane/shakey/releases/download/shakey-project-1.6/shakey-server-1.6-bin.tar.gz
tar xfvz shakey-server-1.6-bin.tar.gz

cd shakey-server*
export BUILD_ID=`date +%Y%m%d`
JAVA_OPTIONS="-Xmx1g" bin/shakey-server shakey.server.internal.Stockanalyzer ../../_posts/${BUILD_ID}-strong-stock.markdown

cd ../..
git add _posts
git commit -a -m 'add ${BUILD_ID} strong stock'
git push origin
