class Raffle < ActiveRecord::Base
  
  has_attached_file :avatar, :styles => { :medium => "750x600>", :thumb => "300x300>" }, :default_url => "missingproduct.png"
    # Validate content type
    validates_attachment_content_type :avatar, :content_type => /\Aimage/
    # Validate filename
    validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /JPE?G\Z/]
    
    
  has_many :raffleitems, dependent: :destroy
   default_scope  {order 'id DESC'}
   
   validates :name, presence: true
   
   
end
