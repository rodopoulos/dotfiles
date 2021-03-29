# Defined in - @ line 1
function ls --wraps=exa --description 'alias ls=exa'
  exa  $argv;
end

function l --wraps=exa --description 'alias l=exa'
  exa $argv;
end
