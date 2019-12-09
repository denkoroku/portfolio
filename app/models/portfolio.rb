class Portfolio < ApplicationRecord
  has_many :technologies
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope:react, ->{where(subtitle:"React")}
  scope:ruby, ->{where(subtitle:"Ruby")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.main_image ||= "https://via.placeholder.com/350x200"
  end

end
