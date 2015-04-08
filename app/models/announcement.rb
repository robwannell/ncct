class Announcement < ActiveRecord::Base
  
  has_attached_file :avatar, :styles => { :medium => "750x600>", :thumb => "150x150>" }, :default_url => "missingproduct.png"
    # Validate content type
    validates_attachment_content_type :avatar, :content_type => /\Aimage/
    # Validate filename
    validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
    
    validates :title, presence: true
    validates :body, presence: true
   
    extend FriendlyId
    friendly_id :title, use: :slugged
    
    
end
