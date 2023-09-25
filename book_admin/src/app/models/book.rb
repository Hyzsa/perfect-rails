class Book < ApplicationRecord
  scope :costly, -> { where("price > ?", 3000) }
  scope :written_about, ->(theme) { whwre("name like ?", "%#{theme}%") }

  belongs_to :publisher
end
