defmodule Tracker.Accounts.Contact do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.Accounts.Contact

  alias Tracker.Accounts.User

  schema "contacts" do
    belongs_to :user, Tracker.Accounts.User
    belongs_to :contact, Tracker.Accounts.User
  end
end
