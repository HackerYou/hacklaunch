class CreateSignUps < ActiveRecord::Migration
  def change
    create_table :sign_ups do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
