# frozen_string_literal: true

@default_headline_line_color = '#000000'
@foreground = 'black'
@background = 'white'
@shadow_color = '#fff9'

# Google developed Noto to cover all scripts encoded in Unicode with a
# harmonious look and feel. Noto Sans is designed for high legibility across
# various sizes and languages, making it very accessible and suitable for
# presentations.
#
# Clear, open sans-serif letterforms, good character differentiation, extensive
# language support.
@font_family = find_font_family('Liberation Sans')
@font_family = find_font_family('Carlito')
@font_family = find_font_family('Noto Sans')

@large_font_size = font_size(5)
@normal_font_size = font_size(3)
@small_font_size = font_size(1.5)
@image_caption_font_size = font_size(1)

@block_quote_frame_color = 'white'
@block_quote_frame_width = 3
@block_quote_fill_color = 'white'
@block_quote_title_color = '#666'

@default_emphasis_color = '#333'

include_theme('default')

# match(Slide, HeadLine) do |heads|
#   heads.each { _1.prop_set('foreground', color_cycle.next) }
# end

@headline_logo_image = 'logo.png' # W: Prefer single-quoted strings when you don'
include_theme('headline-logo') # W: Prefer single-quoted strings when you don't ne

# include_theme('rabbit-title-logo')
# include_theme('ranguba')

match(Slide, Body) do |bodies|
  bodies.vertical_centering = true
end

# Use block quotes to have centered large text.
match('**', BlockQuote, TextContainerElement) do |texts|
  texts.prop_set('size', font_size(8.5))
  texts.prop_set('style', 'normal')
  texts.each do |text|
    text.justify = false
    text.align = :center
  end
end


include_theme('syntax-highlighting')

# @lightning_talk_proc_name = 'lightning-clear-code'
# @lightning_talk_as_large_as_possible = true
# include_theme('lightning-talk-toolkit')
#
# match(Slide) do |slides|
#   slides.each do |slide|
#     slide.lightning_talk if slide.lightning_talk?
#   end
# end
