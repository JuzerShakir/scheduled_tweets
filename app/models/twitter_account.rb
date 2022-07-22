class TwitterAccount < ApplicationRecord
  belongs_to :user
  has_many :twitter_accounts
  has_many :tweets
  validates :username, uniqueness: true
end
