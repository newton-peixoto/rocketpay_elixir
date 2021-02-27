defmodule RocketpayWeb.UserView do
  alias Rocketpay.User
  def render("create.json", %{user: %User{account: account, id: id, name: name, nickname: nickname}}) do
    %{
      message: "User Created",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        account: %{
          id: account.id,
          balance: account.balance
        }
      }
    }
  end
end
