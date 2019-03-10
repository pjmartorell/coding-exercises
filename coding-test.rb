module CodingTest
    class << self
        # Exercise 1
        # Given an array where every element occurs three times, except one element which occurs only once. 
        # Find the element that occurs once.
        def find_unique_1(array)
            times = Hash.new(0)
            for i in 0..array.length-1 do
                times[array[i]] += 1
            end
            times.key(1)
        end

        def find_unique_2(array)
          sorted_array = array.sort
          three_arrays = Array.new(3,0)
          sorted_array.each_with_index do |elem, index|
              current = index % 3
              three_arrays[current] = elem + three_arrays[current]
          end
          three_arrays[0] - three_arrays[1]
        end

        def find_unique_3(array)
            uniques = array.uniq
            (3 * uniques.sum - array.sum) / 2
        end

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
