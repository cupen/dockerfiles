install_python(){
    local ver=$1
    local file="Python-$ver.tar.xz"
    local url="https://www.python.org/ftp/python/$ver/$file"
    echo "ver=$ver file=$file url=$url"
    # return
    wget -O $file $url \
      && tar xf $file \
      && cd Python-$ver \
      && ./configure --prefix=/usr/local \
      && make \
      && make install
}
