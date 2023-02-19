#!/usr/bin/env ruby 
require_relative '../spec/author.rb'
require_relative '../spec/magazine.rb'
require_relative '../spec/article.rb'


#  authors
author1 = Author.new("W. Waka")
author2 = Author.new("Mr.Titus")

#  magazines
magazine1 = Magazine.new("Vogue", "Fashion")
magazine2 = Magazine.new("Time", "News")

# Add articles to the authors and magazines
author1.add_article(magazine1, "Chat GPT")
author1.add_article(magazine2, "Kenyans on the Internet")
author2.add_article(magazine2, "KOT is lethal")

# Print out the topic areas for each author
puts "Author 1: #{author1.topic_areas}"
puts "Author 2: #{author2.topic_areas}"

article1 = Article.new(author1, magazine1, "The Wonders of the Universe")
article2 = Article.new(author1, magazine1, "The Science of Climate Change")
article3 = Article.new(author2, magazine2, "The Art of Fiction Writing")
# article4 = Article.new(author2, magazine3, "The Politics ")
# article5 = Article.new(author1, magazine3, "The State of  Democracy")



# Print out the titles of articles for each magazine
puts "Magazine 1 Articles: #{magazine1.article_titles}"
puts "Magazine 2 Articles: #{magazine2.article_titles}"

# Print out the authors who have contributed more than 2 articles to a magazine
puts "Contributing Authors: #{magazine2.contributing_authors.map(&:name)}"


