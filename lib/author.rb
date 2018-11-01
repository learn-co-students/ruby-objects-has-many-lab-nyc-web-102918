class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    self.add_post(new_post)
  end

  def self.post_count
    Post.all.length
  end

end
