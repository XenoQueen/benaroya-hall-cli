require 'colorize'
require "benaroya/hall/cli/version"

class Benaroya::CLI
  
  def call
    Benaroya::Scraper.scrape
    welcome
    menu
    list_concerts
  end
  
  def welcome
    puts "Welcome to Benaroya Hall, home of the Seattle Symphony!".blue.bold
    puts "To view upcoming concerts and events, type 'list'.".bold
    puts "To leave this program, type 'exit'.".red.bold
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
