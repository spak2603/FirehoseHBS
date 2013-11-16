class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|   
# creating a database table. table is named pics
			t.string :emotion
			#in the sheet we're creating, create a field "emotion" that takes in strings
			t.text :learned
			# text allows you to type in more things. string is limited to 250 chars
			t.integer :lesson
      t.timestamps
    end
  end
end
