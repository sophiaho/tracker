defmodule Tracker.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.Accounts.User

  alias Tracker.Accounts.Contact

# Attribution: for self referencing user association
# I kept the name contacts as I had already used manager for the boolean field
# https://swanros.com/2016/07/23/self-referencing-many-to-many-relationships-using-ecto/
  schema "users" do
    field :email, :string
    field :name, :string
    field :manager, :boolean, default: false
    #has_many :_contacts, Tracker.Accounts.Contact
    #has_many :contacts, through: [:_contacts, :contact]

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :name, :manager])
    |> validate_required([:email, :name, :manager])
  end
end
