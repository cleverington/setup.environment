
# Destroy current symlinks.
for file in ~/{.gitconfig,.profile,.bash_profile,.bashrc,.eslintrc,.gitignore_global,composer.json}; do
  test -h $file && rm $file || echo "$file is not symlink";
done
unset file

# Create symbolic links in your home directory
ln -s ~/repos/setup.environment/SAVE_ME_DONT_DELETE/.gitconfig ~/.gitconfig
ln -s ~/repos/setup.environment/symlinks/.bash_profile ~/.bash_profile
ln -s ~/repos/setup.environment/symlinks/.bashrc ~/.bashrc
ln -s ~/repos/setup.environment/symlinks/.eslintrc ~/.eslintrc
ln -s ~/repos/setup.environment/symlinks/.gitignore_global ~/.gitignore_global
ln -s ~/repos/setup.environment/symlinks/.profile ~/.profile
ln -s ~/repos/setup.environment/symlinks/composer.json ~/composer.json
