# Requires fvxb to installed. Also the headless gem
# Pass in the file with the spotify urls. Each URL on a separate link

require 'rubygems'
require 'watir'
require 'watir-webdriver'
require 'headless'

if ARGV.count != 1
	puts "Must pass in a file as an argument"
	exit
end

source = ARGV[0]
	
puts "Scrapping " + source
#Start a headless browser
headless = Headless.new
headless.start
browser = Watir::Browser.new

file = File.new(ARGV[0], "r")
output = File.new("output.txt", "w")

file.each do |l|

	browser.goto l
	#sleep(2)
	song_title = browser.h1(:xpath, "//*[@id=\"main\"]/div/div/div[2]/div[1]/h1").text
	artist = browser.a(:xpath, "//*[@id=\"main\"]/div/div/div[2]/div[1]/h2/a").text
	album = browser.a(:xpath, "//*[@id=\"main\"]/div/div/div[2]/h3/a").text
	info = song_title + ";" + artist + ";" + album + "\n"
	puts info
	output << info
	
end
output.close
headless.destroy
