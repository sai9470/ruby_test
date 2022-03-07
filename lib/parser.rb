require_relative 'log_file_analyser'
require_relative 'data_sorter'
require_relative 'response_formatter'

# get file name from arguments
input_file_name = ARGV[0]

log_file_analyser = LogFileAnalyser.new(input_file_name)

# get web_page stats from log file
web_page_stats = log_file_analyser.web_page_stats

data_sorter = DataSorter.new(web_page_stats)

# list1 consists of data of web pages sorted by total hits
list1 = data_sorter.sort_data_by('total_hits')

# list2 consists of data of web pages sorted by unique hits
list2 = data_sorter.sort_data_by('unique_hits')

response_formatter = ResponseFormatter.new

puts response_formatter.process_response(list1, 'total_hits', 'visits')

puts "\n"

puts response_formatter.process_response(list2, 'unique_hits', 'unique views')
