require 'open-uri'
require 'pry'

class Benaroya::Scraper
  
  attr_accessor :name, :date, :time, :tickets
  
  def self.scrape_index_page(index_url) #method that scrapes website for concerts and events
    doc = Nokogiri::HTML(open("https://www.seattlesymphony.org/benaroyahall/concerts-tickets"))
    
    
  end
end