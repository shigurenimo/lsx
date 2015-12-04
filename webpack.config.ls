export
    entry:
        main: \./lab/index.ls
    output:
        filename: \./lab/index.js
    module:
        loaders: [
            test: /\.ls$/
            loader: \livescript
        ]
    resolve:
        extensions: [ "", \.js , \.ls ]
