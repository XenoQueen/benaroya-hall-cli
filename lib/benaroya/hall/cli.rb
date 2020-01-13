require "benaroya/hall/cli/version"

class Benaroya::CLI
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
    puts "To leave this "
end


















# module Benaroya
#   module Hall
#     module Cli
#       class Error < StandardError; end
#       # Your code goes here...
#     end
#   end
# end
