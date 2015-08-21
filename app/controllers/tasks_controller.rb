class TasksController < ApplicationController
  def create
  end

  def show
  end

  def edit
  end

  def destroy
    @user = User.find(params[:user_id])
    @task = @user.tasks.find(params[:id])

    if @task.destroy
      flash[:notice] = "Task was removed."
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

end
