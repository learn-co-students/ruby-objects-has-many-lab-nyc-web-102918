require_relative './post'

class Author
	@@all = []

	def self.post_count
		@@all.length
	end

	attr_accessor :name
	attr_reader :posts

	def initialize(name)
		@name = name
		@posts = []
	end

	def add_post(post)
		post.author = self

		@posts << post
		@@all << post
	end

	def add_post_by_title(title)
		post = Post.new(title)
		self.add_post(post)
	end
end