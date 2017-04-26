HUGO=`which hugo`
if [ -f "$HUGO" ];
then
  hugo -d docs && git add . && git commit -m "built hugo static resources" && git push
else
  echo 'Hugo is missing, install by running `brew install hugo`'
fi