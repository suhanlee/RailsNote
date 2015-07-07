class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :subject
      t.text :contents

      t.timestamps null: false
    end
  end
end
