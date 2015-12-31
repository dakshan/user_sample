class ProjectsController < ApplicationController

  # GET /projects
  def index
    @projects = Project.all
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = Project.new(user_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /projects/1

  def update
    respond_to do |format|
      if @project.update(user_params)
        format.html { redirect_to @project, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'User was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @user = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:project).permit(:name)
    end
end
