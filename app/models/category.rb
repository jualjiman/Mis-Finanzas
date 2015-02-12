class Category < ActiveRecord::Base
	has_many :spends, dependent: :destroy
	accepts_nested_attributes_for :spends
	validates :name, presence: true,
                    length: { minimum: 5 }
end
