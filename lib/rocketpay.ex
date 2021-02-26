defmodule Rocketpay do
  alias Rocketpay.Users.Create, as: UserCreate

  alias Rocketpay.Accounts.Deposit
  alias Rocketpay.Accounts.Transaction
  alias Rocketpay.Accounts.WithDraw


  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call
  defdelegate withdraw(params), to: WithDraw, as: :call
  defdelegate transaction(params), to: Transaction, as: :call
end
