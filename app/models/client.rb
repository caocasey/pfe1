class Client < ActiveRecord::Base
    has_one :installation_datum
    has_one :preference
    has_one :social_datum
    has_one :payment_datum
    has_one :visit
end
