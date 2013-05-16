spotify_scrapper
================
I wanted an automated way to capture data from a spotify playlist. This script assumes that a list has been created in a text file from a spotify playlist. You can copy all the songs in a spotify playlist and then paste it into a text file. Then replace all the spaces in that file with line returns and save the file. Pass that into this script. 

The goal is to be able to get all my playlist info out of spotify and into something else if needed. 

run like this:
ruby scrapper.rb \<file\>

TODO:
 * Create a standard playlist file automatically from this data
 * Use google music api to automatically find the songs and add them to a google music playlist
