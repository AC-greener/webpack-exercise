const path = require('path')
const htmlWwebpackPlugin = require('html-webpack-plugin')
const clean = require('clean-webpack-plugin')
const webpack = require('webpack')
module.exports = {
  mode: 'production',
  entry: './src/index.js',
  devtool: 'source-map',
  //热模块更新
  devServer: {
    contentBase: './bundle',
    open: true,
    hot: true,
    hotOnly: true
  },
  module: {
    rules: [
      { test: /\.js$/, 
        exclude: /node_modules/, 
        loader: "babel-loader",
        options: {
          presets: [["@babel/preset-env", {
            //用到什么  polyfill就增加什么
            useBuiltIns: 'usage'
          }]]
        }
      },
      {
        test: /\.(jpg|png)$/,
        use: {
          loader: 'file-loader',
          options: {
            name: '[name].[ext]',
            outputPath: 'images/',
            // limit: 2048, //对图片大小的限制
          }
        },
      },
      {
        test: /\.scss$/,
        //style-loader将css放在style标签里面
        //css-loader合并css代码
        //loader从右到左依次执行
        use:['style-loader', 
        {
          loader: 'css-loader',
          options: {
            importLoaders: 2, //必须执行下面两个模块
            modules: true
          }
        }, 
        'sass-loader', 'postcss-loader']
      },
  ]
  },
  plugins:[
    new htmlWwebpackPlugin({
      template: './index.html'
    }),
    new webpack.HotModuleReplacementPlugin()
  ],
  output: {
    // publicPath: 'htpp://cnd.com',
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'bundle')
  }
}