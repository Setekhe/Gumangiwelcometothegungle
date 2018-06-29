class Idea < ApplicationRecord
  validates :idea_title, presence: true,
                   length: { minimum: 3 }
  validates :details, presence: true,
                   length: { minimum: 10 }
end
