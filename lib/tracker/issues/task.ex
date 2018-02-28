defmodule Tracker.Issues.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.Issues.Task


  schema "tasks" do
    field :complete, :boolean, default: false
    field :description, :string
    field :length, :integer, default: 0
    field :title, :string
    belongs_to :user, Tracker.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:title, :description, :length, :complete, :user_id])
    |> validate_required([:title, :description, :length, :complete])
    |> validate_increment
  end

# ATTRIBUTION: created with the help of a stack overflow question on custom Changeset
# validations: https://stackoverflow.com/questions/35257104/phoenix-framework-custom-changeset-validations
  defp validate_increment(changeset) do
    length = get_field(changeset, :length) #|> Kernel.trunc()
    validate_increment(changeset, length)
    end

    defp validate_increment(changeset, length) when rem(length, 15) != 0 do
      add_error(changeset, :equal_to, "Length not in 15 minute increments")
    end

    defp validate_increment(changeset, _), do: changeset

end
