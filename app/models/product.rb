class Product < ActiveRecord::Base
  validates_presence_of :title, message: "Please enter a title"
  validates_presence_of :description, message: "Please enter a description"
  validates_presence_of :price, message: "Please enter the price"

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  def self.latest
    Product.order(:updated_at).last
  end

  private
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

end
