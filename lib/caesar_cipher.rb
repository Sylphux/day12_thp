
def cypherize_char(s1, k1) #def pour cipheriser les caracteres un par un et trier si on doit les ignorer

    if s1.ord.between?(65,90) || s1.ord.between?(97,122) #si lettre ////
        if s1.ord.between?(97,122) && (s1.ord + k1) > 122 # si on doit retourner à a en MINUSCULES
            return (s1.ord + k1 - 26).chr
        elsif s1.ord.between?(65,90) && (s1.ord + k1) > 90 # si on doit retourner à A en MAJUSCULES
            return (s1.ord + k1 - 26).chr
        else # si ce n'est pas une lettre
            return (s1.ord + k1).chr
        end
    else
        return s1 #caractere non transformé car pas une letttre
    end

end

def caesaf_cipher(phrase, cle)

    # map pour éviter de faire une loop
    return phrase.split("").map!{ |x| cypherize_char(x, cle)}.join

end #end caesar

def perform
    print "Choose a phrase : "
    phrase = gets.chomp.to_s
    print "Choose encryption key : "
    cle = gets.chomp.to_i
    puts
    puts "Encoded phrase with key #{cle} is now : "
    puts caesaf_cipher(phrase,cle)
end

perform