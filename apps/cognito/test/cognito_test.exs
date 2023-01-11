defmodule CognitoTest do
  use ExUnit.Case
  doctest Cognito

  test "greets the world" do
    assert Cognito.hello() == :world
  end
end
