class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string      :plan_name,           null: false
      t.text        :content,             null: false
      t.integer     :price,               null: false
      t.references  :hotel,               null: false, foreign_key: true
      t.references  :room,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
