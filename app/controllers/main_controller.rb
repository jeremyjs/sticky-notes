class MainController < ApplicationController
  def dashboard
    puts "params: #{params.inspect}"
    person = params[:search][:name] if params[:search]
    puts "person: #{person.inspect}"
    if person
      @projects = find_all_projects_by_person(person)
    else
      @projects = Project.all
    end
  end

  def settings
  end

  def find_all_projects_by_person(name)
    projects = []
    people = Person.where("name like '#{name}'")
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
