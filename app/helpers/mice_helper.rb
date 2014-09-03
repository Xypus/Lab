module MiceHelper

  def link_if(el)
    if el.nil?
      "Brak"
    else
      if el.is_a?(Staining)
        link_to el.staining_date, staining_path(el.id)
      else
        link_to el.starting_date, culture_path(el.id)
      end
    end
  end
end
