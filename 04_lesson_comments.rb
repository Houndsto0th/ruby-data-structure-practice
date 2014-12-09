require 'pp'
require 'json'
json = File.read('curriculum.json')
curriculum = JSON.parse(json)
# Require json and parse the json file
#
# Print out the lesson names with the total number of comments
#
# Expected output
#
#   Orientation
#     Name Games - 3
#     Mind Maps - 4
#     Sequence Diagrams - 2
#   Rails Basics
#     Controllers - 5
#     Models - 0
#     Views - 8
#     Migrations - 2
#   CRUD
#     Create - 3
#     Read - 1
#     Update - 6
#     Delete - 2

curriculum["units"].each do |unit|
  puts "#{unit["name"]}"
  unit["lessons"].each do |lesson|
    @comment = 0
    lesson["occurrences"].each do |date, detail|
      @comment += detail["comments"].count
    end
    puts "  #{lesson["name"]} - #{@comment}"
  end
end
