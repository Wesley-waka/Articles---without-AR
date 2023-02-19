require_relative '../spec/article.rb'
require_relative '../helpers/helper.rb'

# 1
# Magazine#initialize(name, category)
# magazine initialized with :name(string) and :category(string) use attr_accessor
# Magazine#name
# Returns the name of this magazine
# Magazine#category
# Returns the category of this magazine
# Magazine.all
# Returns an array of all Magazine instances

class Magazine < Article
  
    attr_accessor :name, :category

    @@all = []
    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end
    

    def name
        @name
    end

    def category
        @category
    end

    def self.all
        @@all
    end

    def add_articles(articles)
        articles.magazine = self
    end

    def self.find_by_name(name)
        self.all.find{ |magazine| magazine.name == name}
    end

    def article_titles
        @@allArt.select{ |article| article.magazine == self} .map(&:title)
    end

    def contributing_authors
        authors = @@articles.map{ |article| article.author}
        # authors.select{ |author| author.count(author.name) > 2}.uniq

        # all_authors.count{|author| author.name > 2}.uniq

    end
    # OBJ relationship methods
    # Magazine#contributors
    # Returns an array of Author instances who have written for this magazine
    # def contributors
    #     @@all.map{|msg| msg.name}
    # end


end



# association and aggregate
# Magazine.find_by_name(name)
# Given a string of magazine's name, this method returns the first magazine object that matches
# Magazine#article_titles
# Returns an array strings of the titles of all articles written for that magazine
# Magazine#contributing_authors
# Returns an array of authors who have written more than 2 articles for the magazine