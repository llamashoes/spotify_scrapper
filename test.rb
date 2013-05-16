require 'rubygems'
require 'watir'
require 'watir-webdriver'

browser = Watir::Browser.new
browser.goto 'http://open.spotify.com/track/6IK8OzOAHZrTGa9LkVcgx4'
sleep(2)

song_title = browser.h1(:xpath, "//*[@id=\"main\"]/div/div/div[2]/div[1]/h1").text
artist = browser.a(:xpath, "//*[@id=\"main\"]/div/div/div[2]/div[1]/h2/a").text
album = browser.a(:xpath, "//*[@id=\"main\"]/div/div/div[2]/h3/a").text
puts song_title + " : " + artist + " : " + album
browser.close()

