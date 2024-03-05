class TasksController < ApplicationController
  def index
    @tasks = Task.all
end


def show
  @task = task.find(params[:id])
end


def new
  @task = task.new (task_params)

  @task.save
  redirect_to_task_path(@task)
end


def destroy
  @task.destroy
  redirect_to task_path, status: :see_other
  end
end
