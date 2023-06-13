class Event < ApplicationRecord
  belongs_to :user
  belongs_to :event_type
  has_many :estimations
  validates_presence_of :name, :address, :date
  validates :status, acceptance: { accept: ['En proceso', 'Cancelado', 'Finalizado'] }
  before_create :status
  private

  def set_status
    if date > Date.today
      self.status = 'Finalizado'
    else
      self.status = 'En proceso'
    end
  end
end
