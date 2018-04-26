class SetOperations
    def self.union l1, l2
      l1 | l2
    end 

    def self.intersection l1, l2
        l1 & l2
    end 

    def self.difference l1, l2
        l1 - l2
    end 

    def self.symmetric_difference l1, l2
        (SetOperations.union l1, l2) - (SetOperations.intersection l1, l2)
    end 

    def self.complement l1
        (1..100).to_a - l1
    end 

    def self.disjoint? l1, l2
        (SetOperations.intersection l1, l2).empty?
    end 
end
