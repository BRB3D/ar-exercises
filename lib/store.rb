
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :appareal_validator

  def appareal_validator
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Must have Men's apparel or Women's apparel")
      errors.add(:womens_apparel, "Must have Men's apparel or Women's apparel")
    end
  end
end
