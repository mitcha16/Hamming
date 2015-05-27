class Hamming_Calculator
  def compute(strand_1, strand_2)
    array1=strand_1.chars
    array2=strand_2.chars
    if array1.length!=array2.length
      raise ArgumentError.new("Your strands do not have an equal length!")
    end
    hamming_count=0
    array1.length.times do
      first_element=array1.shift
      second_element=array2.shift
      if first_element!=second_element
        hamming_count=hamming_count+1
      end
    end
    return hamming_count
  end
end

