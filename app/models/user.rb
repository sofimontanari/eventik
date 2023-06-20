class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  SERVICES = ["Fotografía", "Catering", "Espacios", "Entretenimiento", "Invitaciones & Decoración", "Disfraces & Accesorios"]
  has_many_attached :photos
  has_many :event_types
  has_many :events
  has_many :estimations
  has_many :reviews, through: :estimations
  validates :business_name, :address, :description, :service_type, presence: true, if: :supplier_true?
  has_many_attached :photos
  has_one_attached :avatar
  # validates_inclusion_of :service_type, in: SERVICES, if: :supplier_true?

  def get_average
    @reviews = Review.joins(:estimation).where(estimations: { user_id: self.id })
    @suma_rating = 0
    @reviews.each do |review|
    @suma_rating += review.rating
    end
    @total_reviews = @reviews.size
    if @total_reviews != 0
      @promedio = (@suma_rating / @total_reviews).ceil
      else
      @promedio = "Este proveedor aún no tiene comentarios"
    end
  end

  private

  def supplier_true?
    supplier == true
  end
end
