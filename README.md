# Hipcall Disposable Email

Simple library checking the email's domain is disposable or not.

We cannot guarantee all of these can still be considered disposable but we do 
basic checking so chances are they were disposable at one point in time.

## Example

    iex> HipcallDisposableEmail.disposable("hello@hipcall.com")
    false
    iex> HipcallDisposableEmail.disposable("info@gmail.com")
    true

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `hipcall_disposable_email` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:hipcall_disposable_email, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/hipcall_disposable_email>.

