require_relative '../spec/author.rb'

# Article #initialize
# initialized with an author as( Author object) a magazine as (magazine object) and title as (string)
# author, magazine, or title remains unchanged after initialization
# Article#title
# Returns the title for that given article
# Article.all
# Returns an array of all Article instances
class Article < Author
    attr_reader :author, :magazine, :title
    @@allArt = []
    @@articles
    
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@allArt << self
    end
  
    def self.all
      @@allArt
    end
end
  


# Obj relationship
# Article#author
# Returns the author for that given article
# Article#magazine
# Returns the magazine for that given article