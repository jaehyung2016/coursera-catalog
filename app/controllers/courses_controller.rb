class CoursesController < ApplicationController
  def list
  end

  def debug
#    render plain: 'hello'
    render inline: "<%= request.url.inspect %>"
  end
end
