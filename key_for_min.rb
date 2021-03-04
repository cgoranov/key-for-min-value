# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'

def key_for_min_value(name_hash)
    previous_number = 0
    current_min = " "
    if name_hash == {}
        return nil
    else
        name_hash.each do |name, number|
            if name_hash.first.include?(name)
                previous_number = number
                current_min = name
            else
                if number <= previous_number
                    current_min = name
                    previous_number = number
                end
            end

        end 
    end
    current_min
end