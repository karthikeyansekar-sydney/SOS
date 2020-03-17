class EmployeesController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @users = Employee.all
  end

  def new
    @user = Employee.new
  end

  def create
    @user = Employee.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params

    params.require(:employee).permit(:name, :email, :password, :tfnnumber)
  end
end
