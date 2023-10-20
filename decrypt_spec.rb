require_relative "decrypt"

describe "#decrypt" do
  it "Should return an empty if empty string given" do
    actual = decrypt("") # Armazenar o resultado da chamado do metodo `decrypt`
    result = ""
    expect(actual).to eq result
  end

  it "Return the 3-letter backward-shifted text" do
    text = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    actual = decrypt(text)
    result = "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
    expect(actual).to eq result
  end
end
