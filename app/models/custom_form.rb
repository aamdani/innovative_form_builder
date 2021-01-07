class CustomForm < ApplicationRecord
  belongs_to :user
  has_many :form_elements, dependent: :destroy
  has_many :submissions, dependent: :destroy

  accepts_nested_attributes_for :form_elements, allow_destroy: true
end
