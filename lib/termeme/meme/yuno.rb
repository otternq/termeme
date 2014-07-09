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
        puts @text
      end

      def self.factory(input)
        yuno = YUNo.new
        yuno.setText(input)
        return yuno
      end

    end
  end
end
