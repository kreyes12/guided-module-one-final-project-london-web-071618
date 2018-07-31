require_relative 'config/environment'
require 'sinatra/activerecord/rake'
require 'open-uri'
require 'json'

desc 'starts a console'
task :console do
  Pry.start
end

desc 'tests my test innit'
task :test do
  array = []
  url = open('https://anapioficeandfire.com/api/books/1')
  array << url.each {|data| data}
  puts array
end
