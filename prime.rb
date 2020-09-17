# Prime numbers are numbers that have only 2 factors: 1 and themselves. 
# For example, the first 5 prime numbers are 2, 3, 5, 7, and 11. By contrast, numbers with more than 2 factors are call composite numbers.

# How do you create a range of numbers? 
# https://ruby-doc.org/core-2.5.1/Range.html
# (1..5)

# How do you turn a range into an array so that it can be iterated over?
# (1..5).to_a

# So we want to iterate over this? why?
# we want to see if num is divisible by another number
# start at 2, since all divisible by one
# stop before get to number itself, because that will be true

# what iterator to use?
# all? The method returns true if the block never returns false or nil.
# if prime, then shouldnt be divisible by any number but itself and 1
# how to see if divisible? modulo
# if divisible, remainder will be 0

def prime?(num)
    if num <= 1 #negative numbers can't be prime
        false
    else
        (2..num - 1).to_a.all? do |n|
            num % n != 0
        end 
    end

end