class Account < ActiveRecord::Base
  model_stamper

  # Roles determining access level
  # TODO Write role validity check (either in validation or in attr writer)
  ROLES =
      [:sys_admin,
       :speech_admin,
       :speech_creator,
       :interpreter]

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # ::trackable, registerable, :recoverable, :rememberable
  devise :database_authenticatable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, as: :admin

  has_many :interpretations, foreign_key: :creator_id, inverse_of: :creator

  validates :role, presence: true

  def name
    email
  end

  def role=(role)
    # TODO Figure out best practice for handling ActiveRecord attribute conversions
    # (is it even necessary?)
    raise NameError, "Invalid role: #{role}" unless role.blank? || ROLES.include?(role.to_sym)
    super(role)
  end

  def role
    super.try(:to_sym)
  end

  def is_sys_admin?
    role === :sys_admin
  end

  def to_s
    name
  end
end