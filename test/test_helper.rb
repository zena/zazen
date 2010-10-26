require 'pathname'
$LOAD_PATH.unshift((Pathname(__FILE__).dirname +  '..' + 'lib').expand_path)
require 'stringio'
require 'test/unit'
require 'rubygems'
require 'zazen'
require 'shoulda'
require 'yamltest'