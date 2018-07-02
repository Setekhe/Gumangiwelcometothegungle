class Idea < ApplicationRecord
  validates :idea_title, presence: true,
                   length: { minimum: 3 }
  validates :details, presence: true,
                   length: { minimum: 10 }

  def formatted_details
    if details.chars.count > 50
      details[0..50] + '...'
    else
      details
    end
  end
end
