class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x240.png?%20C/O%20https://placeholder.com/"
    self.thumb_image ||= "https://via.placeholder.com/300x120.png?%20C/O%20https://placeholder.com/"
  end
end
