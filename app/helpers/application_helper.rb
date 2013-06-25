module ApplicationHelper

  def option_checked?(instance, method, option)
    return nil if instance.send(method).nil?
    instance.send(method).include?(option)
  end

  def get_custom_string_from_options(instance, method, options)
    return nil if instance.send(method).nil?
    values = instance.send(method).select { |value| !options.include?(value) }
    values.first
  end
end
