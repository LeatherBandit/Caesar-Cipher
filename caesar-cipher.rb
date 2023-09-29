def encrypt_data(string, shift = 0)

    #Convert string to array of characters
    string_array = string.split("").map { |element| element.ord}

    #Check value of shift to ensure we don't have to wrap more than once
    shift %= 26

    string_array.map! do |character_code|
        if character_code.between?(65, 90)
            base = 65
            (character_code + shift - base) % 26 + base
        elsif character_code.between?(97, 122)
            base = 97
            (character_code + shift - base) % 26 + base
        else
            character_code
        end
    end

    output_array = string_array.map { |element| element.chr }.join
    print output_array
end


encrypt_data("TEST", -10)