const path = require('path');
module.exports = {
  // 设置入口文件
  entry: './src/index.js',
  // 指定打包后的输出位置和文件名
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  },
  // 配置webpack开发服务器
  devServer: {
    contentBase: './dist',
    open: true
  }
};