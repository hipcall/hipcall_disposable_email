defmodule HipcallDisposableEmail do
  @moduledoc """
  Simple library checking the email's domain is disposable or not.

  ## Example

      iex> HipcallDisposableEmail.disposable?("hello@hipcall.com")
      false
      iex> HipcallDisposableEmail.disposable?("info@gmal.com")
      true

  """

  alias HipcallDisposableEmail.BlockList
  alias HipcallDisposableEmail.Tools

  @doc """
  Check a given email's domain disposable

  ## Parameters

    * `email` - `binary` - the email to check

  ## Example

      iex> HipcallDisposableEmail.disposable?("hello@hipcall.com")
      false
      iex> HipcallDisposableEmail.disposable?("info@gmal.com")
      true

  """
  @spec disposable?(email :: String.t()) :: boolean
  def disposable?(email) when is_binary(email) do
    BlockList.block_list()
    |> Enum.member?(Tools.domain_name(email))
  end
end
