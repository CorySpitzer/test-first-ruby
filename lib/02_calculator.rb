#02_calculator.rb


def add int, int2
    int + int2
end

def subtract int, int2
    int - int2
end

def sum numbers
    sum = 0
    numbers.each do |number|
        sum  += number
    end
    sum
end

def multiply numbers
    # Takes an array
    if numbers.length <= 1
        nil
    else # 2 or more numbers
        product = 1
        numbers.each do |number|
            product *= number
        end
        product
    end
end

def exponentiate base, exponent
    if exponent < 0
        1.0 / (exponentiate(base, exponent.abs) )
    elsif exponent == 0
        1
    elsif exponent == 1
        base
    else
        product = 1
        exponent.times do
            product *= base
        end
        product
    end
end

def factorial(int)
    if int < 0
        nil
    elsif int < 2
        1
    else
        int*factorial(int-1)
    end
end



