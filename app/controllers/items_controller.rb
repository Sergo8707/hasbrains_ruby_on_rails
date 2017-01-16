class ItemsController < ApplicationController

  def index
    @items = Item.all
    render text: @items.map { |i| "#{i.name}: #{i.price}" }.join("<br/>")
  end

  def create
    @item = Item.create(params[:item])
    p params
    render text: "#{@item.id}: #{@item.name} (#{!@item.new_record?})"
  end

  private

end
