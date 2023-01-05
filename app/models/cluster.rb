class Cluster < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  has_many :associations
  has_many :starts, through: :associations
end
