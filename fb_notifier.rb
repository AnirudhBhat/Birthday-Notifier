#! /usr/bin/ env ruby
require 'date'
today = Date.today
tomorrow = today + 1
File.open('Facebook.txt').each(sep=",") do|line|
  `notify-send 'Today is #{line}\'s birthday..Go wish him/her on Facebook'` if line.include?Time.now.strftime("%m/%d")
  `notify-send 'Tomorrow is #{line}\'s birthday..'` if line.include?(tomorrow.strftime("%m/%d"))
end
