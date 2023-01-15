class User < ApplicationRecord
    has_secure_password

has_many :bookings
has_many :events, through: :bookings

    validates :email, uniqueness: true

    before_create :set_user_role

ROLES = %w{admin client}

def jwt_payload
    super
end 

ROLES.each do |role_name|
  define_method "#{role_name}?" do
    role == role_name
  end
end

def set_user_role
  self.role = "client"
end

end
