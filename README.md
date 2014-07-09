# My Dot Files

Various configuration files collected over time.

Typically I clone this repo and add symlinks from my home folder to the relevant files.

eg.
```
cd
ln -s dot_files/vimrc .vimrc
```

I will always have local changes. To preserve these, whilst updating from upstream I do:
```
git stash
git pull
git stash pop
```
