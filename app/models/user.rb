class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_many :pre_training_reviews
  has_many :enrolments
  has_many :answers
  has_many :questions, through: :answers
  before_create :set_default_role
  validates :role, presence: true

  ROLES = %w[student moderator admin superadmin]
	def role?(base_role)
	  ROLES.index(base_role.to_s) <= ROLES.index(role)
	end

  private
  def set_default_role
    self.role ||= 'student'
  end

end
