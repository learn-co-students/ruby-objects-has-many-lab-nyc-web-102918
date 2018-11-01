class Author

  attr_accessor :name, :posts    # has an attr_accessor for name

  @@post_count = 0

  def initialize(name)  #new is initialized with a name
    @name = name
    @posts = []   # has many posts
  end

  def add_post(post)
    #takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    #takes in an argument of a post title, creates a new post with it and associates the post and author
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    #is a class method that returns the total number of posts associated to all existing authors
    @@post_count
  end
end
