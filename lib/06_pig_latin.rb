def translate(sentence) # Traduction en pig latin de la sentence
    
    sentence = sentence.gsub("sch","€££").gsub("qu","$@") # gsub pour gerer les exceptions
    sentence_ary = sentence.split # Découpe la phrase dans un array

    for i in (0..(sentence_ary.length-1) ) # On balaye tous les mots de la phrase
        word = sentence_ary[i] #  qui contient le mot qui va être analysé

        if word[0].count("\\aeiou@") == 1 then # Le mot commence par une voyelle. @ est une voyelle pour gerer "qu"
            sentence_ary[i] = sentence_ary[i] + "ay"
        
        else # le mot commence par une consomne

            if (word[1].count("\\aeiou") == 0)  then # le mot commence donc par au moins 2 consomnes
            
                if (word[2].count("\\aeiou") == 0) then # le mot commence donc par 3 consomnes
                    sentence_ary[i]  = word[3..10] + word[0..2] + "ay"
                else # le mot commence donc par 2 consomnes
                    sentence_ary[i]  = word[2..10] + word[0..1] + "ay"
                end
             
            else # le mot commence donc par 1 seule consomnes
                sentence_ary[i]  = word[1..10]+ word[0] + "ay"
            end

        end

    end

    final = (sentence_ary.join(" ")).gsub("€","sch").gsub("£","").gsub("$","qu").gsub("@","") # gsub pour la gestion des exceptions

    return final

end

