defmodule LearnPhoenix.User do
  use LearnPhoenix.Web, :model

  schema "users" do
    field :email, :string
    field :name, :string
    field :username, :string
    field :encrypted_password, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :name, :username, :encrypted_password])
    |> validate_required([:email, :name, :username, :encrypted_password])
  end
end
