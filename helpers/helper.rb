module Magaz
    module Instance_method
        def name
            @name
        end
    
        def category
            @category
        end

        def add_articles(articles)
            articles.magazine = self
        end

        def article_titles
            @@allArt.select{ |article| article.magazine == self} .map(&:title)
        end
    
        def contributing_authors
            authors = @@articles.map{ |article| article.author}
            # authors.select{ |author| author.count(author.name) > 2}.uniq
    
            # all_authors.count{|author| author.name > 2}.uniq
    
        end
    end
    module Class_Method
        def self.all
            @@all
        end

        def self.find_by_name(name)
            self.all.find{ |magazine| magazine.name == name}
        end
    end
end