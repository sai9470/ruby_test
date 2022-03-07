# This class formats the response in a required way

class ResponseFormatter
  def process_response(data, stat_key, description)
    response_data = []
    data.map do |request_stat|
      response_data << "#{request_stat[:url]} #{request_stat[stat_key]} #{description}"
    end
    response_data
  end
end
