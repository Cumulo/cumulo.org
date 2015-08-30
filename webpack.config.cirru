
var
  fs $ require :fs
  webpack $ require :webpack
  ExtractTextPlugin $ require :extract-text-webpack-plugin

= module.exports $ object
  :entry $ object
    :vendor $ array
      , :webpack-dev-server/client?http://repo:8080
      , :webpack/hot/dev-server
    :main $ array :./src/main

  :output $ object
    :path :build/
    :filename :[name].js
    :publicPath :http://repo:8080/build/

  :resolve $ object
    :extensions $ array :.js :.cirru :

  :module $ object
    :loaders $ array
      {} (:test /\.cirru$) (:loader :react-hot!cirru-script) (:ignore /node_modules)
      {} (:test /\.md$) (:loader :raw)
      {} (:test /\.css$) $ :loader
        ExtractTextPlugin.extract :style-loader :css!autoprefixer
      {} (:test "/\.woff2((\\?|\\#)[\\?\\#\\w\\d_-]+)?$") (:loader :url) $ :query $ {}
        :minetype :application/font-woff2
        :name :[name].[ext]

  :plugins $ array
    new webpack.optimize.CommonsChunkPlugin :vendor :vendor.js
    new ExtractTextPlugin :style.css
