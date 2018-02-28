defmodule Tracker.Repo.Migrations.AddManager do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :manager, :boolean
    end
  end
end
