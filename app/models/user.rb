class User < ApplicationRecord
  validates :user_name, presence: true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 8 }
  validate :password_meets_criteria

  def password_meets_criteria
    errors.add(:password, message: "Password must contain one uppercase letter, one lowercase letter and one number.") unless password.match?(/[A-Z]/) && password.match?(/[a-z]/) && password.match?(/[0-9]/)
  end
end
