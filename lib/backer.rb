# class Backer
#
# attr_accessor :name
#
#   def initialize(name)
#     @name = name
#     @backed_project = []
#   ends
#
#   def back_project(project)
#     @backed_project << project
#   end
#
# end

class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    backed_projects << project
    project.backers << self
  end

end
