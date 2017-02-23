class Item < ActiveRecord::Base

  has_many :positions
  has_many :carts, through: :positions
  has_many :comments, as: :commentable


  attr_reader :image_crop_date

  validates :price, numericality: { greater_that: 0, allow_nil: true}
  validates :name, presence: true

  mount_uploader :image, ImageUploader

  def crop_image!(c)
    c.each { |k,v| c[k] = v.to_i}
    p c
    @image_crop_data = c
    image.recreate_versions!
  end
end
