class Author
  attr_accessor :name

  @@all = []

  def initialize(name = nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    Post.new(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def self.post_count
    post_count = Author.all.map do |author|
      author.posts.count

    # post_count = Post.all.select do |post|
    #   post.author = self
    end
    post_count.inject(:+)
  end



end #class Author
