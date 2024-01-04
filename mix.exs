defmodule HipcallDisposableEmail.MixProject do
  use Mix.Project

  @source_url "https://github.com/hipcall/hipcall_disposable_email"
  @version "0.2.0"

  def project do
    [
      app: :hipcall_disposable_email,
      name: "HipcallDisposableEmail",
      description: "Simple library checking the email's domain is disposable or not.",
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end

  def package do
    [
      licenses: ["MIT"],
      links: %{
        "Website" => "https://www.hipcall.com/en-gb/",
        "GitHub" => "https://github.com/hipcall/hipcall_disposable_email"
      }
    ]
  end

  def docs do
    [
      main: "readme",
      name: "HipcallDisposableEmail",
      canonical: "https://hex.pm/packages/hipcall_disposable_email",
      source_ref: "v#{@version}",
      source_url: @source_url,
      extras: ["README.md", "CHANGELOG.md", "LICENSE.md"]
    ]
  end
end
