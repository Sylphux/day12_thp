def is_multiple_of_3_or_5?(current_number) #vérifie si multiple de 3 ou 5
    if current_number%3==0 || current_number%5==0
        return true
    else
        return false
    end
end

def sum_of_3_or_5_multiples(final_number)
    if final_number.is_a?(Integer)
        multiples_of_3_and_5 = []
        final_number.times do |i|
            if is_multiple_of_3_or_5?(i)
                multiples_of_3_and_5.push(i)
            end
        end
        return multiples_of_3_and_5.sum
    else
        return "error : not an integer"
    end
end

def perform
    print "Choose range :"
    range = gets.chomp
    puts
    puts "La somme des entiers multiples de 3 ou 5 jusqu'à #{range} est..."
    puts sum_of_3_or_5_multiples(range.to_i)
end

perform