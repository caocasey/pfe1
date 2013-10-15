class User < ActiveRecord::Base
  has_one :parse_datum
end
