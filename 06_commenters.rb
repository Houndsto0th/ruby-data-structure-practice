require 'pp'
require_relative 'curriculum'
# Require the Ruby file
#
# Print out the names of all the commenters
#
# Expected output
#
#   Julia Hilll
#   Price Bayer
#   Jake Hyatt
#   Lafayette Little
#   Kelvin Howell
#   Duane Tillman
#   Jake Hyatt
#   Lafayette Little
#   Duane Tillman
#   Miss Hadley Mueller
#   Price Bayer
#   Vicente Bashirian
#   Jake Hyatt
#   Julia Hilll
#   Lafayette Little
#   Eloy Reichert
#   Aiyana Fritsch
#   Aurelio Abbott
#   Jake Hyatt
#   Jules Herzog
#   Julia Hilll
#   etc...
users = Array.new
CURRICULUM[:units].each do |unit|
  unit[:lessons].each do |lesson|
    lesson[:occurrences].each do |date, detail|
      detail[:comments].each do |comment|
        users << comment[:user][:name].to_s
      end
    end
  end
end
users.join
puts users.uniq
