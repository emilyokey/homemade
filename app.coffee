axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  # This mofo is gonna move every damn thing in this folder to /public 
  # If you don't files to be compiled, you have to add them to this array
  ignores: ['README.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'roots-assets/js/*.coffee'),
    css_pipeline(files: 'roots-assets/css/*.styl')
  ]

  stylus:
    # These are stylus pulgins
    # Axis is a stylus library full of cool mixins http://axis.netlify.com/
    # Rupture makes writing media queries a little nicer https://github.com/jenius/rupture
    # Autoprefixer solves the problem of having to write vendor prefixes:
    #  e.g. 
    #   -webkit-border-radius: 50%
    #   -moz-border-radius: 50%
    #   -ms-border-radius: 50%
    #   border-radius: 50%
    use: [axis(), rupture(), autoprefixer()]
    # sourcemaps help inspecting css rules by mapping your compliled to .css to it's src .styl
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    # so pretty
    pretty: true