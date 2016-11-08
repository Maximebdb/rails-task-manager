class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index # GET /tasks
    @tasks = Task.all
  end

  def show # GET /tasks/:id
  end

  def new # GET /tasks/new
    @task = Task.new
  end

  def create # POST /tasks
    @task = Task.new(params[:task])
    @task.save
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit # GET /tasks/:id/edit
  end

  def update # PATCH /tasks/:id
    @task.update(params[:task])
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def destroy # DELETE /tasks/:id
    @task.destroy
  end

  private

  def set_task
      @task = Task.find(params[:id])
  end
end
