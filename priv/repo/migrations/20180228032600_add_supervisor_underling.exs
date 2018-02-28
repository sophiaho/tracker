defmodule Tracker.Repo.Migrations.AddSupervisorUnderling do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :user_id, references(:users, on_delete: :nothing), primary_key: true #user is the manager
      add :contact_id, references(:users, on_delete: :nothing), primary_key: true #contact is the underling
    end
  end
end
