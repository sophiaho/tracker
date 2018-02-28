defmodule Tracker.Repo.Migrations.CreateTimeBlocks do
  use Ecto.Migration

  def change do
    create table(:time_blocks) do
      add :start, :naive_datetime
      add :end, :naive_datetime

      timestamps()
    end

  end
end
