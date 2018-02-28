defmodule Tracker.Repo.Migrations.AddTimeblockToTasks do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add :time, references(:time_blocks)
    end
  end
end
