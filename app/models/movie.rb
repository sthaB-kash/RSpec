class Movie < ApplicationRecord
  validates :title, presence: true, length: { in: 3..20 }
  validates :director, presence: true, length: { in: 5..25 }
  validates :rate, presence: true, length: { in: 1..5 }, numericality: { only_integer: true }

  def valid_rate
    rate.positive? && rate <= 5 ? true : false
  end
end
