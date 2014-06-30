class MainController < ApplicationController
  def dashboard
    @projects = Project.all
  end
end
