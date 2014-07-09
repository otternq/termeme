module TerMeme
  class Command
    class << self

      def help
        output = %{
          -termeme: help!

          termeme --version                    prints the current termeme version

          termeme help                         this help text
          termeme list                         list all available memes
          termeme generate <meme> meme text    generate a meme with only one line of text required

          termeme usage                        show how to use all the memes

          termeme usage <meme>                 show how to use a meme
          termeme help <meme>
          termeme <meme> usage
          termeme <meme> help

        }

        puts output.gsub(/^ {8}/, '') # strip the first eight spaces of every line
      end

    end
  end
end
