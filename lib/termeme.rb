
begin
  require 'rubygems'
rescue LoadError
end

$:.unshift File.join(File.dirname(__FILE__), *%w[.. lib])

require 'termeme/yuno'

module TerMeme
  VERSION = '0.0.1'
end
