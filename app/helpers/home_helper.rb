module HomeHelper
  # Returns the icon URL
  def weather_icon_url code
    "http://openweathermap.org/img/w/#{code}"
  end

  # Returns the formatted day
  def date_format timestamp
    Time.at(timestamp).to_datetime.strftime("%A %d")
  end

  # Returns formatted temperature string
  def temp value
    "#{value.to_i}&#176;".html_safe
  end
end
