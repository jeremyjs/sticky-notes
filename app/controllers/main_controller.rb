class MainController < ApplicationController
  def dashboard
    puts "params: #{params.inspect}"
    person = params[:search][:name] if params[:search]
    projects = params[:project_id]
    puts "person: #{person.inspect}"
    puts "projects: #{projects.inspect}"
    if person
      @projects = find_all_projects_by_person(person)
    elsif projects
      @projects = Project.find(projects)
    else
      @projects = Project.all
    end
  end

  def settings
  end

  def landing
    if current_admin
      redirect_to action: :dashboard
    elsif User.exists?(email: 'sticky-notes@example.com')
      sign_in(:user, 'example')
      redirect_to action: :dashboard
    end
  end

  private
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

  def find_all_projects_by_name(projects)
    matching_projects = []
    people = Person.where("name like '#{name}'")
    Project.find_each do |project|
      people.each do |person|
        if project.people.include?(person)
          matching_projects << project
          break
        end
      end
    end
    matching_projects
  end
end
