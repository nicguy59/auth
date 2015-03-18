class CreateCreateUsers < ActiveRecord::Migration
  def change
    create_table :create_users do |t|

      t.timestamps null: false
    end
  end
end
