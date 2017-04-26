HUGO=`which hugo`
if [ -f "$HUGO" ];
then
  hugo && \
  git add . && \
  git commit -m "built hugo static resources" && \
  git push && git subtree push --prefix public origin master
else
  echo 'Hugo is missing, install by running `brew install hugo`'
fi
