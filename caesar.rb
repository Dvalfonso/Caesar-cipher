cadena = "What a string!";

def caesar_cypher(cad, num)
    cad = cad.downcase
    cad = cad.split("")
    
    i = 0
    while i < cad.length()do
        cad[i] = cad[i].ord
        
        if (cad[i] + num > 122) 
            cad[i] = 97 + ((cad[i] + num) - 122)
            cad[i] = cad[i].chr
        elsif (cad[i] + num < 97)
            cad[i] = 122 - ((cad[i] + num) - 97)
        end


        i+= 1
    end
    cad
end

caesar_cypher(cadena, 5)