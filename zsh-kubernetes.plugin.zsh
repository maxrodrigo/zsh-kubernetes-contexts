# List contexts or set current context to the selected context.
kc(){
  if [ -z ${1+x} ]; then
    kubectl config get-contexts --no-headers | cut -d$' ' -f1,6,7
  else
    kubectl config use-context "$1"
  fi
}

fpath+="${0:h}/src"
