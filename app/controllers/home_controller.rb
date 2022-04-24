class HomeController < ApplicationController
  def about
    @aboutme = File.open("app/views/home/ABOUTME.md").read
  end
end
