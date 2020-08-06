class Post < ApplicationRecord
  belongs_to :user
  belongs_to :wall
  has_many :comments, dependent: :destroy

  delegate :email, :to => :user
  validates :message, presence: true
  
  end
