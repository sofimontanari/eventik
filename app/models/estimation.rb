class Estimation < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_one :review, dependent: :destroy
  validates :delivery_date, presence: true
  validates :status, acceptance: { accept: ['Pendiente', 'Aceptada', 'Rechazada','Cotizada por Proveedor', 'En Negociación', 'Suspendida'] }
end
