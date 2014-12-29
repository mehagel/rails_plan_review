class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :engineer_estimate
      t.string :plans
      t.string :url
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.timestamps
    end
  end
end
