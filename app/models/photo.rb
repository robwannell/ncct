class Photo < ActiveRecord::Base
  belongs_to :album
  
  has_attached_file :avatar, :styles => { :display => "750x600>", :thumb => "150x150>", :medium => "300x300" }, :default_url => "missingproduct.png"
    # Validate content type
    validates_attachment_content_type :avatar, :content_type => /\Aimage/
    # Validate filename
    validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /JPEG/, /JPG/]
    
   
    validates :avatar, presence: true
    
    validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 1.megabytes
end
