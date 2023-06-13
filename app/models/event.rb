class Event < ApplicationRecord
  belongs_to :user
  belongs_to :event_type
  has_many :estimations
  validates_presence_of :name, :address, :date
  validates :date, presence: true
  validates :status, acceptance: { accept: ['En proceso', 'Cancelado', 'Finalizado'] }
  validate :check_date

  private

  def check_date
    if date <= Date.today
      errors.add(:date, "La fecha de tu evento debe ser superior a la actual")
    end
  end

end
