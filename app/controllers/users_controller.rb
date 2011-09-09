class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @title = 'Sign up'
  end
  
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    user && user.has_pasword?(submitted_password) ? user : nil
  end

end
