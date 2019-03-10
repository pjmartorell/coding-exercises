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
            n = array.length-1
            for i in 0..n do
                for j in i+1..n do
                    for k in j+1..n do
                        count += 1 if array[i] + array[j] + array[k] < sum
                    end
                end
            end
            count
        end

        # Exercise 4
        # Given an array of distinct integers, find length of the longest subarray which contains numbers that
        # can be arranged in a continuous sequence.
        def longest_continous_subarray(array)
            n = array.length-1
            max_length = 1
            for i in 0..n do
                min = max = array[i]
                for j in i+1..n do
                    min = [min, array[j]].min
                    max = [max, array[j]].max
                    length = max - min
                    if ((j-i) == length)
                        max_length = [max_length, length + 1].max
                    end
                end
            end
            max_length
        end

        # Exercise 5
        # Given a set of integers, the task is to divide it into two sets S1 and S2 such that the absolute
        # difference between their sums is minimum.
        def minimum_diff_subsets(array)
            minimum_diff_subsets_rec(array, array.length-1, 0, 0)
        end

        def minimum_diff_subsets_rec(array, n, subset1, subset2)
            if (n < 0)
                return (subset1 - subset2).abs
            end
            diff1 = minimum_diff_subsets_rec(array, n-1, subset1 + array[n], subset2)
            diff2 = minimum_diff_subsets_rec(array, n-1, subset1, subset2 + array[n])
            [diff1, diff2].min
        end

        # Exercise 6
        # Given two array of strings, the first with phrases, the second with words, we need to know what is
        # the longest phrase that could be formed with a collection of words.
        # NOTE: I assume words can be repeated and they are case-sensitive. In case of valid phrases with equal
        # length, the first is returned.
        def longest_phrase(phrases, words)
            phrases.select do |phrase|
                phrase_words = phrase.gsub(/([.,;])/, ' \1 ').split
                phrase_words.all? {|phrase_word| words.include? phrase_word}
            end.max_by {|phrase| phrase.length}.to_s
        end
    end
end
