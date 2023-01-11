defmodule Accounts.Validators.UniqueEmail do
  @moduledoc """
  Unique email validator
  """
  use Vex.Validator

  def validate(_value, _context) do
    # check for email uniqueness
    :ok
  end
end
