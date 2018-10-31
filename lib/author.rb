class Author

  attr_accessor :name

  def initialize(name)
    @name=name

  end

  def add_post(post_instance)
    post_instance.author = self
    end

    def posts
      Post.all.select do |post|
        post.author == self
    end
  end

    def add_post_by_title(post_instance)
      Post.new(post_instance).author = self
    end

    def self.post_count
      Post.all.length

    end
  end
