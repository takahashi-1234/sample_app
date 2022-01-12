class AddSakeTypeToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :sake_type, :string
  end
end
