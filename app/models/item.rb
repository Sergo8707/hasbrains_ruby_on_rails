class Item < ActiveRecord::Base
  attr_accessible :price, :name, :real, :weight, :description

  validates :price, numericality: {greater_than: 0, allow_nil: true}
  validates :name, :description, presence: true

  validates :name, presence: true

  after_initialize { } #Item.new; Item.first
  after_save       { } #Item.save; Item.create; item.update_attributes
  after_create     { }
  after_update     { }
  after_destroy    { } #item.destroy


end
