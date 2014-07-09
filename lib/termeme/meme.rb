require 'termeme/meme/yuno'

#$:.unshift File.join(File.dirname(__FILE__), *%w[.. termeme])

module TerMeme
  module MEME
    ALL = [
        TerMeme::MEME::YUNo::DATA
    ]

    def self.usage(memeData)

      abort "memeData missing :shortName" unless memeData.has_key?(:shortName)
      abort "memeData missing :inputs" unless memeData.has_key?(:inputs)

      u = "#{memeData[:shortName]}"

      i = 0

      memeData[:inputs].each do |x|
        u << "," if i > 0
        u << " <#{x} text>"
        i += 1
      end

      return u

    end

  end
end
