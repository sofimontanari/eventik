class Estimation < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :delivery_date, presence: true
  validates :status, acceptance: { accept: ['Pendiente', 'Confirmada', 'Rechazada', 'Negociar precio', 'Suspender'] }
end
