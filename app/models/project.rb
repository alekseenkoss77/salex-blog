class Project < ActiveRecord::Base
  include Translatable

  acts_as_taggable
  
  has_attached_file :image, 
                    :styles => { :medium => "667x300>", :thumb => "100x100>", :vertical => "613x"}, 
                    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  enum status: [ :started, :complete, :progress ]

  enum role: [ :developer, :admin, :seo, :support ]
  
  default_scope -> { order(created_at: :desc) }

end
