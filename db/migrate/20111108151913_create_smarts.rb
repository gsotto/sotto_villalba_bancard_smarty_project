class CreateSmarts < ActiveRecord::Migration
  def self.up
    create_table :smarts do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price, {:precision => 8, :scale => 2}

      t.timestamps
    end
  end

  def self.down
    drop_table :smarts
  end
end

