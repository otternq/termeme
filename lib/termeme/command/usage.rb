module TerMeme
  class Command
    class << self

      def usage(meme=nil)

        TerMeme::MEME::ALL.each do |memeData|

          if meme.nil? or memeData[:shortName] == meme
            puts "termeme generate #{MEME.usage(memeData)}"
          end

        end

      end

    end
  end
end
