class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.column :name, 		:string
      t.column :email, 		:string
      t.column :phone, 		:integer
      t.column :message,        :string
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
