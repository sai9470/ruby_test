require 'response_formatter'

describe ResponseFormatter do
  context 'testing log response formatter functionality' do
    it 'should return fomatted array' do
      response_formatter = ResponseFormatter.new
      data = []
      data << { url: 'abc.com', unique_hits: 51 }
      data << { url: 'abcd.com', unique_hits: 61 }
      data << { url: 'abcdf.com', unique_hits: 71 }

      fomatted_data = response_formatter.process_response(data, :unique_hits, 'unique views')
      expect(fomatted_data.size).to eq 3
      expect(fomatted_data).to eq ['abc.com 51 unique views', 'abcd.com 61 unique views', 'abcdf.com 71 unique views']
    end
  end
end
