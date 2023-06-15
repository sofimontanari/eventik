class Estimation < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :delivery_date, presence: true
  validates :status, acceptance: { accept: ['Pendiente', 'Aceptada', 'Rechazada','Cotizada por Proveedor', 'En Negociación', 'Suspendida'] }
end
