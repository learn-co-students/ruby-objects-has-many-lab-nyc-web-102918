class Author

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
  end

  def self.all
    @@all
  end

def add_post(post)
  #add_posttakes in an argument of a post and
  # associates that post with the author by telling
  # the post that it belongs to that author
  post.author = self
end

def add_post_by_title(title)
  # #add_post_by_title takes in an argument of
  # a post title, creates a new post with it and
  # associates the post and author
  post = Post.new(title)
  post.author = self
end

def posts
  #posts has many posts
  Post.all.select {|post| post.author == self}
end

def self.post_count
  # .post_count is a class method that returns the
  # total number of posts associated to all existing
  # authors
  Post.all.count
end

end
