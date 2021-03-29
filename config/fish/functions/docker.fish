function docker-killall --wraps=docker --description 'kill all containers'
  set ids (docker ps -q)
  if test -n "$ids" 
    docker kill $ids
  else
    echo "all dead."
  end
end

function docker-delall --wraps=docker --description 'delete all containers'
  set ids (docker ps -a -q)
  if test -n "$ids"
    docker rm $ids
  else
    echo "all gone."
  end
end

