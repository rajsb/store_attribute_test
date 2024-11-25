# == Schema Information
#
# Table name: shops
#
#  id         :bigint           not null, primary key
#  settings   :jsonb            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Shop < ApplicationRecord
  store_attribute :settings, :send_welcome_email, :boolean, default: true
  store_attribute :settings, :send_deals_newsletter, :boolean, default: true
end
