class Book < ApplicationRecord
  belongs_to :csv, optional: true

  validates :uuid, presence: true, uniqueness: true
end
