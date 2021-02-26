defmodule RocketpayWeb.AccountsView do
  alias Rocketpay.Account
  def render("update.json", %{account: %Account{} = account}) do
    %{
      message: "Balance changed successfully",
      account: %{
        id: account.id,
        balance: account.balance
      }
    }
  end

  def render("transaction.json", %{transaction: %{to_account: to_account, from_account: from_account}}) do
    %{
      message: "Transaction done successfully",
      transaction: %{
        from_account: %{
          id: from_account.id,
          balance: from_account.balance
        },
        to_account: %{
          id: to_account.id,
          balance: to_account.balance
        }
      }
    }
  end
end
