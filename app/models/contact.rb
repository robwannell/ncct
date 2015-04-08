class Contact 
  
  include ActiveModel::Model

  attr_accessor :name, :email, :body

  validates :name, presence: true
  validates :email, presence: true
  validates :body, presence: true
  
  validates :email, :email_format => {:message => 'Please check your entry, this doesn\'t seem like a valid address'}
  
  
end

