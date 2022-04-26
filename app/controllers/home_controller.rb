class HomeController < ApplicationController
  def about
    @project = Project.find_by_name("Keaton-Clark")
    dir = "app/assets/repos/" + @project.name
    @readme = File.open(dir + "/README.md").read
  end
end
