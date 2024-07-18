module ApplicationHelper
  def age_group_to_string(event)
    event.age_group.to_s.gsub("_", " ").capitalize
  end

  def format_name(name)
    # Matches one or more word characters followed by whitespace and any characters
    match = name.match(/(\w+)/)
    return name unless match # Return original name if no match

    # Access captured groups (first and last name)
    last_name = match.captures

    # Rebuild the name with first name and initial of last name
    "#{last_name[0]}."
  end
end
