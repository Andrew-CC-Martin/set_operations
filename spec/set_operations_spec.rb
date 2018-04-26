require_relative '../set_operations.rb'

RSpec.describe SetOperations do
    context "When testing the set join operations" do
        it "should return intersection of two arrays" do
            l1 = [1, 324, 45, 32, 4, 5, 34, 9]
            l2 = [43, 5, 34, 3, 543, 89, 23]
            output = [5, 34]
            expect(SetOperations.intersection l1, l2).to match_array(output)
        end

        it "should return the union of two arrays" do
            l1 = [4, 5, 6, 7]
            l2 = [1, 2, 3, 4]
            output = [1, 2, 3, 4, 5, 6, 7]
            expect(SetOperations.union l1, l2).to match_array(output)
        end

        it "should return the difference of two arrays" do
            l1 = [4, 5, 3, 7]
            l2 = [5, 4, 2, 7, 9, 8]
            output = [3]
            expect(SetOperations.difference l1, l2).to match_array(output)
        end

        it "should return the symmetric difference of two arrays" do
            l1 = [1, 324, 45, 32, 4, 5, 34, 9]
            l2 = [43, 5, 34, 3, 543, 89, 23]
            output = [1, 324, 45, 32, 4, 43, 3, 543, 89, 23, 9]
            expect(SetOperations.symmetric_difference l1, l2).to match_array(output) 
        end

        it "should return the complement of an array" do
            l1 = [4, 23, 48, 89]
            output = (1..100).to_a - l1
            expect(SetOperations.complement l1).to match_array(output)
        end

        it "should return true if two arrays are disjointed" do
            l1 = [3, 4, 5]
            l2 = [1, 2, 9]
            expect(SetOperations.disjoint? l1, l2).to eq true
        end
    end
end
