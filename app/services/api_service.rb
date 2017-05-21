require 'rest-client'

class ApiService
  def search(query="London")
    api_key = 'ba68e2c43979c6eabbd33ff8e32c0611'
    return RestClient.get("http://api.openweathermap.org/data/2.5/forecast/daily?q=#{query}&units=metric&cnt=16&appid=#{api_key}")
  end

end
