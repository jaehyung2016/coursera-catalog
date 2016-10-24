class CoursesController < ApplicationController
  def list
    @page = params[:page]
    @page = @page ? @page.to_i : 1

    @keyword = params[:keyword]

    coursera = Coursera.new @page, @keyword
    @courses, @total = coursera.get_courses
  end

  def debug
#    render plain: 'hello'
    render inline: "<%= request.url.inspect %>"
  end
end
