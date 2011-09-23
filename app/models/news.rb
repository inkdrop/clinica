class News < ActiveRecord::Base
  belongs_to :user
  
  cattr_reader :per_page
  @@per_page = 3
  
  has_attached_file :photo,
                    :default_url => "/images/default_recipe_picture.png",
                    :styles => {
                      :small => "90x90#",
                      :medium => "210x150>",
                      :large => "330x230>"},
                    :default_style => :medium
  
  validates_attachment_content_type :photo, :content_type => ["image/jpeg", "image/png", "image/gif"],
                                            :message => ": o arquivo deve estar no formato jpeg, png ou gif."
                                            
  validates_attachment_size :photo, :less_than => 300.kilobytes,
                                    :message => ": o arquivo deve ser menor que 300kb."
  
  def to_s
    self.title
  end
end
