class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
    	t.string :name
    	t.integer :document_type

    	t.references :user
      t.timestamps
    end
  end
end
