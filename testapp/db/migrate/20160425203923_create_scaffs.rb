class CreateScaffs < ActiveRecord::Migration
  def change
    create_table :scaffs do |t|
      t.text :article

      t.timestamps null: false
    end
  end
end
