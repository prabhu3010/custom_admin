class DocDetails < ActiveRecord::Base
  attr_accessible :validity_date, :doc_code, :raw_data,:document_id 
  belongs_to :document, :touch => true

  validates :document_id , presence: true
  validates :validity_date, presence: true
  # validates :doc_code , presence: true
  validates :raw_data , presence: true
  validates_format_of :doc_code, :with => /^([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})$/, :message => "is not Valid", :if => :is_pan_card?

  def is_pan_card?
  	if self.document
    self.document.document_type == 1
  	end
  end


end
