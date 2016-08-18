class DateInFutureValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		if value !=nil 
			if !value.future?
				record.errors[attribute] <<" must be in the future"
			end
		end
	end
end 
class Event < ApplicationRecord

include ActiveModel::Validations 
  belongs_to :user
  has_many :comments, :dependent=> :destroy
  validates :date, presence: true, dateInFuture: true
  validates :name, :location, presence: true

end
