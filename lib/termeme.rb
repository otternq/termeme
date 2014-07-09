
begin
  require 'rubygems'
rescue LoadError
end

$:.unshift File.join(File.dirname(__FILE__), *%w[.. lib])

require 'termeme/meme/yuno'
require 'termeme/command'

module TerMeme
  VERSION = '0.0.1'
end
