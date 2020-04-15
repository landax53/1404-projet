
# Convertir la lettre en code ASCII
def code_original_letter_to_ascii(original_letter)
  return (original_letter.to_s).ord   # ascii_number = "s".ord = 115
end

# Code un string avec une clé n
def caesar_cipher(str,n)
  new_str = ""
  i=0
  tab_str = str.split
  while tab_str[i]  # parcours toutes les lettres d'un mot
    letter = tab_str[i].scan /\w/
    j=0
    while letter[j]
      ascii_n = code_original_letter_to_ascii(letter[j])+n
      if code_original_letter_to_ascii(letter[j]) ==  33 #condition si "!" alors ne pas 
        new_str = new_str + letter[j]
      elsif ascii_n > 122
        letter_n = (ascii_n-122+97 ).chr     
        new_str = new_str + letter_n
      elsif ascii_n < 122 && ascii_n > 97
        letter_n = ascii_n.chr
        new_str = new_str + letter_n
      elsif ascii_n < 97 && ascii_n > 90
        letter_n = (ascii_n-90+64).chr     
        new_str = new_str + letter_n
      else
        letter_n = ascii_n.chr     
        new_str = new_str+ letter_n
      end
      j +=1
    end
    i+=1
    if i<tab_str.size
      new_str = new_str + " "
    else
      new_str = new_str
    end
  end
 return new_str
end
