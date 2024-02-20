class Expense < ApplicationRecord
  validates :expense_item, presence: { message: "Field is required" }
  validates :amount,
            presence: { message: "Field is required" },
            numericality: { message: "Must be a number between 0 and 9,999,999,999,999.99", greater_than: 0, less_than_or_equal_to: 9999999999999.99 }
  before_save :set_default_date

  private

  def set_default_date
    self.date = Date.current if date.nil?
  end
end
