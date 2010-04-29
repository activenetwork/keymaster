class HomeController < ApplicationController
  
  def index
    @projects = Project.all
    @users = User.all
  end

  
  def add_project
    @project = Project.new(params[:project])
    unless @project.save
      render :nothing => true
    end
  end
  

  def add_user
    @user = User.new(params[:user])
    unless @user.save
      render :nothing => true
    end
  end
  

end
