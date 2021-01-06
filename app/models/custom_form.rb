class CustomForm < ApplicationRecord
  belongs_to :user
  has_many :form_elements, dependent: :destroy
  has_many :submissions, dependent: :destroy
end
