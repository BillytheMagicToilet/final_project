module ApplicationHelper

  def alert_class_type(name)

    # binding.pry

    danger_names = ['alert', :alert]

    if danger_names.include?(name)
      return 'alert-danger'
    else
      return 'alert-warning'
    end

  end
  
end
