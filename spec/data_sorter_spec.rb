require 'data_sorter'

describe DataSorter do
  context 'testing sorting functionality' do
    it ' should return sorted hash array' do
      test_data = []
      test_data << { a: 1, b: 9 }
      test_data << { a: 3, b: 7 }
      test_data << { a: 2, b: 3 }
      test_data << { a: 18, b: 10 }
      test_data << { a: 9, b: 4 }
      data_sorter = DataSorter.new(test_data)

      expect(data_sorter.sort_data_by(:b).map { |data| data[:b] }).to eq [10, 9, 7, 4, 3]
      expect(data_sorter.sort_data_by(:a).map { |data| data[:a] }).to eq [18, 9, 3, 2, 1]
    end
  end
end
