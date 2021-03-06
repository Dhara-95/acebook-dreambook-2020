class Post < ApplicationRecord
  belongs_to :user
  belongs_to :wall
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  delegate :email, :to => :user
  validates :message, presence: true

  end
