class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  SERVICES = ["Fotografía", "Catering", "Espacios", "Entretenimiento", "Invitaciones & Decoración", "Disfraces & Accesorios" ]
  has_many_attached :photos
  has_many :event_types
  has_many :events
  has_many :estimations
  has_many :reviews, through: :estimations
  validates :business_name, :address, :description, :service_type, presence: true, if: :supplier_true?
  # validates_inclusion_of :service_type, in: SERVICES, if: :supplier_true?

  private

  def supplier_true?
    supplier == true
  end
end
