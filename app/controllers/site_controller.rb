class SiteController < ApplicationController
  def start
    @students = Student.all
  end
end
