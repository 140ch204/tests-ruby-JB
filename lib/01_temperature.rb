def ftoc(tempF)
    # Convert °F into °C
    return ((tempF-32)/1.8).round(1)
end

def ctof(tempC)
    # Convert °C into °F
    return (tempC*1.8+32)
end