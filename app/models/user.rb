class User < ApplicationRecord
  has_many :starts, foreign_key: :author_id, dependent: :destroy
  has_many :clusters, foreign_key: :user_id, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         Roles = [ :admin, :default ]

         def is?( requested_role )
           self.role == requested_role.to_s
         end
end
