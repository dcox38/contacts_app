class Group < ApplicationRecord
  has_many :contacts, through: :contact_group
  has_many :contact_groups
end
