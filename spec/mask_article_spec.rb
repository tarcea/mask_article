require_relative '../mask_article.rb'

describe 'mask_article' do
  it "should generate the right string when searching for 1 word" do
    expect(mask_article("Hello World! This is crap!", ["crap"])).to eq "Hello World! This is <strike>crap</strike>!"
  end
  it "should generate the right string when searching for 2 words" do
    expect(mask_article("Hello World! This is crap!", ["crap", "Hello"])).to eq "<strike>Hello</strike> World! This is <strike>crap</strike>!"
  end
end

describe 'strike' do
  it "should generate HTML tag" do
    expect(strike("Meow!")).to eq "<strike>Meow!</strike>"
  end
  it "should generate HTML tag" do
    expect(strike("Foolan Barik")).to eq "<strike>Foolan Barik</strike>"
  end
end
