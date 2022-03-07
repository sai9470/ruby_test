# This class is used to sort data hash by provided key's value

class DataSorter
  def initialize(data)
    @data = data
  end

  def sort_data_by(key)
    @data.sort_by { |request_data| request_data[key] }.reverse
  end
end
