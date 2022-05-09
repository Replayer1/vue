set -e
npm run build
cd dist
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/Replayer1/vue.git master:gh-pages
cd -

git config --global user.email "you@example.com"
  git config --global user.name "Your Name"