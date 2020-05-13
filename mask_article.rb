def mask_article(text, words)
  # mask_article("Hello World! This is crap!", ["crap"])
  # "Hello World! This is <strike>crap</strike>!"
  words.each do |word|
    # newt = text
    text = text.gsub(word, strike(word)) if text.include?(word)
  end
  text
end

def strike(text)
  # strike("Meow!") # => "<strike>Meow!</strike>"
  "<strike>#{text}</strike>"
end


p mask_article("Hello World! This is crap!", ["crap", "Hello"])
