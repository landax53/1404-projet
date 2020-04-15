require_relative '../lib/02_crypto'

describe "the converter letter to ASCII Code function" do
  it "should return ASCII number that's correspond to a letter" do
  expect(code_original_letter_to_ascii("s")).to eq(115)
  expect(code_original_letter_to_ascii("A")).to eq(65)
  end
end

describe "the string converter by a key-number function " do
  it "should return string converted by a key-number" do
    expect(caesar_cipher("What a string",5)).to eq("Bmfy f xywnsl")
    expect(caesar_cipher("Salut tu vas bien",5)).to eq("Xfqzy yz bfx gnjs")
    expect(caesar_cipher("What a string",3)).to eq("Zkdw d vwulqj")
    expect(caesar_cipher("Salut tu vas bien",3)).to eq("Vdoxw wx ydv elhq")
  end
end