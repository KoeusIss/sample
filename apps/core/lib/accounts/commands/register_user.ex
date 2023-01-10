defmodule Accounts.Commands.RegisterUser do
  alias Accounts.Validators.UniqueEmail
  alias __MODULE__

  use ExConstructor
  use Vex.Struct

  defstruct [
    :uuid,
    :email,
    :password,
    :hashed_password
  ]

  validates(:email,
    presence: [message: "can't be empty"],
    format: [with: ~r/\S+@\S+\.\S+/, allow_nil: true, allow_blank: true, message: "is invalid"],
    string: true,
    by: &UniqueEmail.validate/2
  )

  validates(:password,
    presence: [message: "can't be empty"],
    string: true
  )

  def hash_password(%RegisterUser{password: password} = user) do
    %RegisterUser{
      user
      | password: nil,
        hashed_password: Bcrypt.add_hash(password).password_hash
    }
  end

  def set_uuid(%RegisterUser{uuid: nil} = user, uuid) do
    %RegisterUser{
      user
      | uuid: uuid
    }
  end

  def downcase_email(%RegisterUser{email: email} = user) do
    %RegisterUser{
      user
      | email: String.downcase(email)
    }
  end
end
