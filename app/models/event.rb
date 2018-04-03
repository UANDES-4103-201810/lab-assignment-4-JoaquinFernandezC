class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validate :start_date_after_creation
  validate :is_posible_to_create
  def start_date_after_creation
    if DateTime.now.to_date >= start_date
      errors.add(:start_date, 'has to be after creation time')
    end
  end
  def is_posible_to_create
    if place_id
      if start_date
        errors.add()
      end
    end
  end

end
