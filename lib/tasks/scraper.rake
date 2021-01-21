namespace :scrape do
  desc "Scrape sportsparks-site for stations data"
  task stations: :environment do
    puts "scraping..."
    scrape = Scraper.new
    stations = scrape.scrape_stations
    Station.create_from_collection(stations)
    puts "scraping complete."
  end
end
