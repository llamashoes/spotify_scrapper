# Requires fvxb to installed. Also the headless gem
# Pass in the file with the spotify urls. Each URL on a separate link

require 'rubygems'
require 'watir'
require 'watir-webdriver'
require 'headless'

headless = Headless.new
headless.start
browser = Watir::Browser.new

file = File.new(ARGV[0], "r")

file.each do |l|

	browser.goto l
	#sleep(2)

	song_title = browser.h1(:xpath, "//*[@id=\"main\"]/div/div/div[2]/div[1]/h1").text
	artist = browser.a(:xpath, "//*[@id=\"main\"]/div/div/div[2]/div[1]/h2/a").text
	album = browser.a(:xpath, "//*[@id=\"main\"]/div/div/div[2]/h3/a").text
	puts song_title + " : " + artist + " : " + album
	
end

headless.destroy
