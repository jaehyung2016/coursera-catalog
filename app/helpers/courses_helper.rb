module CoursesHelper
  def prev_link page, keyword
    if page > 1
      output = "href='#{root_path}?page=#{page - 1}"
      if keyword
        output += "&keyword=#{keyword}"
      end
      output += "'"
      output.html_safe
    end
  end

  def next_link page, count_per_page, total, keyword
    unless last_page? page, count_per_page, total
      output = "href='#{root_path}?page=#{page + 1}"
      if keyword
        output += "&keyword=#{keyword}"
      end
      output += "'"
      output.html_safe
    end
  end

  def last_page? page, count_per_page, total
    (page * count_per_page) >= total
  end

  def helper_test
    "Hello, helper module"
  end
end
