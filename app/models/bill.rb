class Bill < ApplicationRecord
  has_many :items
  has_many :customers
  accepts_nested_attributes_for :customers, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
end
