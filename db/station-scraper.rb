require 'open-uri'
require 'nokogiri'

html_content = open('https://calisthenics-parks.com/cities/16-de-berlin').read
doc = Nokogiri::HTML(html_content)

nodeset = doc.css(".media-heading a")
links = nodeset.map {|element| element["href"] }.compact
nodeset.each do |station|
  p station.children.to_s
  link = station["href"]
  station_url = open(link).read
  station_doc = Nokogiri::HTML(station_url)
  address = station_doc.search('address').text.strip
  p location = address.gsub("Adresse\n                                    ", "").gsub(", Deutschland", "")
end

