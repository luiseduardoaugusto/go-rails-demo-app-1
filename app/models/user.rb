# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'debe ser un correo valido' }
end
