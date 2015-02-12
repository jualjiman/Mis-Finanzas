class Spend < ActiveRecord::Base
  belongs_to :category
  validates :amount, presence: true
end
