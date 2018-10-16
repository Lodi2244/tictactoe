# We need to add Array some methods to help us
class Array
  # Return true if all array content is empty
  def all_empty?
    self.all? { |element| element.to_s.empty?}
  end
  # Return true if all elets are the same
  def all_same?
    self.all? { |element| element == self[0] }
  end
  # Return true if one element is empty
  def any_empty?
  self.any? { |element| element.to_s.empty? }
  end
  # Return true  if none element of array are empty
  def none_empty?
    !any_empty?
  end
end
