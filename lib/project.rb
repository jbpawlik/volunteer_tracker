class Project
  attr_reader :id
  attr_accessor :title 

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  # def save
  #   result = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
  #   @id = result.first().fetch("id").to_i
  # end

  def save
    saved_projects = DB.exec("SELECT * FROM projects;").values
    sameTitle = false
    saved_projects.each.with_index do |element, index|
      if saved_projects[index][0].include?("#{title}")
        sameTitle = true
      end
    end
      if sameTitle != true
        result = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
          @id = result.first().fetch("id").to_i
      end
  end

  def ==(project_to_compare)
    self.title == project_to_compare.title
  end

  def self.all
    saved_projects = DB.exec("SELECT * FROM projects;")
    projects = []
    saved_projects.each() do |project|
      title = project.fetch("title")
      id = project.fetch("id").to_i
      projects.push(Project.new({:title => title, :id => id}))
    end
    projects
  end

  def self.find(id)
    project = DB.exec("SELECT * FROM projects WHERE id = #{id};").first
    if project
      title = project.fetch("title")
      id = project.fetch("id").to_i
      Project.new({:title => title, :id => id})
    else
      nil
    end
  end

  def update(attributes)
    @title = attributes.fetch(:title)
    DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{@id};")
  end

  def delete
    DB.exec("DELETE FROM projects WHERE id = #{@id};")
    DB.exec("DELETE FROM volunteers WHERE project_id = #{@id};")
  end

  def volunteers
    Volunteer.find_by_project(self.id)
  end

end