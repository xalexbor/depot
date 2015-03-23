class Product < ActiveRecord::Base
  validates :name,:description,:image_url,presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :name, uniqueness: true

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item


  private
    def ensure_not_referenced_by_any_line_item
        if line_items.epmty?
          return true
        else
          errors.add(:base, "Products exists")
          return false
        end
    end
end
