require 'rubygems'
require 'watir'
require 'watir-webdriver'

browser = Watir::Browser.new
browser.goto 'http://open.spotify.com/track/6IK8OzOAHZrTGa9LkVcgx4'
sleep(2)

song_title = browser.h1(:xpath, "//*[@id=\"main\"]/div/div/div[2]/div[1]/h1").text
puts song_title
browser.close()

