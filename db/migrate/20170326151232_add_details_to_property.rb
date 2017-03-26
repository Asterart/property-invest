class AddDetailsToProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :street, :string
    add_column :properties, :country, :string
    add_column :properties, :l_desc, :text
  end
end
