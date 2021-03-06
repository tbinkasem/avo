#!/bin/bash -ex

dl() {
    url=$1
    filename=$(basename $1)
    {
        echo "// Downloaded from ${url}"
        echo
        curl -L ${url}
    } > ${filename}
}

baseurl='https://github.com/dgryski/go-stadtx/raw/3c3d9b328c24a9b5ecd370654cd6e9d60a85752d'
dl ${baseurl}/stadtx.go
dl ${baseurl}/stadtx_test.go

dl 'https://raw.githubusercontent.com/demerphq/BeagleHash/5f8620b953230e5b16171b745155fc3b0ef8f75e/LICENSE'
