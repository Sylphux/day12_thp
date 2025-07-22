require_relative '../lib/multiples' #on link au programme

describe "the is_multiple_of_3_or_5? method" do
    it "should return true when integer is a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(3)).to eq(true)
        expect(is_multiple_of_3_or_5?(5)).to eq(true)
        expect(is_multiple_of_3_or_5?(51)).to eq(true)
        expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end

    it "shoud return false when integer is not a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(4)).to eq(false)
        expect(is_multiple_of_3_or_5?(7)).to eq(false)
        expect(is_multiple_of_3_or_5?(11)).to eq(false)
    end
end

describe "the sum_of_3_or_5_multiples method" do
    it "should return the sum of the integers multiples of 3 or 5 until x"do
        expect(sum_of_3_or_5_multiples(0)).to eq(0) #0
        expect(sum_of_3_or_5_multiples(11)).to eq(33) #0
        expect(sum_of_3_or_5_multiples(6)).to eq(8) #0
    end
    it "should return error : not an integer if input is not an integer" do
        expect(sum_of_3_or_5_multiples(2.5)).to eq("error : not an integer")
        expect(sum_of_3_or_5_multiples(2.7)).to eq("error : not an integer")
        expect(sum_of_3_or_5_multiples(20.4)).to eq("error : not an integer")
        expect(sum_of_3_or_5_multiples(2.45)).to eq("error : not an integer")
        expect(sum_of_3_or_5_multiples(9.02)).to eq("error : not an integer")
        expect(sum_of_3_or_5_multiples("yolo")).to eq("error : not an integer")
    end
end