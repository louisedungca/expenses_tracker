class Expense < ApplicationRecord
  validates :expense_item, presence: { message: "Field is required" }
  validates :amount, presence: { message: "Field is required" }
  before_save :set_default_date

  private

  def set_default_date
    self.date = Date.current if date.nil?
  end
end
