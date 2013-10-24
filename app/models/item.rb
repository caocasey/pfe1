class Item < ActiveRecord::Base
    belongs_to :store
    belongs_to :selection
end
