class EventType < ApplicationRecord
  TYPES = ["Cumpleaños Infantiles", "Cumpleaños Adultos", "Despedidas", "Casamientos", "Bautismos", "Baby Showers", "Empresariales", "15 Años", "Personalizados" ]
  belongs_to :user
  has_many :events
  validates_presence_of :name
  validates_inclusion_of :name, in: TYPES
end
