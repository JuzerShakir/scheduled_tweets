class TwitterAccount < ApplicationRecord
  belongs_to :user
  has_many :twitter_accounts
  validates :username, uniqueness: true
end
