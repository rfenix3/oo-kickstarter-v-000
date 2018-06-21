class Project
  attr_accessor :title
  attr_reader :backers # belongs to backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def title
    @title
  end
  
  def add_backer(backer)
    self.backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)

  end
  
  def backers=(backer)  #belongs to backers
    @backers = backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  
  end
  
end