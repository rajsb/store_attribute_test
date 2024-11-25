class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  self.store_attribute_unset_values_fallback_to_default = true
end
