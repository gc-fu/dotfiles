function acp() {
  git add .
  git commit -m "$1"
  git push
}

function intel_proxy() {
  export http_proxy="http://child-prc.intel.com:913/"
  export https_proxy="http://child-prc.intel.com:913/"
}
