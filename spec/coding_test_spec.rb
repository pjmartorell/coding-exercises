require 'spec_helper'
require_relative '../coding-test'

describe CodingTest do
    describe ".find_unique_1" do
        it "should find the element that occurs once" do
            array =  [12, 1, 12, 3, 12, 1, 1, 2, 3, 3]
            expect(subject.find_unique_1(array)).to eq(2)
        end
    end

    describe ".find_unique_2" do
        it "should find the element that occurs once" do
            array = [12, 1, 12, 3, 12, 1, 1, 2, 3, 3]
            expect(subject.find_unique_2(array)).to eq(2)
        end
    end

    describe ".find_unique_3" do
        it "should find the element that occurs once" do
            array = [12, 1, 12, 3, 12, 1, 1, 2, 3, 3]
            expect(subject.find_unique_3(array)).to eq(2)
        end
    end

    describe ".count_flipped_bits" do
        it "should count number of bits to be flipped to convert A to B" do
            a = 7
            b = 10
            expect(subject.count_flipped_bits(a,b)).to eq(3)
        end
    end

    describe ".count_triplets" do
		it "should count triplets with sum smaller than a given valuei" do
            array = [5, 1, 3, 4, 7]
            sum = 12
            expect(subject.count_triplets(array, sum)).to eq(4)
		end
    end

    describe ".longest_continous_subarray" do
        it "should find the longest continous subarray" do
            array = [1, 56, 58, 57, 90, 92, 94, 93, 91, 45]
            expect(subject.longest_continous_subarray(array)).to eq(5)
        end
    end

    describe ".minimum_diff_subsets" do
        it "should find the minimum difference between sums of 2 subsets" do
            array = [1, 6, 11, 5]
            expect(subject.minimum_diff_subsets(array)).to eq(1)
        end
    end

    describe ".longest_phrase" do
        context "when there are phrases formed with the collection of words" do
            it "should find the longest phrase formed with a collection of words" do
                words =  ["kiss", "why", "me", "did", "you", "elbow", ","]
                phrases = ["kiss me, elbow", "why did you kiss me"]
                expect(subject.longest_phrase(phrases, words)).to eq("why did you kiss me")
            end

            it "should find the longest phrase formed with a collection of words" do
                words = ["kiss", "why", "me", "did", "you", "elbow", "kiss-me", "a-", ",", ".", ";", "C3PO_"]
                phrases = [".a-.kiss-me.a-,me..elbow;me C3PO_", "why did you kiss me, why did you.", "123456789012345678901234567890123"]
                expect(subject.longest_phrase(phrases, words)).to eq(".a-.kiss-me.a-,me..elbow;me C3PO_")
            end
        end

        context "when there are no phrase formed with the collection of words" do
            it "should return an empty string" do
                words = ['kiss', 'me', 'did', 'you', ',']
                phrases = ['kiss me, elbow', 'why did you kiss me']
                expect(subject.longest_phrase(phrases, words)).to eq("")
            end
        end
    end
end
