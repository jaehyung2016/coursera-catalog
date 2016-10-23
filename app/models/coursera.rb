class Coursera
  include HTTParty

  base_uri 'https://api.coursera.org/api/courses.v1'

  COUNT = 5
  default_params limit: COUNT, q: :search, fields: "description,photoUrl"

  def initialize page, keyword
    @hash = {}
    if page > 1
      @hash[:start] = (page - 1) * COUNT
    end
    if keyword
      @hash[:query] = keyword
    end
  end
  
  def get_courses path = ''
    response = self.class.get(path, query: @hash)
    if response.success?
      return response if /localhost/ =~ path
      return response["elements"], response["paging"]["total"]
    else
      raise StandardError, response.body, caller
    end
  end
end
