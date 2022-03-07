# This class analyses the log file and returns Needed info

class LogFileAnalyser
  def initialize(file_name)
    @file_name = file_name
  end

  def web_page_stats
    web_pages = fetch_web_pages
    web_page_with_ips = map_web_page_with_ips(web_pages)
    prepare_web_page_stats(web_page_with_ips)
  end

  private

  def fetch_web_pages
    File.foreach(@file_name)
  end

  def map_web_page_with_ips(web_pages)
    web_page_with_ips = {}
    web_pages.each_entry do |web_page|
      # split url and ip
      web_page_data = web_page.split(' ')

      # if url exists append new Ip else form new key value pair
      if web_page_with_ips[web_page_data[0]]
        web_page_with_ips[web_page_data[0]] << web_page_data[1]
      else
        web_page_with_ips[web_page_data[0]] = [web_page_data[1]]
      end
    end
    web_page_with_ips
  end

  def prepare_web_page_stats(web_page_with_ips)
    web_page_stats = []
    web_page_with_ips.map do |url, ips|
      web_page_stat = {}
      web_page_stat['url'] = url
      web_page_stat['ips'] = ips
      web_page_stat['total_hits'] = ips.size
      web_page_stat['unique_hits'] = ips.uniq.size
      web_page_stats << web_page_stat
    end
    web_page_stats
  end
end
