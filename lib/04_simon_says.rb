def echo(var)
    return var
end

def shout(string)
    return string.upcase
end

def repeat(str, n = 2)
    # str + (" #{str}" * (i-1))
    Array.new(n, str).join(" ")
end

def start_of_word(str, num)
    return str[0, num]
end

def first_word(str)
    return str.split[0]
end

def titleize(title)
    # return str.split.capitalize(0)

    little_words = %w[a an and the or over in of]
  title.capitalize.split.map { |word| little_words.include?(word) ? word : word.capitalize }.join(" ")
end
=begin
En lien avec l'exo du dessus
    Le titre est d'abord converti en majuscule avec capitalize.
    En utilisant split, le titre est divisé en mots individuels.
    Chaque mot est ensuite transformé en majuscule sauf s'il s'agit d'un "petit mot" (little word) défini dans le tableau little_words.
    Les mots modifiés sont ensuite réunis avec join(" ") pour former la version capitalisée du titre.
end