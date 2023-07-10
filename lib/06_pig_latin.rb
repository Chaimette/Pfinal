
def translate(phrase)
    vowels = %w[a e i o u]
    words = phrase.split.map do |word|
      if vowels.include?(word[0])
        word + "ay"
      else
        consonant_count = 0
        while consonant_count < word.length && !vowels.include?(word[consonant_count])
          if word[consonant_count..(consonant_count + 1)] == "qu"
            consonant_count += 2
          else
            consonant_count += 1
          end
        end
        word[consonant_count..] + word[0...consonant_count] + "ay"
      end
    end
    words.join(" ")
  end

=begin
  En résumé, ce code implémente une fonction de traduction d'une phrase en utilisant la règle du Pig Latin.
   Les mots commençant par une voyelle ont simplement "ay" ajouté à la fin, 
   tandis que les mots commençant par une ou plusieurs consonnes déplacent ces consonnes à la fin du mot, suivies de "ay".
La fonction translate prend une phrase en entrée et applique la règle du Pig Latin pour la traduire.
 Les mots commençant par une voyelle ont simplement "ay" ajouté à la fin, 
 tandis que les mots commençant par une ou plusieurs consonnes déplacent ces consonnes à la fin du mot, suivies de "ay". 
 La fonction renvoie la phrase traduite.
=end


