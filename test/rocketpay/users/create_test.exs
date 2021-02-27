defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase

  alias Rocketpay.User
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "when all params are valid, returns an user" do
      params = %{
        name: "Newton",
        password: "123456",
        nickname: "peixoto",
        email: "newt@peixoto.com.br",
        age: 21
      }

      {:ok, %User{id: user_id}} = Create.call(params)

      user = Repo.get(User, user_id)

      assert %User{name: "Newton", age: 21, id: ^user_id} = user

    end

    test "when there is invalid param, returns an error" do
      params = %{
        name: "Newton",
        nickname: "peixoto",
        email: "newt@peixoto.com.br",
        age: 21
      }

      {:error, changest} = Create.call(params)

      expected_response = %{password: ["can't be blank"]}

      assert errors_on(changest) == expected_response

    end
  end

end
