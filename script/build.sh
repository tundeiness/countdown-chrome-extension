build_react() {
    echo 'building react'

    # react generate file name with hash
    # to make sure no deprecated files in dist
    rm -rf dist/*

    # chrome extension doesn't allow inline script
    export INLINE_RUNTIME_CHUNK=false
    # prevent generating sourcemap
    export GENERATE_SOURCEMAP=false

    # react-scripts build generate by default PRODUCTION build
    react-scripts build

    # copy from build to dist, build could still be used by 'npm run start'
    mkdir -p dist
    cp -r build/* dist

    mv dist/index.html dist/popup.html
}

