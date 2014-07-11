require "termeme/meme/meme"

module TerMeme
  module MEME
    class YUNo

      DATA = {
        :name => "Y U No",
        :shortName => "yuno",
        :inputs => ["top"]
      }

      def setText(text)
        @text = text
      end

      def generate
        puts "Generating #{DATA[:name]} meme!"

        meme = MEME.new

        meme.setTopText("Y U NO")
        meme.setBottomText(@text)

        meme.setTopPosition Position.new(8, 80)
        meme.setBottomPosition Position.new(8, 320)

        meme.create

      end

      def self.factory(input)
        yuno = YUNo.new
        yuno.setText(input)
        return yuno
      end

    end
  end
end
