require 'log_file_analyser'

describe LogFileAnalyser do
  context 'testing log file analyser functionality' do
    it 'should return web pages stats array' do
      file_name = 'public/webserver.log'
      log_analyser = LogFileAnalyser.new(file_name)

      web_page_data = log_analyser.web_page_stats
      expect(web_page_data.size).to eq 6
      expect(web_page_data[0]['url']).to eq '/help_page/1'
      expect(web_page_data[0]['ips'].uniq.size).to eq web_page_data[0]['unique_hits']
      expect(web_page_data[0]['ips'].size).to eq web_page_data[0]['total_hits']
    end
  end
end
