class Item < ActiveRecord::Base
  attr_accessible :price, :name, :real, :weight, :description

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  after_initialize { puts "initialize" } # Item.new, Item.create
  after_save       { puts "save" } # Item.create, Item.update, Item.update_attributes
  after_create     { puts "create" }
  after_update     { puts "update" }
  after_destroy    { puts "destroy" } # item.destroy

 end
