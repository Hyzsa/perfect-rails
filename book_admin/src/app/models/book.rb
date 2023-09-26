class Book < ApplicationRecord
  enum sales_status: {
    reservation: 0, # 予約受付
    now_on_sale: 1, # 販売中
    end_of_print: 2, # 販売終了
  }

  scope :costly, -> { where("price > ?", 3000) }
  scope :written_about, ->(theme) { whwre("name like ?", "%#{theme}%") }

  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors
end
