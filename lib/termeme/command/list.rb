module TerMeme
  class Command
    class << self

      def list

        TerMeme::MEME::ALL.each do |memeData|
          puts "#{memeData[:name]} - use: #{memeData[:shortName]}"
        end

      end

    end
  end
end
