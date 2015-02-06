class Speedboat < ActiveRecord::Base
  has_many :sale_reciepts
  has_many :customers, through: :sale_reciept
  
  validates :model_number, presence: true
end
