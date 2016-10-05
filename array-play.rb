#!/usr/bin/env ruby
require 'erb'

our_class = ["Brent", "Zacharay","Jon","Micheal", "Keith", "Chris","Luis"]
short_names= []
  our_class.each do |name|
    short_names << name if name.length < 5
  end

short_words=[]
sentence = "Ruby is actually kinda fun once you get used to it"
  sentence = sentence.split(" ")
    sentence.each do |x|
      short_words << x if x.length < 4
end

movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

hundred = []
hundred = movies.select {|money| money[:budget] < 100}.collect {|money| money[:title]}

leo = []
  leo = movies.select{|actor| actor[:stars].include? "Leonardo DiCaprio"}.collect{|actor| actor[:title]}
  movies.join(" ")
new_file = File.open("./#{Array}.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
