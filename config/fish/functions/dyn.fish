function dyn --wraps=aws --description 'alias dyn=aws dynamodb'
  aws dynamodb $argv;
end
