class Comment < ApplicationRecord
  validates :name, presence: true,
  validates :details, presence: true,
                   length: { minimum: 6 }
  belongs_to :idea
end
