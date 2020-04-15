# définition de l'array de prix
def price
array_price = Array[17, 3, 6, 9, 15, 8, 6, 1, 10]
end

a = 0         # a : jour d'achat
v = 0         # v : jour de vente
i = 0         # i : ième jour

# fonction qui va donner la soustraction la plus grande ($vente-$achat)
def bigger_substraction
  tab_diff_price = []
  j=0
  while array_price[j]
      while array_price[i]
      j=0
      diff_price = array_price[8-j]-array_price[i]
      tab_diff_price  << diff_price
    end
    j+=1
  end
end


# fonction donnant le jour d'achat et le jour de vente
def day_trader(bigger_substraction)
 return [a,v]
end  

puts bigger_substraction
