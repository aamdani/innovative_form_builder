class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :custom_form
end
