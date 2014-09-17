module ApplicationHelper
	 def get_course
    Category.all.collect {|course| [course.itemname, course.id]}
  end
end
