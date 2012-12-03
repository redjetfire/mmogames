module CategoriesHelper

  def status_tag(category)
    if @category.released == "Final"
      content_tag(:span, @category.released, :class => "final")
    elsif @category.released == "Open Beta"
      content_tag(:span, @category.released, :class => 'openbeta')
    elsif @category.released == "Close Beta"
      content_tag(:span, @category.released, :class => 'closebeta')
    elsif @category.released == "In Development"
      content_tag(:span, @category.released, :class => 'development')
    end
  end

end
