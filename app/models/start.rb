class Start < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :author_id
  has_many :associations
  has_many :clusters, through: :associations
end
