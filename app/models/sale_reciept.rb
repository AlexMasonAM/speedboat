class SaleReciept < ActiveRecord::Base
  belongs_to :customer
  belongs_to :speedboat
end
