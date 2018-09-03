# class Project
#
# attr_accessor :title
#
#   def initialize(title)
#     @title = title
#     @backer = []
#   end
#
#   def add_backer(backer)
#     @backer << backer
#   end
#
# end


class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
  end

end
