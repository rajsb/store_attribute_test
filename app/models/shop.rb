class Shop < ApplicationRecord
  store_attribute :settings, :send_welcome_email, :boolean, default: true
  store_attribute :settings, :send_deals_newsletter, :boolean, default: true
end
