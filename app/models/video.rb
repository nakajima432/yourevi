class Video < ApplicationRecord
  validates :title, :youtuber_name, :url, :detail, presence: true
  belongs_to :user
end