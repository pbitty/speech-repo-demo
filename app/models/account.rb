class Account < ActiveRecord::Base
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

  def name
    email
  end
end