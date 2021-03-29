function ports --wraps=lsof --description 'alias ports=lsof -nP -iTCP'
  lsof -nPi | grep LISTEN
end
