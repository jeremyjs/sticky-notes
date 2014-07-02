class MainController < ApplicationController
  def dashboard
    if params[:search]
      @projects = find_all_projects_by_person(params[:search])
    else
      @projects = Project.all
    end
  end

  def find_all_projects_by_person(name)
    projects = []
    people = Person.where("name like 'i#{name}'")
    Project.find_each do |project|
      people.each do |person|
        if project.people.include?(person)
          projects << project
          break
        end
      end
    end
    projects
  end
end
