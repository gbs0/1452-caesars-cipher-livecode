def decrypt(phrase)
  phrase if phrase.empty?
  # 1. Definir uma lista com as letras do alfabeto
  alphabet = ("A".."Z").to_a
  # 2. "Cortar" nossa phrase em um array de letras
  phrase_array = phrase.split("")
  # "QEB NRFZH" => ["QEB", "NRFZH"]
  # "QEB" # => ["Q", "E", "B"]
  # ["A", "B", "C", "D"]

  # 3. Iterar sobre cada letra e verificar sua posição no ALFABETO
  decripted_phrase = phrase_array.map do |letter|
    letter_index = alphabet.index(letter)

    if letter_index.nil?
      letter
    else
      alphabet[(letter_index + 3) % 26]
    end
    # 4. Descobrir qual a posição adjacente a 3 letras a direita.
    # puts letter_index
  end
  # 5. Subsituir a letra original pela letra trocada.
  return decripted_phrase.join
end

encrypted_text = "FK ZOVMQLDOXMEV, X ZXBPXO ZFMEBO, XIPL HKLTK XP ZXBPXO'P ZFMEBO, QEB PEFCQ ZFMEBO, ZXBPXO'P ZLAB LO ZXBPXO PEFCQ, FP LKB LC QEB PFJMIBPQ XKA JLPQ TFABIV HKLTK BKZOVMQFLK QBZEKFNRBP. FQ FP X QVMB LC PRYPQFQRQFLK ZFMEBO FK TEFZE BXZE IBQQBO FK QEB MIXFKQBUQ FP OBMIXZBA YV X IBQQBO PLJB CFUBA KRJYBO LC MLPFQFLKP ALTK QEB XIMEXYBQ. CLO BUXJMIB, TFQE X IBCQ PEFCQ LC 3, A TLRIA YB OBMIXZBA YV X, B TLRIA YBZLJB Y, XKA PL LK. QEB JBQELA FP KXJBA XCQBO GRIFRP ZXBPXO, TEL RPBA FQ FK EFP MOFSXQB ZLOOBPMLKABKZB."

puts decrypt(encrypted_text)
