def time_string(timer_second)
    
    # Calcul des temps

    nb_hours = (timer_second/3600).floor

    nb_minutes = ((timer_second - nb_hours * 60 * 60)/60).floor

    nb_seconds =   timer_second - (nb_hours * 60 * 60) - (nb_minutes * 60)

    # Formatage en string en 00
    if nb_hours < 10 then 
        nb_hours_str = "0" + nb_hours.to_s
    else
        nb_hours_str = nb_hours.to_s
    end

    if nb_minutes < 10 then 
        nb_minutes_str = "0" + nb_minutes.to_s
    else
        nb_minutes_str = nb_minutes.to_s
    end

    if nb_seconds < 10 then 
        nb_seconds_str = "0" + nb_seconds.to_s
    else
        nb_seconds_str = nb_seconds.to_s
    end

    # Résultat

    return nb_hours_str + ":" + nb_minutes_str + ":" + nb_seconds_str

end

puts time_string(4000)