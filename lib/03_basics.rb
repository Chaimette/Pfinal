def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil 
        return "nil detected"
    elsif a > b && a > c
        return "a is bigger"
    elsif b > a && b > c 
        return "b is bigger"
    else
        return "c is bigger"
    end
end

def reverse_upcase_noLTA (alphabet)

    alphabet.reverse.upcase.delete ('LTA')
    
end

def array_42 (data)
    if data.include?(42)
        return true
    else
        return false
    end
end

def magic_array (data)
    # tableaux imbriqués, de sorte que tous les éléments soient sur le même niveau.
    # uniq : supprime les doublons en conservant uniquement une seule occurrence de chaque élément.
    # map { |num| num * 2 } : multiplie chaque élément par 2.
    # reject { |num| num % 3 == 0 } : supprime les éléments qui sont des multiples de 3.
    # sort : trie les éléments du tableau résultant par ordre croissant.
    data.flatten.uniq.map { |num| num * 2 }.reject { |num| num % 3 == 0 }.sort
end