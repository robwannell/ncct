class SuccessStory < ActiveRecord::Base
  
  has_attached_file :avatar, :styles => { :medium => "800x600>", :thumb => "300x200>" }, :default_url => "missing.png"
    # Validate content type
    validates_attachment_content_type :avatar, :content_type => /\Aimage/
    # Validate filename
    validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /JPE?G\Z/]
    
     default_scope  {order 'ranking ASC'}
     
     
     validates :name, presence: true
     validates :title, presence: true
     validates :content, presence: true
     validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 1.megabytes
     
end
