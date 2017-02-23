class Item < ActiveRecord::Base

  has_many :positions
  has_many :carts, through: :positions
  has_many :comments, as: :commentable

  attr_accessible :price, :name, :real, :weight, :description, :image
  attr_reader :image_crop_date

  validates :price, :name, presence: true

  mount_uploader :image, ImageUploader

  def crop_image!(c)
    c.each { |k,v| c[k] = v.to_i}
    p c
    @image_crop_data = c
    image.recreate_versions!
  end

  def save_image

  end


end
