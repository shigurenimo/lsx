module.exports = {
  entry: {
    main: './sample/index.ls'
  },
  output: {
    filename: './sample/index.js'
  },
  module: {
    rules: [{
      test: new RegExp('.ls$'),
      loader: 'livescript-loader'
    }]
  },
  resolve: {
    extensions: ['*', '.js', '.ls']
  }
}
