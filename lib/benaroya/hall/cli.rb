require "benaroya/hall/cli/version"

class Benaroya::CLI
  
  @@all = []
  
  def call
    Benaroya::Scraper.scrape
    welcome
    menu
    list_concerts
    buy_tickets
  end
  
  def welcome
    puts ""
    puts "Welcome to Benaroya Hall, home of the Seattle Symphony!"
    puts ""
    puts "To view upcoming concerts and events, type 'list'."
    puts "To purchase tickets, type 'ticket'."
    puts "To leave this program, type 'exit'."
  end
  
  def list_concerts
    input = gets.strip
    if input == "list"
      puts ""
      concerts = Benaroya::Concert.all
      concerts.each.with_index(1) {|concert, index| puts "#{index}. #{concert.name}"}
    elsif input == "exit"
      @@all.clear
    else 
      puts "To leave this program, type 'exit'."
      puts "To view upcoming concerts and events, type 'list'."
      list_concerts
    end
  end
  
  
end


















# module Benaroya
#   module Hall
#     module Cli
#       class Error < StandardError; end
#       # Your code goes here...
#     end
#   end
# end
