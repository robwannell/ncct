class Raffleitem < ActiveRecord::Base
  belongs_to :raffle
   default_scope  {order 'itemnumber ASC'}
end
