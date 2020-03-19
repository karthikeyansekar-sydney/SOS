class Order < ApplicationRecord
  belongs_to :employee, :optional => true
end
