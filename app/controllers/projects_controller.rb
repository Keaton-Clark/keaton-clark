class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]

  # GET /projects or /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1 or /projects/1.json
  def show
    dir = "app/assets/repos/" + @project.name
    FileUtils.remove_dir(dir) if File.directory?(dir)
    @git = Git.clone(@project.url, dir)
    @readme = File.open(dir + "/README.md").read
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
end
