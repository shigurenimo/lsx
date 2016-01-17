export
    entry :
        main : './test/index.ls'
    output :
        filename : './test/index.js'
    module :
        loaders : [
            test : /\.ls$/
            loader : 'livescript'
        ]
    resolve:
        extensions: [ '', '.js' , '.ls' ]
