class Product < ActiveRecord::Base
  validates_presence_of :title, message: "Please enter a title"
  validates_presence_of :description, message: "Please enter a description"
  validates_presence_of :price, message: "Please enter the price"
end
