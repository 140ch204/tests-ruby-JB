def add(a,b)
    #addition of 2 numbers
    return (a+b)
end 

def subtract(a,b)
    #substract of 2 numbers
    return (a-b)
end

def sum(a_array)
    #sum of 
    a_sum = 0
    a_array.each do |a|
        a_sum += a
    end
    return a_sum
end

def multiply(a,b)
    #multiply of 2 numbers
    return (a * b)
end

def power(a,b)
    return a**b
end

def factorial(a)
    if a == 0 then 
        return 0
    else
        facto = 1
        for i in (1..a)
            facto = facto * i 
        end
        return facto
    end
end