class SiteController < ApplicationController
  def start
    @library = Library.find(1)
    @students = Student.all
  end

end
