class Portfolio < ApplicationRecord
  includes Placeholder
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '240')
    self.thumb_image ||= Placeholder.image_generator(height: '300', width: '120')
  end
end
