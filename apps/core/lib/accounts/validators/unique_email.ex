defmodule Accounts.Validators.UniqueEmail do
  use Vex.Validator

  def validate(_value, _context) do
    # check for email uniqueness
    :ok
  end
end
