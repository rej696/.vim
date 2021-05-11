# .vim

Run the following commands to setup and use my vim configuration (assuming you haven't already got a `.vimrc` fie or `.vim` directory)

```
cd ~
git clone https://github.com/rej696/.vim
cd .vim
git submodule init
git submodule update
cd ~
touch ~/.vimrc
echo "source ~/.vim/.vimrc" >> ~/.vimrc;
```

