class Customer < ActiveRecord::Base
  has_many :sale_reciepts
  has_many :speedboats, through: :sale_reciepts

  validates :name, presence: true
end
