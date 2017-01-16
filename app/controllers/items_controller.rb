class ItemsController < ApplicationController

  def index
    @items = Item.all
    render html: @items.map { |i| "#{i.name}: #{i.price}"}.join("<br/>")
  end
end
