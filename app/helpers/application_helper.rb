module ApplicationHelper

  def option_checked?(instance, method, option)
    instance.send(method).include?(option)
  end

  def get_custom_string_from_options(instance, method, options)
    values = instance.send(method).select { |value| !options.include?(value) }
    values.first
  end
end
