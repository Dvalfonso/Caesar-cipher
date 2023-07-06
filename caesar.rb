cadena = "What a string!";

def caesar_cypher(cad, num)

    cad = cad.split("")
    
    i = 0
    while i < cad.length()do
        cad[i] = cad[i].ord
        
        # Caso para mayusculas (65..90)

        if (cad[i] + num > 90 && cad[i] >= 65 && cad[i] <= 90)
            cad[i] = 64 + ((cad[i] + num) - 90)
        elsif (cad[i] + num <= 90 && cad[i] >= 65 && cad[i] <= 90)
            cad[i] = cad[i] + num

        # Caso para minusculas (97..122)
        elsif (cad[i] + num > 122 && cad[i] >= 97 && cad[i] <= 122)
            cad[i] = 96 + ((cad[i] + num) - 122)
        elsif (cad[i] + num <= 122 && cad[i] >= 97 && cad[i] <= 122)
            cad[i] = cad[i] + num
        end

        cad[i] = cad[i].chr

        
        i+= 1
    end
    
    cad = cad.join

    puts cad
end

caesar_cypher(cadena, 5)