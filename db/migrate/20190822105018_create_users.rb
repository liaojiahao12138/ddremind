class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :phonenum
      t.string :email
      t.string :resetat
      t.string :invitecode
      t.string :delfalg

      t.timestamps
    end
  end
end
