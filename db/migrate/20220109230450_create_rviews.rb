class CreateRviews < ActiveRecord::Migration[5.2]
  def change
    create_table :rviews do |t|
      t.string:title
      t.string:body
      t.string:image_id
      t.integer:customer_id
      
      t.timestamps
    end
  end
end
