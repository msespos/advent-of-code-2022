require 'set'

range_pairs = File.readlines('data.txt').map! { |range_pair| range_pair.chomp }

def string_to_set(range_string)
  range_pair = range_string.split("-").map(&:to_i)
  set = (range_pair[0]..range_pair[1]).to_set
end

def contained?(set1, set2)
  set1 >= set2 || set2 >= set1
end

def overlapping?(set1, set2)
  !(set1 & set2).empty?
end

def process_ranges(range_pairs, method)
  range_pairs.map { |range_pair|
    range_array = range_pair.split(",")
    range_array.map! { |s| string_to_set(s) }
    if method == :contained
      contained?(range_array[0], range_array[1]) ? 1 : 0
    else
      overlapping?(range_array[0], range_array[1]) ? 1 : 0
    end
  }.sum.to_s
end

p "Number of contained pairs: " + process_ranges(range_pairs, :contained)
p "Number of overlapping pairs: " + process_ranges(range_pairs, :overlapping)
