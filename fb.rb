require "rubygems"
require "json"
require "net/http"
require "open-uri"
require "uri"

access_token ='ENTER YOUR ACCESS TOKEN HERE' 
base_url = 'https://graph.facebook.com/anirudh.bhat/friends?fields=id,name,birthday&access_token=' + access_token

name_birthday = Hash.new
name_id = Hash.new 
birthdays = open(base_url).read

parsed = JSON.parse(birthdays)
parsed['data'].each {|i| name_birthday.store(i['name'], i['birthday']) rescue next }

File.open("Facebook.txt", "w") do |f|
  f.write(name_birthday.to_json)
end
end

