module CodingTest
    class << self
        # Exercise 2
        # Given two numbers a and b. Write a program to count number of bits needed to be flipped to
        # convert a to b.
        def count_flipped_bits(a, b)
            xor = (a ^ b).to_s(2)
            xor.count("1")
        end

        # Exercise 3
        # Given an array of distinct integers and a sum value. Find count of triplets with sum smaller than
        # given sum value
        def count_triplets(array, sum)
            count = 0
            for i in 0..array.length-1 do
                for j in i+1..array.length-1 do
                    for k in j+1..array.length-1 do
                        count += 1 if array[i] + array[j] + array[k] < sum
                    end
                end
            end
            count
        end
    end
end
