class Start < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :author_id
  has_many :associations, foreign_key: :start_id, dependent: :destroy
  has_many :clusters, through: :associations, foreign_key: :start_id
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
