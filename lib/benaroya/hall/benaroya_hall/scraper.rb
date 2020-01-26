require 'open-uri'
require 'pry'

class Benaroya::Scraper
  
  attr_accessor :name, :date, :time, :tickets
  
  def self.scrape_index_page(index_url) #method that scrapes website for concerts and events
    doc = Nokogiri::HTML(open("https://www.seattlesymphony.org/benaroyahall/concerts-tickets"))
    
    doc.css("div.entry.event-icons.clearfix").each do |concert|
      name = concert.css("h4").text
      date = concert.css("span.m-date-value.m-value").text
      time = concert.css("span.m-doors").text.gsub("").strip
      tickets = concert.css("div.buttons a").attr("href").text
      BenaroyaHall.concert.new(name, date, time, tickets)
    end
  end
end