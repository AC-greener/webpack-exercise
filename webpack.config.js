const path = require('path')
module.exports = {
  mode: 'production',
  entry: './src/index.js',
  module: {
    rules: [{
      test: /\.(jpg|png)$/,
      use: {
        loader: 'file-loader',
        options: {
          name: '[name].[ext]',
          outputPath: 'images/',
          limit: 2048, //对图片大小的限制
          
        }
      },
    }]
  },
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'bundle')
  }
}