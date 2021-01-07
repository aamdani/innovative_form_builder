class User < ApplicationRecord
  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :validatable

  has_person_name
  has_many :custom_forms, dependent: :destroy # real world, soft delete per reqs
  has_many :submissions, dependent: :destroy # real world, soft delete per reqs

  validates :email, presence: true
  validates :password, presence: true, length: {in: Devise.password_length}, if: :password_required?
end
