

# # 1
# # Author#initialize(name)
# # Author is initialized with a name as a string
# # Author#name
# # name cannot be changed(attr_reader)

class Author 
    attr_reader :name, :articles
  
    @@articles
    def initialize(name)
      @name = name
      @@articles = []
    end
  
    def add_article(magazine, title)
      article = Article.new(self, magazine, title)
      @@articles << article
    #   Magazine.add_article(article)
    end
  
    def topic_areas
      @@articles.map { |article| article.magazine.category }.uniq
    end
  
    def magazines
      @@articles.map { |article| article.magazine }.uniq
    end
end
  




