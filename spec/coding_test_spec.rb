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
end

