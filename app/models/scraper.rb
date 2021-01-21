require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  def scrape_stations
    html_content = open('https://calisthenics-parks.com/cities/16-en-berlin').read
    doc = Nokogiri::HTML(html_content)

    nodeset = doc.css(".media-heading a")
    stations = []

    nodeset.each do |station|
      name = station.children.to_s.gsub("- Berlin ", "").gsub("Berlin - ", "").gsub('Calisthenics Stations - ', '').gsub('Ninja Warrior Gym - ', '')
      link = station["href"]
      station_url = open(link).read
      station_doc = Nokogiri::HTML(station_url)
      address = station_doc.search('address').text.strip
      location = address.gsub("Address\n                                    ", "").gsub(", Germany", "")

      # create Stations
      station_info = {
        name: name,
        location: location
      }

      stations << station_info
    end
    stations
  end
end
