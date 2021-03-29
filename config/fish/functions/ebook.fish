funcion epub2mobi --wraps=ebook-convert --description 'alias epub2mobi=ebook-convert INPUT.epub OUTPUT.mobi'
  set -l basename (sed 's/\.[^.]*$//')
  ebook-convert $argv
end
