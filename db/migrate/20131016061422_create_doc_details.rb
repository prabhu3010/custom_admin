class CreateDocDetails < ActiveRecord::Migration
  def change
    create_table :doc_details do |t|
			t.date :validity_date
    	t.string :doc_code
    	t.string :raw_data

    	t.references :document
      t.timestamps
    end
  end
end
