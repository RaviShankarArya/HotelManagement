module ApplicationHelper
	 def get_course
    Category.all.collect {|course| [course.itemname, course.id]}
  end

  def get_items
     Itemtype.all.collect {|items| [items.itemtypename, items.id]}
  end
end
