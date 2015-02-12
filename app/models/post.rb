class Post < ActiveRecord::Base
  include Translatable

  acts_as_taggable
  
  has_attached_file :image, 
                    :styles => { :medium => "667x300>", :thumb => "100x100>" }, 
                    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :title, :meta_title, :body, :locale, presence: true

end
