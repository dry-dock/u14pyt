echo "========================= virtualenv version ============================"
echo "virtualenv --version"
virtualenv --version
printf "\n\n"

declare -a versions=('python2.6' 'python2.7' 'python3.2' 'python3.3' 'python3.4' 'python3.5' 'pypy' 'pypy3')

for version in "${versions[@]}"
  do
    echo "============ Setting up Virtual Environment for $version  ==========="
    echo "mkdir ~/test_$version"
    mkdir ~/test_$version
    echo "cd ~/test_$version"
    cd ~/test_$version
    echo "virtualenv venv"
    virtualenv venv
    echo "virtualenv -p /usr/bin/$version" "venv"
    virtualenv -p /usr/bin/$version venv
    echo "source venv/bin/activate"
    source venv/bin/activate
    printf "\n\n"

    echo "======================== Python version ============================="
    echo "python --version"
    python --version
    printf "\n\n"

    echo "==================== Deactivating virtualenv ========================"
    echo "deactivate"
    deactivate
    echo "cd ~"
    cd ~
    echo "rm -rf test_$version"
    rm -rf test_$version
    echo "rm -rf venv"
    rm -rf venv
    printf "\n\n"
  done
