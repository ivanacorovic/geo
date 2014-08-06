class Transaction < ActiveRecord::Base
  belongs_to :company
  scope :latest, -> {where(:created_at => (Time.now - 30.minutes)..Time.now).order('created_at DESC')}
end
