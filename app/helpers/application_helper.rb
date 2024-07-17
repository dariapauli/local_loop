module ApplicationHelper
  def age_group_to_string(event)
    event.age_group.to_s.gsub("_", " ").capitalize
  end
end
