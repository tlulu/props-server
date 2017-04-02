class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :role
    	t.integer :major
    	t.integer :minor
    	t.string :payment_client_id
 
      t.timestamps
    end
  end
end