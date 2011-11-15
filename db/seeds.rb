# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Smart.delete_all
Smart.create(
    :name => 'Samsung Galaxy S',
    :description => "The Samsung Galaxy is a smartphone...",
    :image_url => 'samsung-galaxy-s-box-small.jpg',
    :price => 210.50
)
Smart.create(
    :name => 'Samsung Galaxy TAB',
    :description => "The Samsung Galaxy is a TAB...",
    :image_url => 'samsung-galaxy-s-box-small.jpg',
    :price => 500.50
)
Smart.create(
    :name => 'BLACKBERRY TORCH',
    :description => "The Samsung Galaxy is a TAB...",
    :image_url => 'samsung-galaxy-s-box-small.jpg',
    :price => 500.50
)