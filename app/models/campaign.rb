class Campaign < ActiveRecord::Base
  belongs_to :shop
  # add validations for data fields
end
