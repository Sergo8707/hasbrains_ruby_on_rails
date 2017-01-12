class Item < ApplicationRecord

  validates :price, numericality: {greater_than: 0, allow_nil: true}
  validates :name, :description, presence: true

  private

  def item_params
    params.require(:item).permit(:price, :name, :real, :weight, :description)
  end
end
