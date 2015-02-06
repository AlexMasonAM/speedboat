class Speedboat < ActiveRecord::Base
  has_many :sale_reciepts

  
  validates :model_number, presence: true
end
