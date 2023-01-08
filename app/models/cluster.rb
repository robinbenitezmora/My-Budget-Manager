class Cluster < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  has_many :associations, foreign_key: :cluster_id, dependent: :destroy
  has_many :starts, through: :associations, foreign_key: :cluster_id, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  # validates :amount, presence: true, numericality: { greater_than: 0 }
end
