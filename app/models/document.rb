class Document < ActiveRecord::Base
  attr_accessible :name, :document_type, :user_id

  has_one :doc_details
  belongs_to :user

  validates :user_id, presence: true
  def document_type_enum
  	[['pan','1'],['driving_license','2'],['voter_id','3']]
  end

  def self.doc_type
    [['pan','1'],['driving_license','2'],['voter_id','3']]
  end


end
