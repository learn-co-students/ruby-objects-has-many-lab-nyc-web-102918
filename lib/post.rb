
class Post
  attr_accessor :title, :author
  @@all=[] #class variable set to an array

  def initialize(title)  #  is initialized with an argument of a title
    @title = title
    @@all << self     #pushes new instances into a class variable called @@all upon initialization
  end

  def author_name
    # #author
    #   belongs to an author
    # #author_name
    #   knows the name of its author
    #   returns nil if the post does not have an author

    if @author == nil
      return nil
    else
      @author.name
    end
  end

  def self.all #is a class method that returns an array of all post instances that have been created
    @@all
  end
end
