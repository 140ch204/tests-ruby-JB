
def who_is_bigger(a, b, c)
    # Initisalisation
    nil_detected = false

   # puts a,b,c

   # Nil analyze
    if a == nil then 
        nil_detected = true
        a = -1
    end
    if b == nil then 
        nil_detected = true
        b = -1
    end
    if c == nil then 
        nil_detected = true
        c = -1
    end

    # Building hash
    arr = { "a" => a , "b" => b , "c" => c } 

    # Results
    if nil_detected == true then # Has deteted Nil
        return "nil detected"
    else
        max_key = arr.max_by{|k,v| v}[0] # No Nil detected
        return "#{max_key} is bigger"
    end

end

def reverse_upcase_noLTA(sentence)

    return  sentence.reverse.upcase.gsub(/[LTA]/,'')

end

puts reverse_upcase_noLTA("Tries this at Home, Kids")

def array_42(arr)

    return arr.count(42)>0 

end 

def magic_array(arr)

    # The magic_array function takes an array of number or an array of
    # array of number as parameter and return the same array :
    # - flattened (i.e. no more arrays in array)
    # - sorted
    # - with each number multiplicated by 2
    # - with each multiple of 3 removed
    # - with each number duplicate removed (any number should appear only once)
    # - sorted
    # BONUS : You can do this in one line less than 55 chars
    #it 'does crazy stuff on Arrays' do
    #  expect(magic_array([1, 2, 3, 4, 5, 6]))
    #    .to eq([2, 4, 8, 10])
    #  expect(magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]]))
    #    .to eq([2, 4, 8, 10, 46, 62])
    #  expect(magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8]))
    #    .to eq([2, 4, 14, 16, 64])
    #end

    return arr.flatten.map{|a| a*2 }.select{ |b| (b%3 != 0) }.uniq.sort

end

  magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]])