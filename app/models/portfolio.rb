class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :delete_all
  accepts_nested_attributes_for :technologies,reject_if:lambda{|attrs| attrs['name'].blank?}

  validates_presence_of :title, :body

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  scope:react, ->{where(subtitle:"React")}
  scope:ruby, ->{where(subtitle:"Ruby")}

end
