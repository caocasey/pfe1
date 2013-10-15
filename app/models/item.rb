class Item < ActiveRecord::Base
    belongs_to :store
    belong_to :selection
end
