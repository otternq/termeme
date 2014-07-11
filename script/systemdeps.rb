`mkdir -p ~/.magick`
`curl -fsSL http://www.imagemagick.org/Usage/scripts/imagick_type_gen > imagick_type_gen`
`find /Library/Fonts -name '*.ttf' | perl imagick_type_gen -f - > ~/.magick/type-myfonts.xml`
`rm imagick_type_gen`

`touch ~/.magick/type.xml`

File.open("#{ENV["HOME"]}/.magick/type.xml", 'w') do |f|
  f.write '<typemap>
    <include file="type-myfonts.xml" />
</typemap>'
end
