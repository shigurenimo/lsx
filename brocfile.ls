jade = \lab/jade
    |> require \broccoli-jade

stylus = \lab/stylus
    |> require \broccoli-stylus
    |> require \broccoli-autoprefixer

live = ( require \broccoli-webpack-cached ) do
    \lab/live
    entry:
        main: "index.ls"
    output:
        filename:      "index.js"
        chunkFilename: "[id]-chunk.js"
    module:
        loaders: [
            * test:   /\.ls$/
              loader: \livescript
        ]
    resolve:
        extensions: [
            ""
            \.js
            \.ls
        ]

module.exports = new ( require \broccoli-merge-trees ) [ jade, stylus, live ]
