class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def enum_name(enum)
    I18n.translate "enum.#{self.class.name.downcase}.#{enum.to_s.pluralize}.#{eval("self.#{enum}")}"
  end

  def self.enum_name(enum, value)
    I18n.translate "enum.#{self.name.downcase}.#{enum.to_s.pluralize}.#{value.to_s.downcase}"
  end

end
